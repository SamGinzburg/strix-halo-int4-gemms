	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s14, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s15, s7, s14
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s15, s15, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s15
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s31, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s17, s17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s30, s6
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s12, s17, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s15
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s12, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s27, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s12, s16, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s15, s3, s15
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s12, s12, 26
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s15
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s3, 8
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s14
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s16, s12
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s45, s22, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s12, s45, s26
	v_mov_b32_e32 v247, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v3, 4, v247
	v_lshrrev_b32_e32 v2, 2, v247
	v_and_b32_e32 v13, 48, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[14:15], null, s27, v2, v[13:14]
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v99, s27, 6, v14
	v_lshl_add_u32 v100, s27, 7, v14
	v_add_nc_u32_e32 v1, s12, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v2, s12, v99
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v238, 15, v247
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s26, 64
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[15:16], null, s27, v4, v[13:14]
	v_add_nc_u32_e32 v4, s12, v100
	v_add_nc_u32_e32 v11, 64, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v101, 5, v247
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[16:17], null, s33, s27, v[14:15]
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s12, v15
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v17, s34, v13
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s12, s12, 64
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v35, s12, v99
	v_add_nc_u32_e32 v36, s12, v100
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s26, v16
	v_add_nc_u32_e32 v34, s34, v16
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v12, 64, v5
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[18:21], v1, s[28:31], 0 offen
	buffer_load_b128 v[22:25], v2, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v4, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v5, s[28:31], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v17
	s_mov_b32 s12, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[7:10], v6, s[4:7], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v1, 0x80000000, v34 :: v_dual_cndmask_b32 v2, 0x80000000, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v4, 0x80000000, v35 :: v_dual_cndmask_b32 v5, 0x80000000, v36
	v_cndmask_b32_e32 v6, 0x80000000, v12, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v1, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v2, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v4, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v5, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v6, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v247
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v4, 16, v238
	v_or_b32_e32 v5, 32, v238
	v_or_b32_e32 v6, 48, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 48, v2
	v_xor_b32_e32 v102, v3, v1
	v_lshlrev_b32_e32 v3, 3, v247
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v1, 0, v102
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[7:10] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_store_b128 v1, v[18:21]
	ds_store_b128 v1, v[22:25] offset:4096
	ds_store_b128 v1, v[26:29] offset:8192
	ds_store_b128 v1, v[30:33] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[34:37] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[38:41] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[42:45] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[46:49] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[50:53] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v3
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v1, 5, v247
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v90, v238, 6, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v92, 0x1c00, v1, v90
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v89, 16, v90
	v_xor_b32_e32 v91, 32, v90
	v_xor_b32_e32 v88, 48, v90
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v93, 16, v92
	v_xor_b32_e32 v94, 32, v92
	v_xor_b32_e32 v95, 48, v92
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
.LBB0_3:                                ; %Flow94
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v7, s33, v238
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v5, s33, v5
	v_or_b32_e32 v6, s33, v6
	v_and_b32_e32 v8, 0xf0, v247
	s_ashr_i32 s1, s13, 6
	v_or_b32_e32 v52, s22, v247
	v_mul_lo_u32 v54, v7, s1
	v_mul_lo_u32 v51, v4, s1
	v_mul_lo_u32 v0, v5, s1
	v_mul_lo_u32 v53, v6, s1
	v_lshlrev_b32_e32 v97, 2, v8
	v_and_b32_e32 v96, 28, v2
	v_lshlrev_b32_e32 v98, 1, v8
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v8, off offset:28 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v1, 48, v3
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v90, v238, 6, v1
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 32, v101
	v_and_or_b32 v92, 0x1c00, v101, v90
	v_xor_b32_e32 v89, 16, v90
	v_xor_b32_e32 v91, 32, v90
	v_xor_b32_e32 v88, 48, v90
	v_add3_u32 v9, 0, v97, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_xor_b32_e32 v93, 16, v92
	v_xor_b32_e32 v94, 32, v92
	v_xor_b32_e32 v95, 48, v92
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_add_nc_u32_e32 v104, 0, v98
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v103, v9, v96
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v87, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s11, s1, 3
	s_add_i32 s10, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s46, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s0
	s_mov_b32 s0, s26
	s_mov_b32 s26, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s10, s15
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v114, s12, v92
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s34, v13
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v10, s34, v16
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v17, s14, v90
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v115, s12, v93
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v105, s14, v89
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[170:173], v114 offset:8192
	ds_load_b128 v[174:177], v115 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[122:125], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[162:165], v114
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v105
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[166:169], v115
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[138:141], v17 offset:1024
	ds_load_b128 v[142:145], v105 offset:1024
	ds_load_b128 v[154:157], v17 offset:2048
	ds_load_b128 v[158:161], v105 offset:2048
	ds_load_b128 v[178:181], v17 offset:3072
	ds_load_b128 v[182:185], v105 offset:3072
	v_add_nc_u32_e32 v17, s14, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v105, s12, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[162:165], v[122:125], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[170:173], v[122:125], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[170:173], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[166:169], v[126:129], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[114:121], v[174:177], v[126:129], v[114:121] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[162:165], v[138:141], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[174:177], v[142:145], v[130:137] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[170:173], v[154:157], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[166:169], v[142:145], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[162:165], v[154:157], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[146:153], v[174:177], v[158:161], v[146:153] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[138:145], v[166:169], v[158:161], v[138:145] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[162:165], v[178:181], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[166:169], v[182:185], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[170:173], v[178:181], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[178:181], v105 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[162:169], v[174:177], v[182:185], v[162:169] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[174:177], v105
	v_add_nc_u32_e32 v105, s12, v95
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 26
	s_add_i32 s0, s0, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 6
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s12, s23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[170:173], v[114:121] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[170:173], v[106:113] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[174:177], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[170:173], v[130:137] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[174:177], v[170:173], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[178:181], v[170:173], v[146:153] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:3072
	v_add_nc_u32_e32 v17, s14, v88
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s14, s34, s45
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[154:161], v[174:177], v[170:173], v[154:161] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[162:169], v[178:181], v[170:173], v[162:169] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[174:177], v105
	ds_load_b128 v[178:181], v105 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[106:113], v[174:177], v[170:173], v[106:113] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[114:121], v[178:181], v[170:173], v[114:121] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[174:177], v[170:173], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[130:137], v[178:181], v[170:173], v[130:137] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[138:145], v[174:177], v[170:173], v[138:145] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[146:153], v[178:181], v[170:173], v[146:153] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[170:173], v17 offset:3072
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v52, s15, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s46, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s15, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v139, v139
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s46, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[162:169], v[178:181], v[170:173], v[162:169] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[154:161], v[174:177], v[170:173], v[154:161] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v170, v51, s12, 1
	v_add_lshl_u32 v171, v0, s12, 1
	v_add_lshl_u32 v172, v53, s12, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v169
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v169, s14, v99
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v170, 0x80000000, v170, s0
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	v_cndmask_b32_e64 v172, 0x80000000, v172, s0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v151, v151
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v173, 0x80000000, v169, vcc_lo
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v169, s14, v100
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v177, 0x80000000, v169, vcc_lo
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v169, s14, v15
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v181, 0x80000000, v169, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v169, v54, s12, 1
	s_mov_b32 s12, s44
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v169, 0x80000000, v169, s0
	s_clause 0x3
	buffer_load_u16 v201, v169, s[36:39], 0 offen
	buffer_load_u16 v202, v170, s[36:39], 0 offen
	buffer_load_u16 v203, v171, s[36:39], 0 offen
	buffer_load_u16 v204, v172, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s46, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s15, s13, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v103, v17 offset:40960
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v17, s14, v14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s14, s0, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s0, s46, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s44, s0, 0
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[169:172], v17, s[28:31], 0 offen
	buffer_load_b128 v[173:176], v173, s[28:31], 0 offen
	buffer_load_b128 v[177:180], v177, s[28:31], 0 offen
	buffer_load_b128 v[181:184], v181, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[185:188], v104 offset:40960
	ds_load_b128 v[189:192], v104 offset:40976
	ds_load_b128 v[193:196], v104 offset:41472
	ds_load_b128 v[197:200], v104 offset:41488
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v17, s14, v102
	s_mov_b32 s0, s35
	s_add_i32 s35, s14, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v17, v[9:12] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v201
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v203
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4) lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v220, v196, v10 :: v_dual_lshlrev_b32 v17, 16, v204
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v9, s44, v102
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v11, 16, v202
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v206, v190, v10
	v_mul_f32_e32 v208, v192, v10
	v_mul_f32_e32 v214, v190, v12
	v_mul_f32_e32 v216, v192, v12
	v_mul_f32_e32 v212, v192, v11
	v_mul_f32_e32 v192, v192, v17
	v_mul_f32_e32 v210, v190, v11
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v190, v190, v17 :: v_dual_mul_f32 v231, v199, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v42, v212, v129 :: v_dual_mul_f32 v201, v185, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v202, v186, v12
	v_mul_f32_e32 v203, v187, v12
	v_dual_mul_f32 v204, v188, v12 :: v_dual_mul_f32 v205, v189, v10
	v_mul_f32_e32 v234, v199, v11
	v_dual_mul_f32 v207, v191, v10 :: v_dual_mul_f32 v232, v197, v11
	v_mul_f32_e32 v209, v189, v11
	v_dual_mul_f32 v211, v191, v11 :: v_dual_mul_f32 v236, v198, v12
	v_mul_f32_e32 v213, v189, v12
	v_dual_mul_f32 v189, v189, v17 :: v_dual_mul_f32 v218, v194, v10
	v_dual_mul_f32 v221, v193, v11 :: v_dual_fmac_f32 v24, v207, v112
	v_dual_mul_f32 v222, v194, v11 :: v_dual_mul_f32 v229, v197, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v32, v231, v120
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v227, v195, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v235, v197, v12 :: v_dual_fmac_f32 v44, v222, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v25, v208, v113 :: v_dual_fmac_f32 v30, v229, v118
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v23, v206, v111 :: v_dual_fmac_f32 v66, v227, v148
	v_fmac_f32_e32 v43, v221, v130
	v_fmac_f32_e32 v47, v232, v134
	v_fmac_f32_e32 v49, v234, v136
	v_fmac_f32_e32 v57, v202, v139
	v_fmac_f32_e32 v59, v204, v141
	v_fmac_f32_e32 v61, v214, v143
	v_dual_fmac_f32 v63, v216, v145 :: v_dual_fmac_f32 v68, v235, v150
	v_fmac_f32_e32 v69, v236, v151
	v_fmac_f32_e32 v77, v190, v159
	v_fmac_f32_e32 v79, v192, v161
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[169:172]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[173:176] offset:4096
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v169, v185, v10
	v_dual_mul_f32 v171, v187, v10 :: v_dual_mul_f32 v224, v196, v11
	v_mul_f32_e32 v174, v186, v11
	v_mul_f32_e32 v170, v186, v10
	v_dual_mul_f32 v172, v188, v10 :: v_dual_mul_f32 v173, v185, v11
	v_dual_mul_f32 v175, v187, v11 :: v_dual_mul_f32 v226, v194, v12
	v_dual_mul_f32 v176, v188, v11 :: v_dual_mul_f32 v185, v185, v17
	v_mul_f32_e32 v228, v196, v12
	v_mul_f32_e32 v186, v186, v17
	v_dual_mul_f32 v187, v187, v17 :: v_dual_mul_f32 v230, v198, v10
	v_dual_mul_f32 v188, v188, v17 :: v_dual_mul_f32 v215, v191, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v18, v169, v106 :: v_dual_mul_f32 v191, v191, v17
	v_fmac_f32_e32 v22, v205, v110
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v217, v193, v10 :: v_dual_fmac_f32 v20, v171, v108
	v_dual_mul_f32 v219, v195, v10 :: v_dual_fmac_f32 v36, v174, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v223, v195, v11 :: v_dual_fmac_f32 v26, v217, v114
	v_dual_mul_f32 v225, v193, v12 :: v_dual_fmac_f32 v38, v176, v125
	v_dual_mul_f32 v193, v193, v17 :: v_dual_fmac_f32 v28, v219, v116
	v_mul_f32_e32 v194, v194, v17
	v_dual_mul_f32 v195, v195, v17 :: v_dual_fmac_f32 v40, v210, v127
	v_mul_f32_e32 v196, v196, v17
	v_dual_mul_f32 v10, v200, v10 :: v_dual_mul_f32 v233, v198, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v46, v224, v133
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v11, v200, v11 :: v_dual_fmac_f32 v56, v201, v138
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v237, v199, v12 :: v_dual_fmac_f32 v48, v233, v135
	v_dual_mul_f32 v12, v200, v12 :: v_dual_mul_f32 v197, v197, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v58, v203, v140
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v198, v198, v17
	v_dual_mul_f32 v199, v199, v17 :: v_dual_fmac_f32 v60, v213, v142
	v_dual_mul_f32 v17, v200, v17 :: v_dual_fmac_f32 v62, v215, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v19, v170, v107 :: v_dual_fmac_f32 v50, v11, v137
	v_dual_fmac_f32 v21, v172, v109 :: v_dual_fmac_f32 v64, v225, v146
	v_dual_fmac_f32 v27, v218, v115 :: v_dual_fmac_f32 v70, v237, v152
	v_dual_fmac_f32 v29, v220, v117 :: v_dual_fmac_f32 v72, v185, v154
	v_dual_fmac_f32 v31, v230, v119 :: v_dual_fmac_f32 v74, v187, v156
	v_dual_fmac_f32 v33, v10, v121 :: v_dual_fmac_f32 v76, v189, v158
	v_dual_fmac_f32 v35, v173, v122 :: v_dual_fmac_f32 v78, v191, v160
	v_dual_fmac_f32 v37, v175, v124 :: v_dual_fmac_f32 v82, v194, v163
	v_dual_fmac_f32 v39, v209, v126 :: v_dual_fmac_f32 v84, v196, v165
	v_dual_fmac_f32 v41, v211, v128 :: v_dual_fmac_f32 v86, v198, v167
	v_dual_fmac_f32 v45, v223, v132 :: v_dual_fmac_f32 v80, v17, v105
	v_fmac_f32_e32 v65, v226, v147
	v_fmac_f32_e32 v67, v228, v149
	v_fmac_f32_e32 v71, v12, v153
	v_fmac_f32_e32 v73, v186, v155
	v_fmac_f32_e32 v75, v188, v157
	v_fmac_f32_e32 v81, v193, v162
	v_fmac_f32_e32 v83, v195, v164
	v_fmac_f32_e32 v85, v197, v166
	v_fmac_f32_e32 v87, v199, v168
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[177:180] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[181:184] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v1, v101
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v235, 0
	scratch_store_b32 off, v2, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v233, 0
	v_mov_b32_e32 v237, 0
	scratch_store_b32 off, v2, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v163, 0
	scratch_store_b32 off, v2, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	scratch_store_b32 off, v2, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v137, 0
	v_mov_b32_e32 v127, 0
	scratch_store_b32 off, v2, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b32 off, v2, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v2, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v148, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v2, off offset:20 ; 4-byte Folded Spill
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s12, v94
	v_add_nc_u32_e32 v3, s12, v93
	v_add_nc_u32_e32 v4, s12, v95
	v_add_nc_u32_e32 v5, s12, v92
	s_mov_b32 s12, 0
	ds_load_b128 v[171:174], v5 offset:8192
	ds_load_b128 v[175:178], v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v14, s0, v90
	v_add_nc_u32_e32 v15, s0, v91
	v_add_nc_u32_e32 v17, s0, v89
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[10:13], v2 offset:8192
	ds_load_b128 v[100:103], v2
	ds_load_b128 v[163:166], v3 offset:8192
	ds_load_b128 v[167:170], v3
	ds_load_b128 v[187:190], v4 offset:8192
	ds_load_b128 v[191:194], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v7, s17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[139:142], v14 offset:1024
	ds_load_b128 v[123:126], v14
	ds_load_b128 v[179:182], v15 offset:1024
	ds_load_b128 v[131:134], v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v8, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[183:186], v17 offset:1024
	ds_load_b128 v[135:138], v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v9, s19 :: v_dual_add_nc_u32 v16, s0, v88
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v4, s14
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v6, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[195:198], v16 offset:1024
	ds_load_b128 v[143:146], v16
	ds_load_b128 v[199:202], v14 offset:3072
	ds_load_b128 v[155:158], v14 offset:2048
	ds_load_b128 v[203:206], v17 offset:3072
	ds_load_b128 v[207:210], v17 offset:2048
	ds_load_b128 v[211:214], v15 offset:3072
	ds_load_b128 v[215:218], v15 offset:2048
	ds_load_b128 v[219:222], v16 offset:3072
	ds_load_b128 v[223:226], v16 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[175:178], v[123:126], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[171:174], v[123:126], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[175:178], v[139:142], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[115:122], v[167:170], v[135:138], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[163:166], v[135:138], v[107:114] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[123:130], v[167:170], v[183:186], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[100:103], v[131:134], v[115:122] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[107:114], v[10:13], v[131:134], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[171:174], v[139:142], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[171:174], v[155:158], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[115:122], v[191:194], v[143:146], v[115:122] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[107:114], v[187:190], v[143:146], v[107:114] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[175:178], v[155:158], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[175:178], v[199:202], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[171:174], v[199:202], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[163:166], v[183:186], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[163:166], v[207:210], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[167:170], v[207:210], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[167:170], v[203:206], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[163:166], v[203:206], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[10:13], v[179:182], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[147:154], v[10:13], v[215:218], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[100:103], v[179:182], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[139:146], v[100:103], v[215:218], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[10:13], v[211:214], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v10, v116
	v_wmma_i32_16x16x16_iu8 v[155:162], v[100:103], v[211:214], v[155:162] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[123:130], v[191:194], v[195:198], v[123:130] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[131:138], v[187:190], v[195:198], v[131:138] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[187:190], v[219:222], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[139:146], v[191:194], v[223:226], v[139:146] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[147:154], v[187:190], v[223:226], v[147:154] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[155:162], v[191:194], v[219:222], v[155:162] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v255, v117
	v_cvt_f32_i32_e32 v17, v2
	v_cvt_f32_i32_e32 v2, v115
	scratch_store_b32 off, v10, off         ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v118
	v_cvt_f32_i32_e32 v236, v122
	v_cvt_f32_i32_e32 v237, v107
	v_cvt_f32_i32_e32 v239, v108
	v_cvt_f32_i32_e32 v240, v109
	scratch_store_b32 off, v10, off offset:4 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v119
	v_cvt_f32_i32_e32 v241, v110
	v_cvt_f32_i32_e32 v242, v111
	v_cvt_f32_i32_e32 v243, v112
	v_cvt_f32_i32_e32 v244, v113
	scratch_store_b32 off, v10, off offset:8 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v120
	v_cvt_f32_i32_e32 v245, v114
	v_cvt_f32_i32_e32 v246, v123
	v_cvt_f32_i32_e32 v234, v125
	v_cvt_f32_i32_e32 v235, v126
	scratch_store_b32 off, v10, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v121
	v_cvt_f32_i32_e32 v233, v127
	v_cvt_f32_i32_e32 v230, v128
	v_cvt_f32_i32_e32 v165, v129
	v_cvt_f32_i32_e32 v163, v130
	scratch_store_b32 off, v10, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v10, v124
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v131, v132
	v_cvt_f32_i32_e32 v164, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v232, v135
	v_cvt_f32_i32_e32 v231, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v133, v140
	v_cvt_f32_i32_e32 v139, v141
	v_cvt_f32_i32_e32 v130, v142
	v_cvt_f32_i32_e32 v128, v143
	v_cvt_f32_i32_e32 v192, v144
	v_cvt_f32_i32_e32 v143, v145
	v_cvt_f32_i32_e32 v144, v146
	v_cvt_f32_i32_e32 v145, v147
	v_cvt_f32_i32_e32 v146, v148
	v_cvt_f32_i32_e32 v147, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v172, v151
	v_cvt_f32_i32_e32 v140, v152
	v_cvt_f32_i32_e32 v129, v153
	v_cvt_f32_i32_e32 v254, v154
	v_cvt_f32_i32_e32 v109, v155
	v_cvt_f32_i32_e32 v110, v156
	v_cvt_f32_i32_e32 v111, v157
	v_cvt_f32_i32_e32 v142, v158
	v_cvt_f32_i32_e32 v141, v159
	v_cvt_f32_i32_e32 v114, v160
	v_cvt_f32_i32_e32 v116, v161
	v_cvt_f32_i32_e32 v117, v162
	v_cvt_f32_i32_e32 v118, v3
	v_cvt_f32_i32_e32 v119, v4
	v_cvt_f32_i32_e32 v120, v5
	v_cvt_f32_i32_e32 v121, v6
	v_cvt_f32_i32_e32 v122, v7
	v_cvt_f32_i32_e32 v159, v8
	v_cvt_f32_i32_e32 v148, v9
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v10, off offset:20
	scratch_store_b32 off, v2, off offset:16
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s23
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v54, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v52, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v4, v51, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v5, v0, s0, 1
	v_add_lshl_u32 v6, v53, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_and_b32_e32 v1, 32, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x3
	buffer_load_u16 v126, v2, s[8:11], 0 offen
	buffer_load_u16 v135, v4, s[8:11], 0 offen
	buffer_load_u16 v124, v5, s[8:11], 0 offen
	buffer_load_u16 v34, v6, s[8:11], 0 offen
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v98, 0, v98
	v_mov_b32_e32 v214, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v1, 0, v97, v1
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v171, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v125, v1, v96
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_mov_b32_e32 v191, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v228, 0
	v_mov_b32_e32 v223, 0
	v_mov_b32_e32 v225, 0
	v_mov_b32_e32 v227, 0
	v_mov_b32_e32 v229, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v216, 0 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v125, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v98 offset:40960
	ds_load_b128 v[5:8], v98 offset:40976
	ds_load_b128 v[9:12], v98 offset:41472
	ds_load_b128 v[13:16], v98 offset:41488
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v154, v247 :: v_dual_add_nc_u32 v97, s44, v95
	v_dual_mov_b32 v162, v239 :: v_dual_add_nc_u32 v99, s44, v93
	v_dual_mov_b32 v189, v246 :: v_dual_add_nc_u32 v170, s44, v94
	v_dual_mov_b32 v161, v165 :: v_dual_add_nc_u32 v100, s44, v92
	v_dual_mov_b32 v221, v240 :: v_dual_add_nc_u32 v90, s35, v90
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	ds_load_b128 v[92:95], v97 offset:8192
	ds_load_b128 v[166:169], v170
	ds_load_b128 v[217:220], v99 offset:8192
	ds_load_b128 v[246:249], v99
	ds_load_b128 v[250:253], v100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[193:196], v90
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[99:102], v100 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v89, s35, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v229, s19 :: v_dual_mov_b32 v224, s14
	s_clause 0x6                            ; 28-byte Folded Spill
	scratch_store_b32 off, v238, off offset:32
	scratch_store_b32 off, v140, off offset:36
	scratch_store_b32 off, v130, off offset:44
	scratch_store_b32 off, v127, off offset:64
	scratch_store_b32 off, v254, off offset:40
	scratch_store_b32 off, v192, off offset:52
	scratch_store_b32 off, v241, off offset:60
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[238:241], v90 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v228, s18 :: v_dual_mov_b32 v225, s15
	v_mov_b32_e32 v192, v111
	v_mov_b32_e32 v130, v114
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[111:114], v89
	ds_load_b128 v[209:212], v90 offset:1024
	ds_load_b128 v[103:106], v90 offset:3072
	v_dual_mov_b32 v190, v109 :: v_dual_add_nc_u32 v171, s35, v91
	v_dual_mov_b32 v191, v110 :: v_dual_mov_b32 v226, s16
	ds_load_b128 v[107:110], v89 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v223, s13 :: v_dual_mov_b32 v152, v51
	v_dual_mov_b32 v153, v54 :: v_dual_mov_b32 v140, v52
	v_dual_mov_b32 v254, v53 :: v_dual_mov_b32 v123, v119
	v_mov_b32_e32 v53, v0
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v51.l, v34.l
	v_dual_mov_b32 v34, v17 :: v_dual_mov_b32 v55, v120
	v_dual_mov_b32 v52, v116 :: v_dual_mov_b32 v17, v117
	v_dual_mov_b32 v0, v118 :: v_dual_mov_b32 v151, v139
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[115:118], v89 offset:2048
	v_dual_mov_b32 v96, v121 :: v_dual_mov_b32 v139, v230
	v_dual_mov_b32 v54, v122 :: v_dual_mov_b32 v127, v159
	ds_load_b128 v[119:122], v89 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v227, s17 :: v_dual_mov_b32 v222, s12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v129, off offset:48
	scratch_store_b32 off, v128, off offset:56
	v_dual_mov_b32 v158, v146 :: v_dual_mov_b32 v159, v147
	v_dual_mov_b32 v146, v232 :: v_dual_mov_b32 v147, v231
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[173:180], v[250:253], v[193:196], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[181:188], v[99:102], v[193:196], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[193:200], v[250:253], v[209:212], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[99:102], v[209:212], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[250:253], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_dual_mov_b32 v136, v234 :: v_dual_mov_b32 v165, v236
	v_dual_mov_b32 v156, v235 :: v_dual_mov_b32 v129, v148
	v_dual_mov_b32 v128, v233 :: v_dual_mov_b32 v155, v143
	v_dual_mov_b32 v148, v237 :: v_dual_mov_b32 v143, v131
	v_wmma_i32_16x16x16_iu8 v[230:237], v[99:102], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[173:180], v[246:249], v[111:114], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[217:220], v[111:114], v[181:188] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[111:114], v97
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v97, s35, v88
	v_mov_b32_e32 v131, v242
	v_dual_mov_b32 v149, v132 :: v_dual_mov_b32 v160, v150
	v_mov_b32_e32 v132, v243
	v_dual_mov_b32 v150, v133 :: v_dual_mov_b32 v133, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[193:200], v[246:249], v[119:122], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[217:220], v[119:122], v[201:208] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[246:249], v[115:118], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[217:220], v[115:118], v[230:237] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[115:118], v97
	ds_load_b128 v[119:122], v97 offset:1024
	v_mov_b32_e32 v157, v145
	v_dual_mov_b32 v145, v134 :: v_dual_mov_b32 v134, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[238:245], v[250:253], v[103:106], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[99:102], v[103:106], v[222:229] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[99:102], v171
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[103:106], v170 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[88:91], v171 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[107:110], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[217:220], v[107:110], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[173:180], v[166:169], v[99:102], v[173:180] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[181:188], v[103:106], v[99:102], v[181:188] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[173:180], v[111:114], v[115:118], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[181:188], v[92:95], v[115:118], v[181:188] neg_lo:[1,1,0]
	v_mov_b32_e32 v116, v52
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[107:110], v171 offset:2048
	ds_load_b128 v[217:220], v171 offset:3072
	ds_load_b128 v[246:249], v97 offset:2048
	ds_load_b128 v[99:102], v97 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[193:200], v[166:169], v[88:91], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[103:106], v[88:91], v[201:208] neg_lo:[1,1,0]
	v_dual_mov_b32 v118, v0 :: v_dual_mov_b32 v117, v17
	v_dual_mov_b32 v17, v34 :: v_dual_mov_b32 v0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[193:200], v[111:114], v[119:122], v[193:200] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[201:208], v[92:95], v[119:122], v[201:208] neg_lo:[1,1,0]
	v_dual_mov_b32 v53, v254 :: v_dual_mov_b32 v120, v55
	v_cvt_f32_i32_e32 v171, v179
	v_cvt_f32_i32_e32 v179, v186
	v_cvt_f32_i32_e32 v186, v197
	v_cvt_f32_i32_e32 v197, v207
	v_dual_mov_b32 v119, v123 :: v_dual_mov_b32 v52, v140
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[103:106], v[107:110], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[166:169], v[217:220], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[166:169], v[107:110], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[103:106], v[217:220], v[222:229] neg_lo:[1,1,0]
	v_mov_b32_e32 v109, v190
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[230:237], v[92:95], v[246:249], v[230:237] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[111:114], v[99:102], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[209:216], v[111:114], v[246:249], v[209:216] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v192
	v_wmma_i32_16x16x16_iu8 v[222:229], v[92:95], v[99:102], v[222:229] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v99, v173
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v180, v187
	v_cvt_f32_i32_e32 v187, v198
	v_cvt_f32_i32_e32 v198, v208
	v_cvt_f32_i32_e32 v207, v230
	v_cvt_f32_i32_e32 v97, v231
	v_cvt_f32_i32_e32 v208, v232
	v_mov_b32_e32 v230, v139
	v_dual_mov_b32 v139, v151 :: v_dual_mov_b32 v232, v146
	v_dual_mov_b32 v146, v158 :: v_dual_mov_b32 v231, v147
	v_mov_b32_e32 v147, v159
	v_mov_b32_e32 v159, v127
	v_cvt_f32_i32_e32 v217, v241
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v241, off, off offset:60
	scratch_load_b32 v192, off, off offset:52
	scratch_load_b32 v254, off, off offset:40
	scratch_load_b32 v127, off, off offset:64
	v_mov_b32_e32 v247, v154
	v_mov_b32_e32 v114, v130
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v181, v188
	v_cvt_f32_i32_e32 v182, v193
	v_cvt_f32_i32_e32 v183, v194
	v_cvt_f32_i32_e32 v188, v199
	v_cvt_f32_i32_e32 v190, v201
	v_cvt_f32_i32_e32 v193, v203
	v_cvt_f32_i32_e32 v194, v204
	v_cvt_f32_i32_e32 v199, v209
	v_cvt_f32_i32_e32 v201, v211
	v_cvt_f32_i32_e32 v203, v213
	v_cvt_f32_i32_e32 v204, v214
	v_cvt_f32_i32_e32 v209, v233
	v_cvt_f32_i32_e32 v211, v235
	v_mov_b32_e32 v235, v156
	v_cvt_f32_i32_e32 v213, v237
	v_mov_b32_e32 v237, v148
	v_dual_mov_b32 v233, v128 :: v_dual_mov_b32 v148, v129
	v_cvt_f32_i32_e32 v214, v238
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v238, off, off offset:32
	scratch_load_b32 v130, off, off offset:44
	scratch_load_b32 v140, off, off offset:36
	scratch_load_b32 v128, off, off offset:56
	scratch_load_b32 v129, off, off offset:48
	v_mov_b16_e32 v34.l, v51.l
	v_mov_b32_e32 v110, v191
	v_dual_mov_b32 v122, v54 :: v_dual_mov_b32 v121, v96
	v_dual_mov_b32 v246, v189 :: v_dual_mov_b32 v51, v152
	v_mov_b32_e32 v54, v153
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v177, v184
	v_cvt_f32_i32_e32 v178, v185
	v_cvt_f32_i32_e32 v184, v195
	v_cvt_f32_i32_e32 v185, v196
	v_cvt_f32_i32_e32 v189, v200
	v_cvt_f32_i32_e32 v191, v202
	v_cvt_f32_i32_e32 v195, v205
	v_cvt_f32_i32_e32 v196, v206
	v_cvt_f32_i32_e32 v200, v210
	v_cvt_f32_i32_e32 v202, v212
	v_cvt_f32_i32_e32 v205, v215
	v_cvt_f32_i32_e32 v206, v216
	v_cvt_f32_i32_e32 v210, v234
	v_mov_b32_e32 v234, v136
	v_cvt_f32_i32_e32 v212, v236
	v_mov_b32_e32 v236, v165
	v_cvt_f32_i32_e32 v215, v239
	v_mov_b32_e32 v239, v162
	v_mov_b32_e32 v165, v161
	v_cvt_f32_i32_e32 v216, v240
	v_mov_b32_e32 v240, v221
	v_cvt_f32_i32_e32 v218, v242
	v_mov_b32_e32 v242, v131
	v_mov_b32_e32 v131, v143
	v_mov_b32_e32 v143, v155
	v_cvt_f32_i32_e32 v219, v243
	v_dual_mov_b32 v243, v132 :: v_dual_mov_b32 v132, v149
	v_cvt_f32_i32_e32 v220, v244
	v_dual_mov_b32 v244, v133 :: v_dual_mov_b32 v133, v150
	v_mov_b32_e32 v150, v160
	v_cvt_f32_i32_e32 v221, v245
	v_dual_mov_b32 v245, v134 :: v_dual_mov_b32 v134, v145
	v_mov_b32_e32 v145, v157
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	v_cvt_f32_i32_e32 v227, v227
	v_cvt_f32_i32_e32 v228, v228
	v_cvt_f32_i32_e32 v229, v229
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s23
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v55, v54, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v52, s1, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v52, v0, s0, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v51, v51, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v53, s0, 1
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	s_clause 0x3
	buffer_load_u16 v55, v55, s[8:11], 0 offen
	buffer_load_u16 v88, v51, s[8:11], 0 offen
	buffer_load_u16 v52, v52, s[8:11], 0 offen
	buffer_load_u16 v53, v53, s[8:11], 0 offen
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v51.h, v34.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v51.l, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v54, v54, s[24:27], 0 offen
	s_mov_b32 s0, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v89, v16, v51
	v_mul_f32_e32 v90, v15, v51
	v_mul_f32_e32 v91, v14, v51
	v_mul_f32_e32 v92, v13, v51
	v_mul_f32_e32 v93, v12, v51
	v_mul_f32_e32 v94, v11, v51
	v_mul_f32_e32 v95, v10, v51
	v_mul_f32_e32 v100, v9, v51
	v_mul_f32_e32 v101, v8, v51
	v_mul_f32_e32 v102, v7, v51
	v_mul_f32_e32 v103, v6, v51
	v_mul_f32_e32 v104, v5, v51
	v_mul_f32_e32 v105, v4, v51
	v_mul_f32_e32 v106, v3, v51
	v_mul_f32_e32 v107, v2, v51
	v_mul_f32_e32 v108, v1, v51
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v51.h, v124.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v89, v148, v80
	v_fma_f32 v92, v92, v121, v85
	v_fma_f32 v93, v93, v120, v84
	v_fma_f32 v95, v95, v118, v82
	v_fma_f32 v101, v101, v117, v79
	v_fma_f32 v102, v102, v116, v78
	v_fma_f32 v103, v103, v114, v77
	v_fma_f32 v106, v106, v111, v74
	v_fma_f32 v107, v107, v110, v73
	v_fma_f32 v108, v108, v109, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v16, v51
	v_mul_f32_e32 v110, v15, v51
	v_mul_f32_e32 v111, v14, v51
	v_mul_f32_e32 v112, v13, v51
	v_mul_f32_e32 v113, v12, v51
	v_mul_f32_e32 v114, v11, v51
	v_mul_f32_e32 v115, v10, v51
	v_mul_f32_e32 v116, v9, v51
	v_mul_f32_e32 v117, v8, v51
	v_mul_f32_e32 v118, v7, v51
	v_mul_f32_e32 v120, v5, v51
	v_mul_f32_e32 v121, v4, v51
	v_mul_f32_e32 v148, v2, v51
	v_mul_f32_e32 v149, v1, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v74, v74, v106, s3
	v_cndmask_b32_e64 v72, v72, v108, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v90, v159, v87
	v_fma_f32 v100, v100, v17, v81
	v_fma_f32 v108, v149, v132, v56
	v_fma_f32 v104, v104, v141, v76
	v_fma_f32 v105, v105, v142, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v89, s3
	v_cndmask_b32_e64 v87, v87, v90, s3
	v_cndmask_b32_e64 v85, v85, v92, s3
	v_cndmask_b32_e64 v84, v84, v93, s3
	v_cndmask_b32_e64 v82, v82, v95, s3
	v_cndmask_b32_e64 v81, v81, v100, s3
	v_cndmask_b32_e64 v79, v79, v101, s3
	v_cndmask_b32_e64 v78, v78, v102, s3
	v_cndmask_b32_e64 v77, v77, v103, s3
	v_cndmask_b32_e64 v76, v76, v104, s3
	v_cndmask_b32_e64 v75, v75, v105, s3
	v_cndmask_b32_e64 v73, v73, v107, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v109, v254, v71
	v_fma_f32 v90, v110, v129, v70
	v_fma_f32 v92, v112, v172, v68
	v_fma_f32 v93, v113, v150, v67
	v_fma_f32 v95, v115, v146, v65
	v_fma_f32 v100, v116, v145, v64
	v_fma_f32 v101, v117, v144, v63
	v_fma_f32 v102, v118, v143, v62
	v_fma_f32 v104, v120, v128, v60
	v_fma_f32 v105, v121, v130, v59
	v_fma_f32 v107, v148, v133, v57
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v89, s3
	v_cndmask_b32_e64 v70, v70, v90, s3
	v_cndmask_b32_e64 v68, v68, v92, s3
	v_cndmask_b32_e64 v65, v65, v95, s3
	v_cndmask_b32_e64 v67, v67, v93, s3
	v_cndmask_b32_e64 v62, v62, v102, s3
	v_cndmask_b32_e64 v64, v64, v100, s3
	v_cndmask_b32_e64 v63, v63, v101, s3
	v_cndmask_b32_e64 v60, v60, v104, s3
	v_cndmask_b32_e64 v59, v59, v105, s3
	v_cndmask_b32_e64 v57, v57, v107, s3
	v_cndmask_b32_e64 v56, v56, v108, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v91, v122, v86
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v122, v3, v51 :: v_dual_lshlrev_b32 v53, 16, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v94, v119, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v119, v6, v51
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v51.h, v135.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v106, v122, v139, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v86, v86, v91, s3
	v_cndmask_b32_e64 v83, v83, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v111, v140, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v132, v2, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v106, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v114, v147, v66
	v_fma_f32 v103, v119, v192, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v109, v16, v51
	v_mul_f32_e32 v110, v15, v51
	v_mul_f32_e32 v111, v14, v51
	v_mul_f32_e32 v112, v13, v51
	v_mul_f32_e32 v113, v12, v51
	v_mul_f32_e32 v114, v11, v51
	v_mul_f32_e32 v115, v10, v51
	v_mul_f32_e32 v116, v9, v51
	v_mul_f32_e32 v117, v8, v51
	v_mul_f32_e32 v118, v7, v51
	v_mul_f32_e32 v119, v6, v51
	v_mul_f32_e32 v120, v5, v51
	v_mul_f32_e32 v121, v4, v51
	v_mul_f32_e32 v122, v3, v51
	v_mul_f32_e32 v133, v1, v51
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v51.h, v126.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v109, v138, v50
	v_fma_f32 v90, v110, v137, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v69, v91, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v111, v231, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v89, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v90, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v91, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v92, v112, v232, v47
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v66, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v114, v164, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v2, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v47, v92, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v95, v115, v131, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v12, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v94, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v10, v10, v51
	v_mul_f32_e32 v9, v9, v51
	v_mul_f32_e32 v1, v1, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v95, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v241, v29
	v_fma_f32 v11, v11, v240, v28
	v_fma_f32 v10, v10, v239, v27
	v_fma_f32 v9, v9, v237, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v16, v51
	v_mul_f32_e32 v14, v14, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v12, s3
	v_cndmask_b32_e64 v28, v28, v11, s3
	v_cndmask_b32_e64 v27, v27, v10, s3
	v_cndmask_b32_e64 v26, v26, v9, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v245, v33
	v_fma_f32 v14, v14, v243, v31
	v_fma_f32 v102, v118, v165, v41
	v_fma_f32 v17, v119, v230, v40
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v16, s3
	v_cndmask_b32_e64 v31, v31, v14, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v40, v17, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v8, v236, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v61, v103, s3
	v_cndmask_b32_e64 v41, v41, v102, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v25, v25, v40, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v106, v132, v0, v36
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v106, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v89, v7, v0, v24
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v89, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v90, v6, v0, v23
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v90, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v91, v5, v0, v22
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v91, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v92, v4, v0, v21
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v92, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v94, v2, v0, v19
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v19, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v95, v1, v0, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v1, 16, v54
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v54, 16, v88
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v247
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v95, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v125, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v98 offset:41472
	v_mul_f32_e32 v15, v15, v51
	v_mul_f32_e32 v13, v13, v51
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v98 offset:40976
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v244, v32
	v_fma_f32 v13, v13, v242, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v15, s3
	v_cndmask_b32_e64 v30, v30, v13, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[13:16], v98 offset:41488
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v129, v11, v52 :: v_dual_lshlrev_b32 v40, 16, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v103, v120, v233, v39
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v9, v54
	v_mul_f32_e32 v114, v11, v54
	v_dual_mul_f32 v115, v12, v54 :: v_dual_mul_f32 v128, v10, v52
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v103, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v12, v52
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v124, v6, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v104, v121, v235, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v125, v7, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v100, v116, v127, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v126, v8, v52
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v118, v15, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v93, v113, v134, v46
	v_fma_f32 v107, v133, v246, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v103, v15, v40
	v_mul_f32_e32 v127, v9, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v105, v122, v234, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v93, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v93, v3, v255, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[1:4], v98 offset:40960
	v_mul_f32_e32 v133, v15, v52
	v_mul_f32_e32 v15, v15, v53
	v_mul_f32_e32 v91, v5, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v93, s3
	v_cndmask_b32_e64 v43, v43, v100, s3
	v_cndmask_b32_e64 v38, v38, v104, s3
	v_cndmask_b32_e64 v37, v37, v105, s3
	v_cndmask_b32_e64 v35, v35, v107, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v92, v6, v40
	v_mul_f32_e32 v93, v7, v40
	v_mul_f32_e32 v94, v8, v40
	v_mul_f32_e32 v95, v9, v40
	v_mul_f32_e32 v96, v10, v40
	v_mul_f32_e32 v98, v11, v40
	v_mul_f32_e32 v100, v12, v40
	v_mul_f32_e32 v102, v14, v40
	v_mul_f32_e32 v108, v5, v54
	v_mul_f32_e32 v109, v6, v54
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v110, v7, v54 :: v_dual_mul_f32 v55, v1, v40
	v_mul_f32_e32 v88, v2, v40
	v_mul_f32_e32 v89, v3, v40
	v_mul_f32_e32 v90, v4, v40
	v_mul_f32_e32 v120, v2, v52
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v117, v163, v42
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v104, v1, v54
	v_mul_f32_e32 v105, v2, v54
	v_mul_f32_e32 v106, v3, v54
	v_mul_f32_e32 v107, v4, v54
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v101, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v101, v13, v40
	v_mul_f32_e32 v40, v16, v40
	v_mul_f32_e32 v111, v8, v54
	v_mul_f32_e32 v113, v10, v54
	v_mul_f32_e32 v116, v13, v54
	v_mul_f32_e32 v117, v14, v54
	v_dual_mul_f32 v54, v16, v54 :: v_dual_mul_f32 v119, v1, v52
	v_mul_f32_e32 v121, v3, v52
	v_mul_f32_e32 v122, v4, v52
	v_mul_f32_e32 v123, v5, v52
	v_mul_f32_e32 v131, v13, v52
	v_mul_f32_e32 v132, v14, v52
	v_dual_mul_f32 v52, v16, v52 :: v_dual_mul_f32 v1, v1, v53
	v_mul_f32_e32 v2, v2, v53
	v_mul_f32_e32 v3, v3, v53
	v_mul_f32_e32 v4, v4, v53
	v_mul_f32_e32 v5, v5, v53
	v_mul_f32_e32 v6, v6, v53
	v_mul_f32_e32 v7, v7, v53
	v_mul_f32_e32 v8, v8, v53
	v_mul_f32_e32 v9, v9, v53
	v_mul_f32_e32 v10, v10, v53
	v_mul_f32_e32 v11, v11, v53
	v_mul_f32_e32 v12, v12, v53
	v_mul_f32_e32 v13, v13, v53
	v_mul_f32_e32 v14, v14, v53
	v_mul_f32_e32 v16, v16, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v55, v99, v18
	v_fma_f32 v55, v88, v166, v19
	v_fma_f32 v88, v89, v167, v20
	v_fma_f32 v89, v90, v168, v21
	v_fma_f32 v90, v91, v169, v22
	v_fma_f32 v91, v92, v170, v23
	v_fma_f32 v92, v93, v171, v24
	v_fma_f32 v93, v94, v173, v25
	v_fma_f32 v94, v95, v174, v26
	v_fma_f32 v95, v96, v175, v27
	v_fma_f32 v96, v98, v176, v28
	v_fma_f32 v98, v100, v177, v29
	v_fma_f32 v99, v101, v178, v30
	v_fma_f32 v100, v102, v179, v31
	v_fma_f32 v101, v103, v180, v32
	v_fma_f32 v40, v40, v181, v33
	v_fma_f32 v102, v104, v182, v35
	v_fma_f32 v103, v105, v183, v36
	v_fma_f32 v104, v106, v184, v37
	v_fma_f32 v105, v107, v185, v38
	v_fma_f32 v106, v108, v186, v39
	v_fma_f32 v107, v109, v187, v17
	v_fma_f32 v108, v110, v188, v41
	v_fma_f32 v109, v111, v189, v42
	v_fma_f32 v110, v112, v190, v43
	v_fma_f32 v111, v113, v191, v44
	v_fma_f32 v112, v114, v193, v45
	v_fma_f32 v113, v115, v194, v46
	v_fma_f32 v114, v116, v195, v47
	v_fma_f32 v115, v117, v196, v48
	v_fma_f32 v116, v118, v197, v49
	v_fma_f32 v54, v54, v198, v50
	v_fma_f32 v117, v119, v199, v56
	v_fma_f32 v118, v120, v200, v57
	v_fma_f32 v119, v121, v201, v58
	v_fma_f32 v120, v122, v202, v59
	v_fma_f32 v121, v123, v203, v60
	v_fma_f32 v122, v124, v204, v61
	v_fma_f32 v123, v125, v205, v62
	v_fma_f32 v124, v126, v206, v63
	v_fma_f32 v125, v127, v207, v64
	v_fma_f32 v97, v128, v97, v65
	v_fma_f32 v127, v130, v209, v67
	v_fma_f32 v128, v131, v210, v68
	v_fma_f32 v12, v12, v225, v84
	v_fma_f32 v15, v15, v228, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v53, s2
	v_cndmask_b32_e64 v19, v19, v55, s2
	v_cndmask_b32_e64 v20, v20, v88, s2
	v_cndmask_b32_e64 v21, v21, v89, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v126, v129, v208, v66
	v_fma_f32 v129, v132, v211, v69
	v_fma_f32 v130, v133, v212, v70
	v_fma_f32 v52, v52, v213, v71
	v_fma_f32 v1, v1, v214, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v22, v90, s2
	v_cndmask_b32_e64 v23, v23, v91, s2
	v_cndmask_b32_e64 v25, v25, v93, s2
	v_cndmask_b32_e64 v26, v26, v94, s2
	v_cndmask_b32_e64 v33, v33, v40, s2
	v_cndmask_b32_e64 v40, v41, v108, s2
	v_cndmask_b32_e64 v41, v42, v109, s2
	v_cndmask_b32_e64 v42, v43, v110, s2
	v_cndmask_b32_e64 v43, v44, v111, s2
	v_cndmask_b32_e64 v44, v45, v112, s2
	v_cndmask_b32_e64 v45, v46, v113, s2
	v_cndmask_b32_e64 v46, v47, v114, s2
	v_cndmask_b32_e64 v47, v48, v115, s2
	v_cndmask_b32_e64 v48, v49, v116, s2
	v_cndmask_b32_e64 v49, v50, v54, s2
	v_cndmask_b32_e64 v50, v56, v117, s2
	v_cndmask_b32_e64 v55, v59, v120, s2
	v_cndmask_b32_e64 v56, v60, v121, s2
	v_cndmask_b32_e64 v59, v63, v124, s2
	v_cndmask_b32_e64 v60, v64, v125, s2
	v_cndmask_b32_e64 v63, v67, v127, s2
	v_cndmask_b32_e64 v64, v68, v128, s2
	v_cndmask_b32_e64 v67, v84, v12, s2
	v_cndmask_b32_e64 v68, v87, v15, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, v18, v18 :: v_dual_max_f32 v15, v19, v19
	v_dual_max_f32 v18, v20, v20 :: v_dual_max_f32 v19, v21, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v2, v215, v73
	v_fma_f32 v4, v4, v217, v75
	v_fma_f32 v5, v5, v218, v76
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v92, s2
	v_cndmask_b32_e64 v27, v27, v95, s2
	v_cndmask_b32_e64 v28, v28, v96, s2
	v_cndmask_b32_e64 v30, v30, v99, s2
	v_cndmask_b32_e64 v31, v31, v100, s2
	v_cndmask_b32_e64 v53, v57, v118, s2
	v_cndmask_b32_e64 v54, v58, v119, s2
	v_cndmask_b32_e64 v57, v61, v122, s2
	v_cndmask_b32_e64 v58, v62, v123, s2
	v_cndmask_b32_e64 v61, v65, v97, s2
	v_cndmask_b32_e64 v62, v66, v126, s2
	v_cndmask_b32_e64 v65, v69, v129, s2
	v_cndmask_b32_e64 v66, v70, v130, s2
	v_cndmask_b32_e64 v52, v71, v52, s2
	v_cndmask_b32_e64 v1, v72, v1, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v69, 0, v12 :: v_dual_max_f32 v72, 0, v19
	v_max_f32_e32 v12, v22, v22
	v_max_f32_e32 v70, 0, v15
	v_max_f32_e32 v15, v23, v23
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v229, v80
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v19, v26, v26
	v_dual_max_f32 v71, 0, v18 :: v_dual_max_f32 v18, v25, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v216, v74
	v_fma_f32 v7, v7, v220, v78
	v_fma_f32 v8, v8, v221, v79
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v98, s2
	v_cndmask_b32_e64 v37, v37, v104, s2
	v_cndmask_b32_e64 v2, v73, v2, s2
	v_cndmask_b32_e64 v4, v75, v4, s2
	v_cndmask_b32_e64 v5, v76, v5, s2
	v_cndmask_b32_e64 v20, v80, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, v24, v24 :: v_dual_max_f32 v73, 0, v15
	v_dual_max_f32 v23, 0, v12 :: v_dual_max_f32 v12, v27, v27
	v_dual_max_f32 v76, 0, v19 :: v_dual_max_f32 v15, v28, v28
	v_max_f32_e32 v75, 0, v18
	v_dual_max_f32 v18, v30, v30 :: v_dual_max_f32 v19, v31, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v219, v77
	v_fma_f32 v11, v11, v224, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v101, s2
	v_cndmask_b32_e64 v35, v35, v102, s2
	v_cndmask_b32_e64 v36, v36, v103, s2
	v_cndmask_b32_e64 v3, v74, v3, s2
	v_cndmask_b32_e64 v7, v78, v7, s2
	v_cndmask_b32_e64 v8, v79, v8, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v74, 0, v16 :: v_dual_max_f32 v31, 0, v15
	v_dual_max_f32 v16, v29, v29 :: v_dual_max_f32 v79, 0, v19
	v_dual_max_f32 v15, v33, v33 :: v_dual_max_f32 v78, 0, v18
	v_max_f32_e32 v19, v37, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v222, v81
	v_fma_f32 v10, v10, v223, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v105, s2
	v_cndmask_b32_e64 v39, v39, v106, s2
	v_cndmask_b32_e64 v17, v17, v107, s2
	v_cndmask_b32_e64 v6, v77, v6, s2
	v_cndmask_b32_e64 v11, v83, v11, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v77, 0, v16
	v_max_f32_e32 v27, 0, v12
	v_dual_max_f32 v12, v32, v32 :: v_dual_max_f32 v83, 0, v19
	v_max_f32_e32 v16, v35, v35
	v_max_f32_e32 v18, v36, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v81, v9, s2
	v_cndmask_b32_e64 v10, v82, v10, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v37, 0, v12 :: v_dual_max_f32 v80, 0, v15
	v_max_f32_e32 v81, 0, v16
	v_dual_max_f32 v15, v39, v39 :: v_dual_max_f32 v82, 0, v18
	v_max_f32_e32 v12, v38, v38
	v_dual_max_f32 v16, v17, v17 :: v_dual_max_f32 v17, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v39, 0, v15
	v_dual_max_f32 v15, v43, v43 :: v_dual_max_f32 v18, v41, v41
	v_dual_max_f32 v38, 0, v12 :: v_dual_max_f32 v41, 0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v40, 0, v16 :: v_dual_max_f32 v17, v45, v45
	v_max_f32_e32 v12, v42, v42
	v_dual_max_f32 v16, v44, v44 :: v_dual_max_f32 v43, 0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v84, 0, v18 :: v_dual_max_f32 v45, 0, v17
	v_max_f32_e32 v15, v48, v48
	v_dual_max_f32 v17, v50, v50 :: v_dual_max_f32 v42, 0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v44, 0, v16
	v_dual_max_f32 v12, v47, v47 :: v_dual_max_f32 v1, v1, v1
	v_max_f32_e32 v50, 0, v17
	v_dual_max_f32 v17, v57, v57 :: v_dual_max_f32 v18, v46, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v47, 0, v12 :: v_dual_max_f32 v48, 0, v15
	v_dual_max_f32 v15, v55, v55 :: v_dual_max_f32 v16, v49, v49
	v_max_f32_e32 v57, 0, v17
	v_dual_max_f32 v17, v62, v62 :: v_dual_max_f32 v26, 0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v55, 0, v15 :: v_dual_max_f32 v46, 0, v18
	v_dual_max_f32 v49, 0, v16 :: v_dual_max_f32 v18, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v15, v60, v60 :: v_dual_max_f32 v36, 0, v17
	v_max_f32_e32 v17, v52, v52
	v_max_f32_e32 v1, v2, v2
	v_max_f32_e32 v53, 0, v18
	v_max_f32_e32 v18, v58, v58
	v_max_f32_e32 v2, v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v226, v85
	v_fma_f32 v14, v14, v227, v86
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v60, 0, v15 :: v_dual_max_f32 v3, v4, v4
	v_max_f32_e32 v58, 0, v18
	v_max_f32_e32 v18, v63, v63
	v_dual_max_f32 v16, v56, v56 :: v_dual_max_f32 v29, 0, v17
	v_dual_max_f32 v25, 0, v2 :: v_dual_max_f32 v2, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v35, 0, v18 :: v_dual_max_f32 v56, 0, v16
	v_max_f32_e32 v16, v61, v61
	v_max_f32_e32 v12, v54, v54
	v_dual_max_f32 v4, v5, v5 :: v_dual_max_f32 v19, 0, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v85, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v61, 0, v16
	v_dual_max_f32 v54, 0, v12 :: v_dual_max_f32 v15, v65, v65
	v_max_f32_e32 v12, v59, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v86, v14, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, v66, v66 :: v_dual_max_f32 v21, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, v10, v10 :: v_dual_max_f32 v59, 0, v12
	v_max_f32_e32 v12, v64, v64
	v_max_f32_e32 v30, 0, v16
	v_max_f32_e32 v2, v13, v13
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v69, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v51.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v32, 0, v12
	v_max_f32_e32 v16, 0, v4
	v_max_f32_e32 v4, v14, v14
	v_dual_max_f32 v24, 0, v3 :: v_dual_max_f32 v3, v9, v9
	v_dual_max_f32 v28, 0, v1 :: v_dual_max_f32 v1, v7, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v70, v70
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v6, v6 :: v_dual_max_f32 v6, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_max_f32 v18, 0, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v9.h
	v_mov_b16_e32 v20.l, v13.h
	v_mov_b16_e32 v20.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v52, v72, v72 :: v_dual_mul_f32 v65, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v17
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v22, 0, v5 :: v_dual_max_f32 v1, v67, v67
	v_dual_max_f32 v5, v11, v11 :: v_dual_and_b32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v9, v9, v17, 0x7fff
	v_mov_b16_e32 v17.l, v52.h
	v_mov_b16_e32 v17.h, v51.l
	v_add3_u32 v13, v13, v20, 0x7fff
	v_mov_b16_e32 v62.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v37, v37, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v12, 0, v5 :: v_dual_mul_f32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v13.h
	v_and_b32_e32 v13, 1, v17
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v11, 0, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v4, s33, s22, v34
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v71, v71
	v_mul_f32_e32 v39, v39, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v52, v13, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v74, v74
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.h, v51.l
	v_mov_b16_e32 v62.l, v34.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v43, v43, v43 :: v_dual_max_f32 v14, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v52.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v68, v68 :: v_dual_and_b32 v20, 1, v62
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v62, v73, v73 :: v_dual_mul_f32 v31, v31, v31
	v_mul_f32_e32 v45, v45, v45
	v_mul_f32_e32 v47, v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v34, v20, 0x7fff
	v_mov_b16_e32 v20.l, v62.h
	v_mov_b16_e32 v34.l, v23.h
	v_mov_b16_e32 v34.h, v51.l
	v_mov_b16_e32 v20.h, v51.l
	v_mov_b16_e32 v13.l, v17.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v64, v78, v78 :: v_dual_max_f32 v33, 0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v17, 1, v34
	v_and_b32_e32 v20, 1, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v34, v75, v75
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v10, 0, v2 :: v_dual_max_f32 v15, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v23, v17, 0x7fff
	v_add3_u32 v17, v62, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v20.l, v34.h
	v_mov_b16_e32 v20.h, v51.l
	v_and_b32_e32 v62, 1, v63
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v63, v76, v76
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v23.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v238
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v23, v52, v62, 0x7fff
	v_mov_b16_e32 v52.l, v27.h
	v_mov_b16_e32 v62.l, v63.h
	v_mov_b16_e32 v62.h, v51.l
	v_mov_b16_e32 v52.h, v51.l
	v_add3_u32 v20, v34, v20, 0x7fff
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_max_f32_e32 v8, 0, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v23.h
	v_and_b32_e32 v23, 1, v62
	v_and_b32_e32 v34, 1, v52
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v77, v77
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v62.l, v31.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[1:2], null, s23, 48, v[3:4]
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v63, v63, v23, 0x7fff
	v_add3_u32 v23, v27, v34, 0x7fff
	v_mov_b16_e32 v27.l, v52.h
	v_mov_b16_e32 v27.h, v51.l
	v_and_b32_e32 v34, 1, v62
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v62, v79, v79
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v23.l, v63.h
	v_mov_b16_e32 v63.l, v64.h
	v_and_b32_e32 v27, 1, v27
	v_add3_u32 v31, v31, v34, 0x7fff
	v_mov_b16_e32 v34.l, v62.h
	v_mov_b16_e32 v63.h, v51.l
	v_mov_b16_e32 v34.h, v51.l
	v_add3_u32 v27, v52, v27, 0x7fff
	v_mov_b16_e32 v27.l, v31.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v52, v80, v80 :: v_dual_and_b32 v31, 1, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v34, 1, v34
	v_mov_b16_e32 v63.l, v37.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_nc_u32_e32 v2, 0x80, v4
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v38, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v64, v31, 0x7fff
	v_add3_u32 v31, v62, v34, 0x7fff
	v_mov_b16_e32 v34.l, v52.h
	v_mov_b16_e32 v34.h, v51.l
	v_and_b32_e32 v62, 1, v63
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v63, v82, v82
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v31.l, v64.h
	v_mov_b16_e32 v64.l, v65.h
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v37, v37, v62, 0x7fff
	v_mov_b16_e32 v62.l, v63.h
	v_mov_b16_e32 v64.h, v51.l
	v_mov_b16_e32 v62.h, v51.l
	v_add3_u32 v34, v52, v34, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v52, v83, v83
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v34.l, v37.h
	v_and_b32_e32 v37, 1, v64
	v_and_b32_e32 v62, 1, v62
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v40, v40, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v52.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v42, v42, v42
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v65, v37, 0x7fff
	v_add3_u32 v62, v63, v62, 0x7fff
	v_mov_b16_e32 v63.l, v38.h
	v_mov_b16_e32 v63.h, v51.l
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v62.l, v37.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v33, v33, v33
	v_mul_f32_e32 v35, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v63
	v_add3_u32 v52, v52, v64, 0x7fff
	v_mov_b16_e32 v63.l, v40.h
	v_mov_b16_e32 v64.l, v39.h
	v_mov_b16_e32 v64.h, v51.l
	v_add3_u32 v37, v38, v37, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v38, v41, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v52.h
	v_and_b32_e32 v52, 1, v63
	v_and_b32_e32 v41, 1, v64
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v63, v84, v84
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v64.l, v38.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v44, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v40, v52, 0x7fff
	v_add3_u32 v39, v39, v41, 0x7fff
	v_mov_b16_e32 v41.l, v63.h
	v_mov_b16_e32 v41.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v29, v29, v29 :: v_dual_and_b32 v52, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v39.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v46, v46, v46 :: v_dual_and_b32 v39, 1, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v38, v52, 0x7fff
	v_mov_b16_e32 v52.l, v42.h
	v_mov_b16_e32 v52.h, v51.l
	v_mov_b16_e32 v41.l, v43.h
	v_add3_u32 v39, v63, v39, 0x7fff
	v_mov_b16_e32 v39.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_and_b32 v38, 1, v52
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v41, 1, v41
	v_mov_b16_e32 v52.l, v44.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v21, v21, v21
	v_mul_f32_e32 v19, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v42, v38, 0x7fff
	v_mov_b16_e32 v42.l, v45.h
	v_mov_b16_e32 v42.h, v51.l
	v_add3_u32 v41, v43, v41, 0x7fff
	v_and_b32_e32 v43, 1, v52
	v_mov_b16_e32 v41.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v15, v15, v15 :: v_dual_and_b32 v38, 1, v42
	v_mul_f32_e32 v52, v56, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v42, v44, v43, 0x7fff
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v44.h, v51.l
	v_mov_b16_e32 v43.l, v47.h
	v_mov_b16_e32 v43.h, v51.l
	v_add3_u32 v38, v45, v38, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v45, v48, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v38.l, v42.h
	v_and_b32_e32 v42, 1, v44
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v44, v49, v49 :: v_dual_and_b32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v45.h
	v_mov_b16_e32 v48.h, v51.l
	v_add3_u32 v42, v46, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v46.l, v44.h
	v_mov_b16_e32 v46.h, v51.l
	v_add3_u32 v43, v47, v43, 0x7fff
	v_and_b32_e32 v47, 1, v48
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v48, v53, v53 :: v_dual_mul_f32 v49, v50, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v42.h
	v_and_b32_e32 v42, 1, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v45, v47, 0x7fff
	v_mov_b16_e32 v46.l, v48.h
	v_mov_b16_e32 v47.l, v49.h
	v_mov_b16_e32 v47.h, v51.l
	v_add3_u32 v42, v44, v42, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v44, v54, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v45.h
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v45, 1, v47
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v55, v55
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v44.h
	v_mov_b16_e32 v50.h, v51.l
	v_add3_u32 v46, v48, v46, 0x7fff
	v_add3_u32 v45, v49, v45, 0x7fff
	v_mov_b16_e32 v48.l, v47.h
	v_mov_b16_e32 v48.h, v51.l
	v_and_b32_e32 v49, 1, v50
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v50, v57, v57 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v45.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v45, 1, v48
	v_add3_u32 v44, v44, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v50.h
	v_mov_b16_e32 v49.l, v52.h
	v_mov_b16_e32 v49.h, v51.l
	v_add3_u32 v45, v47, v45, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v47, v58, v58
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, 0, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.l, v44.h
	v_and_b32_e32 v44, 1, v49
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v49, v59, v59 :: v_dual_and_b32 v48, 1, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.l, v47.h
	v_mov_b16_e32 v53.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v52, v44, 0x7fff
	v_add3_u32 v48, v50, v48, 0x7fff
	v_mov_b16_e32 v50.l, v49.h
	v_mov_b16_e32 v50.h, v51.l
	v_and_b32_e32 v52, 1, v53
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v54, v60, v60 :: v_dual_mul_f32 v53, v61, v61
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v44, 1, v50
	v_add3_u32 v47, v47, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v54.h
	v_mov_b16_e32 v52.h, v51.l
	v_mov_b16_e32 v50.l, v53.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v36, v36, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v49, v44, 0x7fff
	v_mov_b16_e32 v44.l, v47.h
	v_and_b32_e32 v47, 1, v52
	v_and_b32_e32 v49, 1, v50
	v_mov_b16_e32 v50.l, v36.h
	v_mov_b16_e32 v52.l, v35.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v32, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v47, v54, v47, 0x7fff
	v_add3_u32 v49, v53, v49, 0x7fff
	v_and_b32_e32 v50, 1, v50
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v30, v30, v30
	v_mul_f32_e32 v26, v26, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, v47.h
	v_and_b32_e32 v47, 1, v52
	v_add3_u32 v36, v36, v50, 0x7fff
	v_mov_b16_e32 v52.l, v32.h
	v_mov_b16_e32 v50.l, v33.h
	v_mov_b16_e32 v50.h, v51.l
	v_add3_u32 v35, v35, v47, 0x7fff
	v_mov_b16_e32 v35.l, v36.h
	v_and_b32_e32 v36, 1, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v28, v28, v28 :: v_dual_and_b32 v47, 1, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v50.l, v30.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v32, v32, v36, 0x7fff
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e32 v36.h, v51.l
	v_add3_u32 v33, v33, v47, 0x7fff
	v_and_b32_e32 v47, 1, v50
	v_mov_b16_e32 v33.l, v32.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v24, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v36
	v_mov_b16_e32 v36.l, v28.h
	v_add3_u32 v30, v30, v47, 0x7fff
	v_mov_b16_e32 v47.l, v26.h
	v_mov_b16_e32 v47.h, v51.l
	v_add3_u32 v29, v29, v32, 0x7fff
	v_and_b32_e32 v32, 1, v36
	v_mov_b16_e32 v29.l, v30.h
	v_mov_b16_e32 v36.l, v25.h
	v_and_b32_e32 v30, 1, v47
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v22, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v32, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v12, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v32, 1, v36
	v_add3_u32 v26, v26, v30, 0x7fff
	v_mov_b16_e32 v30.l, v24.h
	v_mov_b16_e32 v30.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v25, v25, v32, 0x7fff
	v_mov_b16_e32 v28.l, v26.h
	v_mov_b16_e32 v32.l, v21.h
	v_and_b32_e32 v26, 1, v30
	v_mov_b16_e32 v30.l, v22.h
	v_mov_b16_e32 v32.h, v51.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	v_mul_f32_e32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v24, v24, v26, 0x7fff
	v_mov_b16_e32 v24.l, v25.h
	v_and_b32_e32 v26, 1, v30
	v_and_b32_e32 v30, 1, v32
	v_mov_b16_e32 v32.l, v19.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s23, 4, v3
	v_lshl_add_u32 v5, s23, 5, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v22, v22, v26, 0x7fff
	v_add3_u32 v21, v21, v30, 0x7fff
	v_and_b32_e32 v26, 1, v32
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v30.l, v14.h
	v_mov_b16_e32 v30.h, v51.l
	v_mov_b16_e32 v22.l, v21.h
	v_add3_u32 v19, v19, v26, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v51.l
	v_mov_b16_e32 v26.l, v12.h
	v_mov_b16_e32 v26.h, v51.l
	v_cndmask_b32_e32 v32, v46, v48, vcc_lo
	v_mov_b16_e32 v36.l, v18.h
	v_and_b32_e32 v21, 1, v21
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v26
	s_mov_b32 s22, s10
	v_and_b32_e32 v25, 1, v36
	v_add3_u32 v16, v16, v21, 0x7fff
	v_mov_b16_e32 v21.l, v7.h
	v_add3_u32 v12, v12, v26, 0x7fff
	v_mov_b16_e32 v12.l, v11.h
	v_add3_u32 v18, v18, v25, 0x7fff
	v_mov_b16_e32 v25.l, v15.h
	v_mov_b16_e32 v25.h, v51.l
	v_mov_b16_e32 v21.h, v51.l
	v_cndmask_b32_e32 v26, v41, v43, vcc_lo
	v_mov_b16_e32 v19.l, v18.h
	v_and_b32_e32 v18, 1, v30
	v_dual_cndmask_b32 v30, v38, v42 :: v_dual_and_b32 v25, 1, v25
	v_cndmask_b32_e32 v36, v45, v44, vcc_lo
	s_mov_b32 s23, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v14, v18, 0x7fff
	v_add3_u32 v15, v15, v25, 0x7fff
	v_mov_b16_e32 v15.l, v10.h
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v12.h, v51.l
	v_mov_b16_e32 v18.l, v8.h
	v_mov_b16_e32 v16.l, v15.h
	v_mov_b16_e32 v15.h, v51.l
	v_mov_b16_e32 v18.h, v51.l
	v_dual_cndmask_b32 v25, v43, v41 :: v_dual_and_b32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v15
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_cndmask_b32_e32 v12, v31, v23, vcc_lo
	v_add3_u32 v10, v10, v15, 0x7fff
	v_and_b32_e32 v15, 1, v21
	v_add3_u32 v8, v8, v18, 0x7fff
	v_dual_cndmask_b32 v18, v40, v62 :: v_dual_cndmask_b32 v21, v39, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v11.l, v10.h
	v_add3_u32 v0, v7, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v0.l, v8.h
	v_cndmask_b32_e32 v8, v17, v9, vcc_lo
	v_cndmask_b32_e32 v7, v9, v17, vcc_lo
	v_dual_cndmask_b32 v10, v20, v13 :: v_dual_cndmask_b32 v9, v13, v20
	v_dual_cndmask_b32 v13, v23, v31 :: v_dual_cndmask_b32 v20, v62, v40
	v_cndmask_b32_e32 v23, v37, v39, vcc_lo
	v_cndmask_b32_e32 v39, v19, v24, vcc_lo
	v_dual_cndmask_b32 v19, v24, v19 :: v_dual_cndmask_b32 v40, v11, v16
	v_dual_cndmask_b32 v11, v16, v11 :: v_dual_mov_b32 v16, 0x5410
	v_dual_mov_b32 v24, 0x7632 :: v_dual_cndmask_b32 v41, v0, v14
	v_cndmask_b32_e32 v0, v14, v0, vcc_lo
	v_permlanex16_b32 v14, v7, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v7, 0x1054, v16, vcc_lo
	v_cndmask_b32_e32 v16, 0x3276, v24, vcc_lo
	v_permlanex16_b32 v24, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v17, v27, v34, vcc_lo
	v_cndmask_b32_e32 v15, v34, v27, vcc_lo
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v9, v16, 8, v16
	v_cndmask_b32_e32 v27, v42, v38, vcc_lo
	v_cndmask_b32_e32 v37, v33, v49, vcc_lo
	v_cndmask_b32_e32 v33, v49, v33, vcc_lo
	v_and_b32_e32 v7, 0x540054, v7
	v_dual_cndmask_b32 v38, v29, v35 :: v_dual_and_b32 v9, 0x760076, v9
	v_cndmask_b32_e32 v29, v35, v29, vcc_lo
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v9, v9, 4, v9
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v34, v44, v45 :: v_dual_cndmask_b32 v35, v22, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v42, 0x5040504, v7
	v_dual_cndmask_b32 v22, v28, v22 :: v_dual_and_b32 v43, 0x7060706, v9
	v_permlanex16_b32 v16, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v33, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v29, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v31, v48, v46, vcc_lo
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v14, v8, v42
	v_perm_b32 v8, v14, v8, v43
	v_perm_b32 v9, v24, v10, v42
	v_perm_b32 v10, v24, v10, v43
	v_permlanex16_b32 v45, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v13, v12, v42
	v_perm_b32 v12, v13, v12, v43
	v_perm_b32 v13, v17, v15, v42
	v_perm_b32 v14, v17, v15, v43
	v_permlanex16_b32 v36, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v15, v16, v18, v42
	v_perm_b32 v16, v16, v18, v43
	v_perm_b32 v17, v20, v21, v42
	v_perm_b32 v18, v20, v21, v43
	v_perm_b32 v19, v23, v25, v42
	v_perm_b32 v20, v23, v25, v43
	v_perm_b32 v21, v26, v27, v42
	v_perm_b32 v22, v26, v27, v43
	v_perm_b32 v25, v30, v34, v42
	v_perm_b32 v26, v30, v34, v43
	v_perm_b32 v29, v33, v38, v42
	v_perm_b32 v30, v33, v38, v43
	v_perm_b32 v33, v44, v39, v42
	v_perm_b32 v34, v44, v39, v43
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v23, v28, v31, v42
	v_perm_b32 v24, v28, v31, v43
	v_perm_b32 v27, v32, v37, v42
	v_perm_b32 v28, v32, v37, v43
	v_perm_b32 v37, v0, v41, v42
	v_perm_b32 v38, v0, v41, v43
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v3, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_perm_b32 v31, v36, v35, v42
	v_perm_b32 v32, v36, v35, v43
	v_add_lshl_u32 v4, v4, v1, 1
	v_perm_b32 v35, v45, v40, v42
	v_perm_b32 v36, v45, v40, v43
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 47
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13328
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 72
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 24
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
