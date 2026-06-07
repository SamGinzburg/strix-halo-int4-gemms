	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	v_mov_b32_e32 v248, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v2, 4, v248
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s17, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s17
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s15, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 48, v2
	v_lshrrev_b32_e32 v3, 2, v248
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v240, 15, v248
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[5:6], null, s13, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v4, 0xc0, v3
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mul_lo_u32 v8, s13, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s7, s6, s7
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v9, s13, 6, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s6, s6, s7
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v10, s13, 7, v5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s19, s18, s15
	s_ashr_i32 s14, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s15
	s_cmp_ge_u32 s12, s15
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s19, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s15, s12, s14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s12, s15, s14
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s31, s7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s12, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s12, 8
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s13, 63
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s17
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s13, 0xff
.Ltmp15:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s22, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s17, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[6:7], null, s22, s13, v[5:6]
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 24
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s17, s17, s2
.Ltmp19:
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s2, s33, s13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s12, s2, s26
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, s12, v5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s26, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s26, 64
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add3_u32 v8, v8, v1, s12
	v_add_nc_u32_e32 v11, s12, v9
	v_add_nc_u32_e32 v12, s12, v10
	s_add_i32 s12, s12, 64
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s35, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v15, 0x80000000, v5, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v5, 64, v5
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v9, s12, v9
	v_add_nc_u32_e32 v14, s12, v10
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v30, 0x80000000, v8, s3
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v8, 64, v8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v17, 0x80000000, v12, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v16, 0x80000000, v11, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[10:13], v7, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v7, 0x80000000, v9, s2
	v_cndmask_b32_e64 v9, 0x80000000, v14, s2
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x3
	buffer_load_b128 v[18:21], v15, s[28:31], 0 offen
	buffer_load_b128 v[22:25], v16, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v17, s[28:31], 0 offen
	buffer_load_b128 v[30:33], v30, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[34:37], v6, s[4:7], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[38:41], v5, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v7, s[28:31], 0 offen
	buffer_load_b128 v[46:49], v9, s[28:31], 0 offen
	buffer_load_b128 v[50:53], v8, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v5, 1, v248
	v_lshlrev_b32_e32 v16, 5, v248
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v7, 16, v240
	v_or_b32_e32 v8, 32, v240
	v_or_b32_e32 v9, 48, v240
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 48, v5
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v96, v2, v6
	v_lshlrev_b32_e32 v6, 3, v248
	v_add_nc_u32_e32 v2, 0, v96
	s_waitcnt vmcnt(9)
	ds_store_b128 v2, v[10:13] offset:32768
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v2, v[18:21]
	s_waitcnt vmcnt(7)
	ds_store_b128 v2, v[22:25] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v2, v[26:29] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v2, v[30:33] offset:12288
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v2, v[34:37] offset:36864
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v2, v[38:41] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v2, v[42:45] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v2, v[46:49] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v2, v[50:53] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v10, 48, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v2, 5, v248
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v89, v240, 6, v10
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_or_b32 v92, 0x1c00, v2, v89
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v90, 16, v89
	v_xor_b32_e32 v91, 32, v89
	v_xor_b32_e32 v88, 48, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v93, 16, v92
	v_xor_b32_e32 v94, 32, v92
	v_xor_b32_e32 v95, 48, v92
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
.LBB0_3:                                ; %Flow96
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v10, s22, v240
	v_or_b32_e32 v7, s22, v7
	v_or_b32_e32 v8, s22, v8
	v_or_b32_e32 v9, s22, v9
	v_and_b32_e32 v241, 0xf0, v248
	s_ashr_i32 s0, s17, 8
	v_or_b32_e32 v35, s33, v248
	v_mul_lo_u32 v38, v10, s0
	v_mul_lo_u32 v0, v7, s0
	v_mul_lo_u32 v36, v8, s0
	v_mul_lo_u32 v37, v9, s0
	v_lshlrev_b32_e32 v14, 2, v241
	v_and_b32_e32 v13, 28, v5
	v_lshlrev_b32_e32 v15, 1, v241
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s16, 6
.Ltmp21:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s10, s15, 8
	s_lshl_b32 s11, s14, 8
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v2, 48, v6
	v_or_b32_e32 v4, s10, v4
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v5, 32, v16
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v103, 0, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v89, v240, 6, v2
	v_or_b32_e32 v2, s10, v3
	v_subrev_nc_u32_e32 v4, s11, v4
	v_add_nc_u32_e32 v3, s22, v3
	v_add3_u32 v9, 0, v14, v5
	v_and_or_b32 v92, 0x1c00, v16, v89
	v_subrev_nc_u32_e32 v2, s11, v2
	v_mul_lo_u32 v4, s13, v4
	v_mul_lo_u32 v3, s13, v3
	v_xor_b32_e32 v90, 16, v89
	v_xor_b32_e32 v91, 32, v89
	v_or_b32_e32 v6, 0x80, v2
	v_or_b32_e32 v7, 64, v2
	v_mul_lo_u32 v2, s13, v2
	v_xor_b32_e32 v88, 48, v89
	v_add3_u32 v97, v4, v1, 0x80
	v_mul_lo_u32 v6, s13, v6
	v_mul_lo_u32 v7, s13, v7
	s_mov_b32 s13, s12
	v_add3_u32 v101, v3, v1, 0x80
	v_xor_b32_e32 v93, 16, v92
	v_add3_u32 v100, v2, v1, 0x80
	v_xor_b32_e32 v94, 32, v92
	v_xor_b32_e32 v95, 48, v92
	v_add3_u32 v98, v6, v1, 0x80
	v_add3_u32 v99, v7, v1, 0x80
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v102, v9, v13
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v80, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s11, 1
	s_add_i32 s10, s1, -2
	s_add_i32 s27, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s26
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v104, s12, v92
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s13, v101
	v_add_nc_u32_e32 v17, s27, v89
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v113, s12, v93
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v19, s27, v90
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[169:172], v104 offset:8192
	ds_load_b128 v[173:176], v113 offset:8192
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[121:124], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[161:164], v104
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[125:128], v19
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[165:168], v113
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[137:140], v17 offset:1024
	ds_load_b128 v[141:144], v19 offset:1024
	ds_load_b128 v[153:156], v17 offset:2048
	ds_load_b128 v[157:160], v19 offset:2048
	ds_load_b128 v[177:180], v17 offset:3072
	ds_load_b128 v[181:184], v19 offset:3072
	v_add_nc_u32_e32 v17, s27, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v19, s12, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[161:164], v[121:124], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[169:172], v[121:124], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[169:172], v[137:140], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[165:168], v[125:128], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[173:176], v[125:128], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[161:164], v[137:140], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[129:136], v[173:176], v[141:144], v[129:136] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[169:172], v[153:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[165:168], v[141:144], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[161:164], v[153:156], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[145:152], v[173:176], v[157:160], v[145:152] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[137:144], v[165:168], v[157:160], v[137:144] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[161:164], v[177:180], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[165:168], v[181:184], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[169:172], v[177:180], v[1:8] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[177:180], v19 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[161:168], v[173:176], v[181:184], v[161:168] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[173:176], v19
	v_add_nc_u32_e32 v19, s12, v95
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s12, s26, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 24
	s_add_i32 s12, s26, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 8
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s14, s12, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s0
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s11, 2
	s_cselect_b32 s11, s11, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[177:180], v[169:172], v[113:120] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[173:176], v[169:172], v[105:112] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s15, s11, 14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, -1
	s_add_i32 s26, s26, 64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[173:176], v[169:172], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[177:180], v[169:172], v[129:136] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[173:176], v[169:172], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[177:180], v[169:172], v[145:152] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:3072
	v_add_nc_u32_e32 v17, s27, v88
	s_mov_b32 s27, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[153:160], v[173:176], v[169:172], v[153:160] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[161:168], v[177:180], v[169:172], v[161:168] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[173:176], v19
	ds_load_b128 v[177:180], v19 offset:8192
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v19, v0, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[105:112], v[173:176], v[169:172], v[105:112] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[177:180], v[169:172], v[113:120] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
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
	v_cvt_f32_i32_e32 v120, v120
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[121:128], v[173:176], v[169:172], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[177:180], v[169:172], v[129:136] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[137:144], v[173:176], v[169:172], v[137:144] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[145:152], v[177:180], v[169:172], v[145:152] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[169:172], v17 offset:3072
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v35, s14, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[161:168], v[177:180], v[169:172], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[153:160], v[173:176], v[169:172], v[153:160] neg_lo:[1,1,0]
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v169, v37, s12, 1
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v172, s13, v99
	v_add_nc_u32_e32 v176, s13, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v104, v168
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v168, v36, s12, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v169, 0x80000000, v169, vcc_lo
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v180, s13, v97
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v102, v17 offset:40960
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v17, v38, s12, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	buffer_load_u16 v19, v19, s[36:39], 0 offen
	buffer_load_u16 v200, v168, s[36:39], 0 offen
	buffer_load_u16 v201, v169, s[36:39], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v168, s13, v100
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_clause 0x3
	buffer_load_b128 v[168:171], v168, s[28:31], 0 offen
	buffer_load_b128 v[172:175], v172, s[28:31], 0 offen
	buffer_load_b128 v[176:179], v176, s[28:31], 0 offen
	buffer_load_b128 v[180:183], v180, s[28:31], 0 offen
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[184:187], v103 offset:40960
	ds_load_b128 v[188:191], v103 offset:40976
	ds_load_b128 v[192:195], v103 offset:41472
	ds_load_b128 v[196:199], v103 offset:41488
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v202, s14, v96
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s34, s15, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s14, 0x8000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s10, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v202, v[9:12] offset:32768
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v10, 16, v17
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v200
	v_lshlrev_b32_e32 v11, 16, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(4)
	v_mul_f32_e32 v19, v184, v10
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v207, v188, v10 :: v_dual_mul_f32 v218, v191, v12
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v216, v189, v12 :: v_dual_lshlrev_b32 v17, 16, v201
	v_dual_mul_f32 v214, v191, v11 :: v_dual_add_nc_u32 v9, s34, v96
	v_mul_f32_e32 v200, v185, v11
	v_mul_f32_e32 v201, v186, v11
	v_dual_mul_f32 v202, v187, v11 :: v_dual_mul_f32 v203, v184, v12
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[168:171]
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v168, v185, v10
	v_mul_f32_e32 v169, v186, v10
	v_dual_mul_f32 v170, v187, v10 :: v_dual_mul_f32 v171, v184, v11
	v_mul_f32_e32 v204, v185, v12
	v_mul_f32_e32 v205, v186, v12
	v_mul_f32_e32 v206, v187, v12
	v_mul_f32_e32 v184, v184, v17
	v_mul_f32_e32 v185, v185, v17
	v_mul_f32_e32 v186, v186, v17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v187, v187, v17 :: v_dual_mul_f32 v220, v193, v10
	v_mul_f32_e32 v208, v189, v10
	v_dual_mul_f32 v209, v190, v10 :: v_dual_mul_f32 v224, v193, v11
	v_dual_mul_f32 v210, v191, v10 :: v_dual_mul_f32 v211, v188, v11
	v_mul_f32_e32 v212, v189, v11
	v_dual_mul_f32 v213, v190, v11 :: v_dual_mul_f32 v222, v195, v10
	v_dual_mul_f32 v215, v188, v12 :: v_dual_mul_f32 v226, v195, v11
	v_dual_mul_f32 v217, v190, v12 :: v_dual_mul_f32 v188, v188, v17
	v_dual_mul_f32 v189, v189, v17 :: v_dual_mul_f32 v230, v195, v12
	v_mul_f32_e32 v190, v190, v17
	v_dual_mul_f32 v191, v191, v17 :: v_dual_mul_f32 v228, v193, v12
	v_mul_f32_e32 v219, v192, v10
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v221, v194, v10 :: v_dual_mul_f32 v234, v196, v11
	v_dual_mul_f32 v223, v192, v11 :: v_dual_mul_f32 v232, v197, v10
	v_mul_f32_e32 v225, v194, v11
	v_dual_mul_f32 v227, v192, v12 :: v_dual_mul_f32 v236, v198, v11
	v_dual_mul_f32 v229, v194, v12 :: v_dual_mul_f32 v192, v192, v17
	v_mul_f32_e32 v193, v193, v17
	v_mul_f32_e32 v194, v194, v17
	v_dual_mul_f32 v195, v195, v17 :: v_dual_mul_f32 v238, v197, v12
	v_mul_f32_e32 v231, v196, v10
	v_dual_mul_f32 v233, v198, v10 :: v_dual_fmac_f32 v18, v19, v105
	v_dual_mul_f32 v10, v199, v10 :: v_dual_mul_f32 v235, v197, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v20, v168, v106 :: v_dual_mul_f32 v11, v199, v11
	v_fmac_f32_e32 v22, v170, v108
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v237, v196, v12 :: v_dual_fmac_f32 v40, v171, v121
	v_dual_mul_f32 v239, v198, v12 :: v_dual_fmac_f32 v24, v208, v110
	v_mul_f32_e32 v12, v199, v12
	v_mul_f32_e32 v196, v196, v17
	v_dual_mul_f32 v197, v197, v17 :: v_dual_fmac_f32 v26, v210, v112
	v_mul_f32_e32 v198, v198, v17
	v_dual_mul_f32 v17, v199, v17 :: v_dual_fmac_f32 v28, v220, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v21, v169, v107 :: v_dual_fmac_f32 v30, v222, v116
	v_dual_fmac_f32 v23, v207, v109 :: v_dual_fmac_f32 v32, v232, v118
	v_dual_fmac_f32 v25, v209, v111 :: v_dual_fmac_f32 v34, v10, v120
	v_dual_fmac_f32 v27, v219, v113 :: v_dual_fmac_f32 v42, v201, v123
	v_dual_fmac_f32 v29, v221, v115 :: v_dual_fmac_f32 v44, v211, v125
	v_dual_fmac_f32 v31, v231, v117 :: v_dual_fmac_f32 v46, v213, v127
	v_dual_fmac_f32 v33, v233, v119 :: v_dual_fmac_f32 v48, v223, v129
	v_dual_fmac_f32 v41, v200, v122 :: v_dual_fmac_f32 v50, v225, v131
	v_dual_fmac_f32 v43, v202, v124 :: v_dual_fmac_f32 v54, v236, v135
	v_dual_fmac_f32 v45, v212, v126 :: v_dual_fmac_f32 v52, v234, v133
	v_dual_fmac_f32 v47, v214, v128 :: v_dual_fmac_f32 v56, v203, v137
	v_dual_fmac_f32 v49, v224, v130 :: v_dual_fmac_f32 v58, v205, v139
	v_dual_fmac_f32 v51, v226, v132 :: v_dual_fmac_f32 v60, v215, v141
	v_dual_fmac_f32 v53, v235, v134 :: v_dual_fmac_f32 v62, v217, v143
	v_dual_fmac_f32 v55, v11, v136 :: v_dual_fmac_f32 v66, v229, v147
	v_dual_fmac_f32 v57, v204, v138 :: v_dual_fmac_f32 v64, v227, v145
	v_dual_fmac_f32 v59, v206, v140 :: v_dual_fmac_f32 v68, v237, v149
	v_dual_fmac_f32 v61, v216, v142 :: v_dual_fmac_f32 v70, v239, v151
	v_dual_fmac_f32 v63, v218, v144 :: v_dual_fmac_f32 v72, v184, v153
	v_dual_fmac_f32 v65, v228, v146 :: v_dual_fmac_f32 v74, v186, v155
	v_dual_fmac_f32 v67, v230, v148 :: v_dual_fmac_f32 v76, v188, v157
	v_dual_fmac_f32 v69, v238, v150 :: v_dual_fmac_f32 v84, v195, v164
	v_dual_fmac_f32 v71, v12, v152 :: v_dual_fmac_f32 v78, v190, v159
	v_fmac_f32_e32 v73, v185, v154
	v_dual_fmac_f32 v75, v187, v156 :: v_dual_fmac_f32 v82, v193, v162
	v_fmac_f32_e32 v77, v189, v158
	v_dual_fmac_f32 v79, v191, v160 :: v_dual_fmac_f32 v86, v197, v166
	v_dual_fmac_f32 v81, v192, v161 :: v_dual_fmac_f32 v80, v17, v104
	v_fmac_f32_e32 v83, v194, v163
	v_fmac_f32_e32 v85, v196, v165
	v_fmac_f32_e32 v87, v198, v167
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[172:175] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[176:179] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[180:183] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v2, v16
	s_add_i32 s35, s13, 0x80
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
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v18, 0
	s_add_i32 s27, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s34, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v234, 0
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v238, 0
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v245, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_mov_b32_e32 v132, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v232, 0
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v138, 0
	v_mov_b32_e32 v162, 0
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v242, 0
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v122, 0
	v_mov_b32_e32 v149, 0
	v_mov_b32_e32 v171, 0
	v_mov_b32_e32 v151, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v123, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s12, v94
	v_add_nc_u32_e32 v3, s12, v93
	v_add_nc_u32_e32 v4, s12, v95
	v_add_nc_u32_e32 v5, s12, v92
	s_mov_b32 s12, 0
	ds_load_b128 v[97:100], v1 offset:8192
	ds_load_b128 v[160:163], v1
	ds_load_b128 v[164:167], v3 offset:8192
	ds_load_b128 v[168:171], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s27, v89
	v_add_nc_u32_e32 v11, s27, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[172:175], v5 offset:8192
	ds_load_b128 v[176:179], v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v16, s27, v90
	v_add_nc_u32_e32 v12, s27, v88
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[188:191], v4 offset:8192
	ds_load_b128 v[192:195], v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s12 :: v_dual_mov_b32 v10, s19
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[136:139], v1 offset:1024
	ds_load_b128 v[120:123], v1
	ds_load_b128 v[180:183], v11 offset:1024
	ds_load_b128 v[128:131], v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v7, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[184:187], v16 offset:1024
	ds_load_b128 v[132:135], v16
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v4, s13 :: v_dual_mov_b32 v5, s14
	v_mov_b32_e32 v6, s15
	v_dual_mov_b32 v8, s17 :: v_dual_mov_b32 v9, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[196:199], v12 offset:1024
	ds_load_b128 v[140:143], v12
	ds_load_b128 v[200:203], v1 offset:3072
	ds_load_b128 v[152:155], v1 offset:2048
	ds_load_b128 v[204:207], v16 offset:3072
	ds_load_b128 v[208:211], v16 offset:2048
	ds_load_b128 v[212:215], v11 offset:3072
	ds_load_b128 v[216:219], v11 offset:2048
	ds_load_b128 v[220:223], v12 offset:3072
	ds_load_b128 v[224:227], v12 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[176:179], v[120:123], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[172:175], v[120:123], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[176:179], v[136:139], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[168:171], v[132:135], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[164:167], v[132:135], v[104:111] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[120:127], v[168:171], v[184:187], v[120:127] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[172:175], v[152:155], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[160:163], v[128:131], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[97:100], v[128:131], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[172:175], v[136:139], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[144:151], v[164:167], v[208:211], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[192:195], v[140:143], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[188:191], v[140:143], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[176:179], v[152:155], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[176:179], v[200:203], v[3:10] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v113
	v_wmma_i32_16x16x16_iu8 v[3:10], v[172:175], v[200:203], v[3:10] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[136:143], v[168:171], v[208:211], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[164:167], v[184:187], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[168:171], v[204:207], v[152:159] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v116
	v_wmma_i32_16x16x16_iu8 v[3:10], v[164:167], v[204:207], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[160:163], v[216:219], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[120:127], v[160:163], v[180:183], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[97:100], v[180:183], v[128:135] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v117
	v_wmma_i32_16x16x16_iu8 v[144:151], v[97:100], v[216:219], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[160:163], v[212:215], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[3:10], v[97:100], v[212:215], v[3:10] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[136:143], v[192:195], v[224:227], v[136:143] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v118
	v_wmma_i32_16x16x16_iu8 v[120:127], v[192:195], v[196:199], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[128:135], v[188:191], v[196:199], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[144:151], v[188:191], v[224:227], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[152:159], v[192:195], v[220:223], v[152:159] neg_lo:[1,1,0]
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v107
	v_wmma_i32_16x16x16_iu8 v[3:10], v[188:191], v[220:223], v[3:10] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v254, v114
	v_cvt_f32_i32_e32 v255, v115
	v_cvt_f32_i32_e32 v236, v119
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v108
	v_cvt_f32_i32_e32 v237, v104
	v_cvt_f32_i32_e32 v238, v105
	v_cvt_f32_i32_e32 v239, v106
	v_cvt_f32_i32_e32 v244, v109
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v140
	v_cvt_f32_i32_e32 v245, v110
	v_cvt_f32_i32_e32 v246, v111
	v_cvt_f32_i32_e32 v247, v120
	v_cvt_f32_i32_e32 v233, v121
	v_cvt_f32_i32_e32 v234, v122
	v_cvt_f32_i32_e32 v230, v123
	v_cvt_f32_i32_e32 v235, v124
	v_cvt_f32_i32_e32 v160, v125
	v_cvt_f32_i32_e32 v231, v126
	v_cvt_f32_i32_e32 v162, v127
	v_cvt_f32_i32_e32 v126, v128
	v_cvt_f32_i32_e32 v127, v129
	v_cvt_f32_i32_e32 v243, v130
	v_cvt_f32_i32_e32 v163, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v125, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v164, v136
	v_cvt_f32_i32_e32 v232, v137
	v_cvt_f32_i32_e32 v131, v138
	v_cvt_f32_i32_e32 v19, v139
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v138, v141
	v_cvt_f32_i32_e32 v139, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v141, v144
	v_cvt_f32_i32_e32 v142, v145
	v_cvt_f32_i32_e32 v17, v146
	v_cvt_f32_i32_e32 v144, v147
	v_cvt_f32_i32_e32 v242, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v171, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v107, v152
	v_cvt_f32_i32_e32 v108, v153
	v_cvt_f32_i32_e32 v191, v154
	v_cvt_f32_i32_e32 v110, v155
	v_cvt_f32_i32_e32 v111, v156
	v_cvt_f32_i32_e32 v113, v157
	v_cvt_f32_i32_e32 v114, v158
	v_cvt_f32_i32_e32 v115, v159
	v_cvt_f32_i32_e32 v116, v3
	v_cvt_f32_i32_e32 v117, v4
	v_cvt_f32_i32_e32 v118, v5
	v_cvt_f32_i32_e32 v119, v6
	v_cvt_f32_i32_e32 v120, v7
	v_cvt_f32_i32_e32 v128, v8
	v_cvt_f32_i32_e32 v122, v9
	v_cvt_f32_i32_e32 v123, v10
	v_cvt_f32_i32_e32 v1, v112
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s4, s23
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v35, s5, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v6, v37, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v38, s4, 1
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_add_lshl_u32 v4, v0, s4, 1
	v_add_lshl_u32 v5, v36, s4, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_mov_b32_e32 v166, 0
	s_clause 0x3
	buffer_load_u16 v150, v1, s[8:11], 0 offen
	buffer_load_u16 v130, v4, s[8:11], 0 offen
	buffer_load_u16 v112, v5, s[8:11], 0 offen
	buffer_load_u16 v148, v6, s[8:11], 0 offen
	v_dual_mov_b32 v168, 0 :: v_dual_and_b32 v1, 32, v2
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v161, 0, v15
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v172, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v1, 0, v14, v1
	v_mov_b32_e32 v209, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v124, v1, v13
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v229, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v212, 0 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v124, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v161 offset:40960
	ds_load_b128 v[5:8], v161 offset:40976
	ds_load_b128 v[9:12], v161 offset:41472
	ds_load_b128 v[13:16], v161 offset:41488
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v220, v248 :: v_dual_add_nc_u32 v169, s34, v95
	v_dual_mov_b32 v159, v107 :: v_dual_add_nc_u32 v96, s34, v93
	v_dual_mov_b32 v221, v247 :: v_dual_add_nc_u32 v170, s34, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v97, s34, v92
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v89, s1, v89
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v229, s19 :: v_dual_add_nc_u32 v188, s1, v91
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[92:95], v169 offset:8192
	ds_load_b128 v[165:168], v170
	ds_load_b128 v[216:219], v96 offset:8192
	scratch_store_b32 off, v246, off offset:68 ; 4-byte Folded Spill
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v227, s17 :: v_dual_add_nc_u32 v90, s1, v90
	v_mov_b32_e32 v228, s18
	v_mov_b32_e32 v226, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[246:249], v96
	ds_load_b128 v[250:253], v97
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[192:195], v89
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[96:99], v97 offset:8192
	s_clause 0x8                            ; 36-byte Folded Spill
	scratch_store_b32 off, v240, off offset:36
	scratch_store_b32 off, v241, off offset:32
	scratch_store_b32 off, v17, off offset:40
	scratch_store_b32 off, v125, off offset:48
	scratch_store_b32 off, v160, off offset:60
	scratch_store_b32 off, v238, off offset:64
	scratch_store_b32 off, v19, off offset:44
	scratch_store_b32 off, v162, off offset:52
	scratch_store_b32 off, v239, off offset:56
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[238:241], v89 offset:2048
	v_dual_mov_b32 v190, v108 :: v_dual_mov_b32 v189, v110
	v_mov_b32_e32 v160, v111
	ds_load_b128 v[108:111], v90
	ds_load_b128 v[208:211], v89 offset:1024
	ds_load_b128 v[100:103], v89 offset:3072
	v_dual_mov_b32 v162, v35 :: v_dual_mov_b32 v39, v37
	v_mov_b32_e32 v37, v36
	v_dual_mov_b32 v36, v0 :: v_dual_mov_b32 v35, v113
	v_dual_mov_b32 v19, v114 :: v_dual_mov_b32 v134, v123
	v_mov_b32_e32 v17, v115
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v0.l, v112.l
	ds_load_b128 v[112:115], v90 offset:2048
	v_mov_b32_e32 v125, v116
	v_mov_b32_e32 v129, v124
	v_dual_mov_b32 v121, v117 :: v_dual_mov_b32 v124, v122
	v_dual_mov_b32 v122, v120 :: v_dual_mov_b32 v123, v118
	v_mov_b32_e32 v120, v119
	ds_load_b128 v[116:119], v90 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v225, s15 :: v_dual_mov_b32 v224, s14
	v_dual_mov_b32 v223, s13 :: v_dual_mov_b32 v222, s12
	v_dual_mov_b32 v153, v142 :: v_dual_mov_b32 v146, v131
	v_dual_mov_b32 v142, v133 :: v_dual_mov_b32 v133, v230
	v_mov_b32_e32 v152, v236
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[250:253], v[192:195], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[96:99], v[192:195], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[192:199], v[250:253], v[208:211], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[96:99], v[208:211], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[208:215], v[250:253], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_dual_mov_b32 v155, v144 :: v_dual_mov_b32 v136, v234
	v_mov_b32_e32 v144, v135
	v_dual_mov_b32 v135, v231 :: v_dual_mov_b32 v158, v237
	v_dual_mov_b32 v145, v232 :: v_dual_mov_b32 v156, v242
	v_dual_mov_b32 v131, v233 :: v_dual_mov_b32 v154, v139
	v_mov_b32_e32 v143, v235
	v_wmma_i32_16x16x16_iu8 v[230:237], v[96:99], v[238:241], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[246:249], v[108:111], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[216:219], v[108:111], v[180:187] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[108:111], v169
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v169, s1, v88
	ds_load_b128 v[104:107], v90 offset:3072
	v_mov_b32_e32 v137, v243
	v_mov_b32_e32 v147, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[192:199], v[246:249], v[116:119], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[216:219], v[116:119], v[200:207] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[88:91], v188 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[208:215], v[246:249], v[112:115], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[216:219], v[112:115], v[230:237] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[112:115], v169
	ds_load_b128 v[116:119], v169 offset:1024
	v_mov_b32_e32 v139, v244
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[238:245], v[250:253], v[100:103], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[96:99], v[100:103], v[222:229] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[96:99], v188
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[100:103], v170 offset:8192
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[246:249], v[104:107], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[222:229], v[216:219], v[104:107], v[222:229] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[172:179], v[165:168], v[96:99], v[172:179] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[180:187], v[100:103], v[96:99], v[180:187] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[96:99], v169 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[192:199], v[165:168], v[88:91], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[100:103], v[88:91], v[200:207] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[172:179], v[108:111], v[112:115], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[180:187], v[92:95], v[112:115], v[180:187] neg_lo:[1,1,0]
	v_mov_b16_e32 v112.l, v0.l
	v_wmma_i32_16x16x16_iu8 v[192:199], v[108:111], v[116:119], v[192:199] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[200:207], v[92:95], v[116:119], v[200:207] neg_lo:[1,1,0]
	v_dual_mov_b32 v119, v120 :: v_dual_mov_b32 v120, v122
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[104:107], v188 offset:2048
	ds_load_b128 v[216:219], v188 offset:3072
	ds_load_b128 v[246:249], v169 offset:2048
	v_dual_mov_b32 v115, v17 :: v_dual_mov_b32 v122, v124
	v_mov_b32_e32 v0, v36
	v_dual_mov_b32 v36, v37 :: v_dual_mov_b32 v37, v39
	v_mov_b32_e32 v116, v125
	v_mov_b32_e32 v114, v19
	v_dual_mov_b32 v113, v35 :: v_dual_mov_b32 v124, v129
	v_mov_b32_e32 v35, v162
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v177, v184
	v_cvt_f32_i32_e32 v184, v195
	v_cvt_f32_i32_e32 v195, v205
	v_dual_mov_b32 v118, v123 :: v_dual_mov_b32 v117, v121
	v_mov_b32_e32 v123, v134
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[165:168], v[104:107], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[238:245], v[165:168], v[216:219], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[100:103], v[104:107], v[230:237] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v176, v183
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[108:111], v[246:249], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[238:245], v[108:111], v[96:99], v[238:245] neg_lo:[1,1,0]
	v_mov_b32_e32 v111, v160
	v_cvt_f32_i32_e32 v183, v194
	v_cvt_f32_i32_e32 v194, v204
	v_cvt_f32_i32_e32 v204, v214
	v_cvt_f32_i32_e32 v214, v238
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v238, off, off offset:64
	scratch_load_b32 v160, off, off offset:60
	scratch_load_b32 v125, off, off offset:48
	scratch_load_b32 v17, off, off offset:40
	v_cvt_f32_i32_e32 v205, v215
	v_cvt_f32_i32_e32 v215, v239
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v239, off, off offset:56
	scratch_load_b32 v162, off, off offset:52
	scratch_load_b32 v19, off, off offset:44
	v_wmma_i32_16x16x16_iu8 v[222:229], v[100:103], v[216:219], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[230:237], v[92:95], v[246:249], v[230:237] neg_lo:[1,1,0]
	scratch_load_b32 v246, off, off offset:68 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v216, v240
	scratch_load_b32 v240, off, off offset:36 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v217, v241
	scratch_load_b32 v241, off, off offset:32 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[222:229], v[92:95], v[96:99], v[222:229] neg_lo:[1,1,0]
	v_dual_mov_b32 v107, v159 :: v_dual_mov_b32 v248, v220
	v_mov_b32_e32 v247, v221
	v_mov_b32_e32 v110, v189
	v_mov_b32_e32 v108, v190
	v_cvt_f32_i32_e32 v96, v172
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v172, v179
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v178, v185
	v_cvt_f32_i32_e32 v179, v186
	v_cvt_f32_i32_e32 v180, v187
	v_cvt_f32_i32_e32 v181, v192
	v_cvt_f32_i32_e32 v182, v193
	v_cvt_f32_i32_e32 v185, v196
	v_cvt_f32_i32_e32 v186, v197
	v_cvt_f32_i32_e32 v187, v198
	v_cvt_f32_i32_e32 v188, v199
	v_cvt_f32_i32_e32 v189, v200
	v_cvt_f32_i32_e32 v190, v201
	v_cvt_f32_i32_e32 v192, v202
	v_cvt_f32_i32_e32 v193, v203
	v_cvt_f32_i32_e32 v196, v206
	v_cvt_f32_i32_e32 v197, v207
	v_cvt_f32_i32_e32 v198, v208
	v_cvt_f32_i32_e32 v199, v209
	v_cvt_f32_i32_e32 v200, v210
	v_cvt_f32_i32_e32 v201, v211
	v_cvt_f32_i32_e32 v202, v212
	v_cvt_f32_i32_e32 v203, v213
	v_cvt_f32_i32_e32 v206, v230
	v_dual_mov_b32 v230, v133 :: v_dual_mov_b32 v133, v142
	v_mov_b32_e32 v142, v153
	v_cvt_f32_i32_e32 v207, v231
	v_cvt_f32_i32_e32 v208, v232
	v_cvt_f32_i32_e32 v209, v233
	v_mov_b32_e32 v231, v135
	v_dual_mov_b32 v135, v144 :: v_dual_mov_b32 v144, v155
	v_cvt_f32_i32_e32 v210, v234
	v_mov_b32_e32 v232, v145
	v_cvt_f32_i32_e32 v211, v235
	v_mov_b32_e32 v233, v131
	v_mov_b32_e32 v131, v146
	v_cvt_f32_i32_e32 v212, v236
	v_mov_b32_e32 v236, v152
	v_mov_b32_e32 v234, v136
	v_cvt_f32_i32_e32 v213, v237
	v_mov_b32_e32 v237, v158
	v_mov_b32_e32 v235, v143
	v_cvt_f32_i32_e32 v218, v242
	v_mov_b32_e32 v242, v156
	v_cvt_f32_i32_e32 v219, v243
	v_cvt_f32_i32_e32 v220, v244
	v_dual_mov_b32 v244, v139 :: v_dual_mov_b32 v139, v154
	v_mov_b32_e32 v243, v137
	v_cvt_f32_i32_e32 v221, v245
	v_mov_b32_e32 v245, v147
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
	s_ashr_i32 s1, s35, 31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v88.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v88.h, v148.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s35, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s1, s23
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v39, v38, s1, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v38, v35, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v35, v0, s1, 1
	v_add_lshl_u32 v36, v36, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v37, v37, s1, 1
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_waitcnt lgkmcnt(0)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_mul_f32 v90, v16, v88
	s_clause 0x3
	buffer_load_u16 v39, v39, s[8:11], 0 offen
	buffer_load_u16 v35, v35, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	buffer_load_u16 v37, v37, s[8:11], 0 offen
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v15, v88
	v_mul_f32_e32 v92, v14, v88
	v_mul_f32_e32 v93, v13, v88
	v_mul_f32_e32 v94, v12, v88
	v_mul_f32_e32 v95, v11, v88
	v_mul_f32_e32 v97, v10, v88
	v_mul_f32_e32 v98, v9, v88
	v_mul_f32_e32 v99, v8, v88
	v_mul_f32_e32 v100, v7, v88
	v_mul_f32_e32 v101, v6, v88
	v_mul_f32_e32 v102, v5, v88
	v_mul_f32_e32 v103, v4, v88
	v_mul_f32_e32 v104, v3, v88
	v_mul_f32_e32 v105, v2, v88
	v_mul_f32_e32 v106, v1, v88
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v88.h, v112.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v95, v95, v118, v83
	v_fma_f32 v102, v102, v111, v76
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v90, v123, v80
	v_fma_f32 v91, v91, v122, v87
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v76, v102, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v92, v92, v128, v86
	v_fma_f32 v93, v93, v120, v85
	v_fma_f32 v97, v97, v117, v82
	v_fma_f32 v99, v99, v115, v79
	v_fma_f32 v100, v100, v114, v78
	v_fma_f32 v101, v101, v113, v77
	v_fma_f32 v103, v103, v110, v75
	v_fma_f32 v104, v104, v191, v74
	v_fma_f32 v105, v105, v108, v73
	v_fma_f32 v106, v106, v107, v72
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v108, v15, v88
	v_mul_f32_e32 v109, v14, v88
	v_mul_f32_e32 v110, v13, v88
	v_mul_f32_e32 v112, v11, v88
	v_mul_f32_e32 v114, v9, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v80, v80, v90, s3
	v_cndmask_b32_e64 v87, v87, v91, s3
	v_cndmask_b32_e64 v86, v86, v92, s3
	v_cndmask_b32_e64 v85, v85, v93, s3
	v_cndmask_b32_e64 v83, v83, v95, s3
	v_cndmask_b32_e64 v82, v82, v97, s3
	v_cndmask_b32_e64 v79, v79, v99, s3
	v_cndmask_b32_e64 v78, v78, v100, s3
	v_cndmask_b32_e64 v77, v77, v101, s3
	v_cndmask_b32_e64 v75, v75, v103, s3
	v_cndmask_b32_e64 v74, v74, v104, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v108, v171, v70
	v_fma_f32 v92, v109, v149, v69
	v_fma_f32 v93, v110, v242, v68
	v_fma_f32 v95, v112, v17, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v73, v105, s3
	v_cndmask_b32_e64 v70, v70, v91, s3
	v_cndmask_b32_e64 v69, v69, v92, s3
	v_cndmask_b32_e64 v68, v68, v93, s3
	v_cndmask_b32_e64 v72, v72, v106, s3
	v_cndmask_b32_e64 v66, v66, v95, s3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v89, 1, v241
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s22, s22, s23
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v118, v5, v88 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v94, v119, v84
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v107, v16, v88
	v_mul_f32_e32 v111, v12, v88
	v_mul_f32_e32 v113, v10, v88
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v102, v118, v0, v60
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v115, v8, v88
	v_mul_f32_e32 v117, v6, v88
	v_mul_f32_e32 v119, v4, v88
	v_mul_f32_e32 v145, v3, v88
	v_mul_f32_e32 v146, v2, v88
	v_mul_f32_e32 v147, v1, v88
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v37, 16, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v98, v98, v116, v81
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v116, v7, v88
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v88.h, v130.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v84, v84, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v107, v151, v71
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v81, v81, v98, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v111, v144, v67
	v_fma_f32 v97, v113, v142, v65
	v_fma_f32 v98, v114, v141, v64
	v_fma_f32 v99, v115, v140, v63
	v_fma_f32 v100, v116, v139, v62
	v_fma_f32 v101, v117, v138, v61
	v_fma_f32 v103, v119, v19, v59
	v_fma_f32 v104, v145, v131, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v107, v16, v88
	v_mul_f32_e32 v108, v15, v88
	v_mul_f32_e32 v109, v14, v88
	v_mul_f32_e32 v110, v13, v88
	v_mul_f32_e32 v111, v12, v88
	v_mul_f32_e32 v112, v11, v88
	v_mul_f32_e32 v113, v10, v88
	v_mul_f32_e32 v114, v9, v88
	v_mul_f32_e32 v115, v8, v88
	v_mul_f32_e32 v116, v7, v88
	v_mul_f32_e32 v117, v6, v88
	v_mul_f32_e32 v118, v5, v88
	v_mul_f32_e32 v119, v4, v88
	v_mul_f32_e32 v129, v3, v88
	v_mul_f32_e32 v130, v2, v88
	v_mul_f32_e32 v131, v1, v88
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v88.h, v150.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v116, v231, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v71, v71, v90, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v107, v135, v55
	v_fma_f32 v93, v110, v132, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v13, v88
	v_mul_f32_e32 v12, v12, v88
	v_mul_f32_e32 v7, v7, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v46, v19, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v6, v88
	v_mul_f32_e32 v16, v16, v88
	v_mul_f32_e32 v15, v15, v88
	v_mul_f32_e32 v14, v14, v88
	v_mul_f32_e32 v11, v11, v88
	v_mul_f32_e32 v10, v10, v88
	v_mul_f32_e32 v9, v9, v88
	v_mul_f32_e32 v8, v8, v88
	v_mul_f32_e32 v5, v5, v88
	v_mul_f32_e32 v4, v4, v88
	v_mul_f32_e32 v3, v3, v88
	v_mul_f32_e32 v2, v2, v88
	v_mul_f32_e32 v1, v1, v88
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v90, s3
	v_cndmask_b32_e64 v52, v52, v93, s3
	v_cndmask_b32_e64 v67, v67, v94, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v94, v111, v163, v51
	v_fma_f32 v91, v108, v125, v54
	v_fma_f32 v92, v109, v133, v53
	v_fma_f32 v17, v119, v230, v43
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v94, s3
	v_cndmask_b32_e64 v54, v54, v91, s3
	v_cndmask_b32_e64 v53, v53, v92, s3
	v_cndmask_b32_e64 v17, v43, v17, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v8, v236, v26
	v_fma_f32 v91, v4, v255, v22
	v_fma_f32 v92, v3, v254, v21
	v_fma_f32 v16, v16, v246, v34
	v_fma_f32 v15, v15, v245, v33
	v_fma_f32 v11, v11, v239, v29
	v_fma_f32 v10, v10, v238, v28
	v_fma_f32 v9, v9, v237, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v92, s3
	v_cndmask_b32_e64 v34, v34, v16, s3
	v_cndmask_b32_e64 v33, v33, v15, s3
	v_cndmask_b32_e64 v29, v29, v11, s3
	v_cndmask_b32_e64 v28, v28, v10, s3
	v_cndmask_b32_e64 v27, v27, v9, s3
	v_cndmask_b32_e64 v64, v64, v98, s3
	v_cndmask_b32_e64 v63, v63, v99, s3
	v_cndmask_b32_e64 v60, v60, v102, s3
	v_cndmask_b32_e64 v58, v58, v104, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v99, v115, v162, v47
	v_fma_f32 v102, v129, v234, v42
	v_fma_f32 v104, v131, v247, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v65, v97, s3
	v_cndmask_b32_e64 v62, v62, v100, s3
	v_cndmask_b32_e64 v61, v61, v101, s3
	v_cndmask_b32_e64 v59, v59, v103, s3
	v_cndmask_b32_e64 v42, v42, v102, s3
	v_cndmask_b32_e64 v40, v40, v104, s3
	v_cndmask_b32_e64 v26, v26, v43, s3
	v_cndmask_b32_e64 v47, v47, v99, s3
	v_cndmask_b32_e64 v22, v22, v91, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v13, v13, v0, v31
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v13, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v0, v30
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v12, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v7, v0, v25
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v88, v6, v0, v24
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v88, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v90, v5, v0, v23
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v90, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v93, v2, v0, v20
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v93, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v94, v1, v0, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v1, 16, v38
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v38, 16, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v94, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v124, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v161 offset:40960
	ds_load_b128 v[5:8], v161 offset:40976
	ds_load_b128 v[9:12], v161 offset:41472
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v39, v1, v38
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v92, v7, v38
	v_mul_f32_e32 v108, v7, v35
	v_mul_f32_e32 v123, v7, v36
	v_mul_f32_e32 v7, v7, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v244, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v43, v2, v38
	v_mul_f32_e32 v46, v3, v38
	v_dual_mul_f32 v93, v8, v38 :: v_dual_mul_f32 v102, v1, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v14, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[13:16], v161 offset:41488
	v_mul_f32_e32 v104, v3, v35
	v_mul_f32_e32 v109, v8, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v105, v146, v232, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v119, v3, v36
	v_mul_f32_e32 v124, v8, v36
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v128, v12, v36 :: v_dual_mul_f32 v3, v3, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v101, v118, v235, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v97, v113, v127, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v113, v12, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v95, v112, v243, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v105, s3
	v_cndmask_b32_e64 v44, v44, v101, s3
	v_cndmask_b32_e64 v49, v49, v97, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v88, v4, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v95, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v90, v5, v38
	v_mul_f32_e32 v91, v6, v38
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v115, v14, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v98, v114, v126, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v116, v15, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v106, v147, v164, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v94, v9, v38
	v_mul_f32_e32 v95, v10, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v98, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v98, v12, v38
	v_mul_f32_e32 v12, v12, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v100, v117, v160, v45
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v117, v1, v36
	v_mul_f32_e32 v1, v1, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v103, v130, v233, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v106, s3
	v_cndmask_b32_e64 v45, v45, v100, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v97, v11, v38
	v_mul_f32_e32 v99, v13, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v103, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v100, v14, v38
	v_mul_f32_e32 v101, v15, v38
	v_dual_mul_f32 v38, v16, v38 :: v_dual_mul_f32 v103, v2, v35
	v_mul_f32_e32 v105, v4, v35
	v_mul_f32_e32 v106, v5, v35
	v_mul_f32_e32 v107, v6, v35
	v_mul_f32_e32 v110, v9, v35
	v_mul_f32_e32 v111, v10, v35
	v_mul_f32_e32 v112, v11, v35
	v_mul_f32_e32 v114, v13, v35
	v_dual_mul_f32 v35, v16, v35 :: v_dual_mul_f32 v118, v2, v36
	v_mul_f32_e32 v120, v4, v36
	v_mul_f32_e32 v121, v5, v36
	v_mul_f32_e32 v122, v6, v36
	v_mul_f32_e32 v125, v9, v36
	v_mul_f32_e32 v126, v10, v36
	v_mul_f32_e32 v127, v11, v36
	v_mul_f32_e32 v129, v13, v36
	v_mul_f32_e32 v130, v14, v36
	v_mul_f32_e32 v131, v15, v36
	v_mul_f32_e32 v36, v16, v36
	v_mul_f32_e32 v2, v2, v37
	v_mul_f32_e32 v4, v4, v37
	v_mul_f32_e32 v5, v5, v37
	v_mul_f32_e32 v6, v6, v37
	v_mul_f32_e32 v9, v9, v37
	v_mul_f32_e32 v10, v10, v37
	v_mul_f32_e32 v11, v11, v37
	v_mul_f32_e32 v13, v13, v37
	v_mul_f32_e32 v14, v14, v37
	v_mul_f32_e32 v15, v15, v37
	v_mul_f32_e32 v16, v16, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v39, v96, v18
	v_fma_f32 v39, v43, v165, v20
	v_fma_f32 v43, v46, v166, v21
	v_fma_f32 v46, v88, v167, v22
	v_fma_f32 v88, v90, v168, v23
	v_fma_f32 v90, v91, v169, v24
	v_fma_f32 v91, v92, v170, v25
	v_fma_f32 v92, v93, v172, v26
	v_fma_f32 v93, v94, v173, v27
	v_fma_f32 v94, v95, v174, v28
	v_fma_f32 v95, v97, v175, v29
	v_fma_f32 v96, v98, v176, v30
	v_fma_f32 v97, v99, v177, v31
	v_fma_f32 v98, v100, v178, v32
	v_fma_f32 v99, v101, v179, v33
	v_fma_f32 v100, v102, v181, v40
	v_fma_f32 v101, v103, v182, v41
	v_fma_f32 v102, v104, v183, v42
	v_fma_f32 v103, v105, v184, v17
	v_fma_f32 v104, v106, v185, v44
	v_fma_f32 v105, v107, v186, v45
	v_fma_f32 v106, v108, v187, v19
	v_fma_f32 v107, v109, v188, v47
	v_fma_f32 v108, v110, v189, v48
	v_fma_f32 v109, v111, v190, v49
	v_fma_f32 v110, v112, v192, v50
	v_fma_f32 v111, v113, v193, v51
	v_fma_f32 v112, v114, v194, v52
	v_fma_f32 v113, v115, v195, v53
	v_fma_f32 v114, v116, v196, v54
	v_fma_f32 v115, v117, v198, v56
	v_fma_f32 v116, v118, v199, v57
	v_fma_f32 v117, v119, v200, v58
	v_fma_f32 v118, v120, v201, v59
	v_fma_f32 v119, v121, v202, v60
	v_fma_f32 v120, v122, v203, v61
	v_fma_f32 v121, v123, v204, v62
	v_fma_f32 v122, v124, v205, v63
	v_fma_f32 v123, v125, v206, v64
	v_fma_f32 v124, v126, v207, v65
	v_fma_f32 v125, v127, v208, v66
	v_fma_f32 v36, v36, v213, v71
	v_fma_f32 v1, v1, v214, v72
	v_fma_f32 v2, v2, v215, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v37, s2
	v_cndmask_b32_e64 v20, v20, v39, s2
	v_cndmask_b32_e64 v21, v21, v43, s2
	v_cndmask_b32_e64 v22, v22, v46, s2
	v_cndmask_b32_e64 v37, v40, v100, s2
	v_cndmask_b32_e64 v40, v44, v104, s2
	v_cndmask_b32_e64 v43, v48, v108, s2
	v_cndmask_b32_e64 v44, v49, v109, s2
	v_cndmask_b32_e64 v48, v53, v113, s2
	v_cndmask_b32_e64 v49, v54, v114, s2
	v_cndmask_b32_e64 v53, v59, v118, s2
	v_cndmask_b32_e64 v54, v60, v119, s2
	v_cndmask_b32_e64 v59, v65, v124, s2
	v_cndmask_b32_e64 v60, v66, v125, s2
	v_cndmask_b32_e64 v36, v71, v36, s2
	v_cndmask_b32_e64 v65, v72, v1, s2
	v_cndmask_b32_e64 v66, v73, v2, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v71, v18, 16, 1
	v_bfe_u32 v72, v20, 16, 1
	v_bfe_u32 v73, v21, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v88, s2
	v_cndmask_b32_e64 v24, v24, v90, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v71, v18, v71, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v18, v20, v72, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v20, v21, v73, 0x7fff
	v_cmp_o_f32_e64 s1, v21, v21
	v_bfe_u32 v21, v22, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v91, s2
	v_cndmask_b32_e64 v26, v26, v92, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.l, 0x7fff, v71.h, vcc_lo
	v_bfe_u32 v71, v23, 16, 1
	v_bfe_u32 v72, v24, 16, 1
	v_add3_u32 v21, v22, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v93, s2
	v_cndmask_b32_e64 v28, v28, v94, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s1
	v_add3_u32 v22, v23, v71, 0x7fff
	v_cmp_o_f32_e64 s0, v23, v23
	v_add3_u32 v23, v24, v72, 0x7fff
	v_cmp_o_f32_e64 s1, v24, v24
	v_cndmask_b16 v20.h, 0x7fff, v21.h, vcc_lo
	v_bfe_u32 v21, v25, 16, 1
	v_bfe_u32 v24, v26, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v95, s2
	v_cndmask_b32_e64 v30, v30, v96, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s0
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s1
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v25, v21, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_bfe_u32 v25, v28, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v180, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v97, s2
	v_cndmask_b32_e64 v32, v32, v98, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, vcc_lo
	v_cndmask_b16 v21.h, 0x7fff, v24.h, s0
	v_bfe_u32 v24, v29, 16, 1
	v_bfe_u32 v26, v30, 16, 1
	v_add3_u32 v25, v28, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v99, s2
	v_cndmask_b32_e64 v34, v34, v38, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s1
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s0, v29, v29
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v30, v30
	v_cndmask_b16 v23.h, 0x7fff, v25.h, vcc_lo
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v27, v32, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v41, v101, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s1
	v_bfe_u32 v26, v33, 16, 1
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	v_add3_u32 v27, v32, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	v_bfe_u32 v28, v34, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v42, v102, s2
	v_cndmask_b32_e64 v17, v17, v103, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v33, v26, 0x7fff
	v_cmp_o_f32_e64 s1, v33, v33
	v_cndmask_b16 v25.l, 0x7fff, v25.h, vcc_lo
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s0
	v_bfe_u32 v27, v37, 16, 1
	v_bfe_u32 v29, v38, 16, 1
	v_add3_u32 v28, v34, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s1
	v_add3_u32 v27, v37, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v37, v37
	v_add3_u32 v29, v38, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v38, v38
	v_cndmask_b16 v26.h, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v28, v39, 16, 1
	v_bfe_u32 v30, v17, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v45, v105, s2
	v_cndmask_b32_e64 v19, v19, v106, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s0
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s1
	v_bfe_u32 v29, v40, 16, 1
	v_add3_u32 v28, v39, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	v_add3_u32 v30, v17, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v47, v107, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v17, v40, v29, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v29, v41, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v42, 16, 1
	v_cmp_o_f32_e64 s1, v40, v40
	v_add3_u32 v29, v41, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v30, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v19, v19
	v_add3_u32 v19, v42, v31, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v50, v110, s2
	v_cndmask_b32_e64 v46, v51, v111, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, vcc_lo
	v_bfe_u32 v29, v43, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v44, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v197, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v52, v112, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v42, v42
	v_bfe_u32 v31, v45, 16, 1
	v_add3_u32 v29, v43, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_add3_u32 v30, v44, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v44, v44
	v_bfe_u32 v32, v46, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v55, v35, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s1
	v_add3_u32 v31, v45, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_cndmask_b16 v29.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s0
	v_bfe_u32 v30, v47, 16, 1
	v_bfe_u32 v33, v48, 16, 1
	v_add3_u32 v32, v46, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v56, v115, s2
	v_cndmask_b32_e64 v51, v57, v116, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_add3_u32 v30, v47, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v47, v47
	v_add3_u32 v33, v48, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v48, v48
	v_cndmask_b16 v31.h, 0x7fff, v32.h, vcc_lo
	v_bfe_u32 v32, v49, 16, 1
	v_bfe_u32 v34, v35, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v58, v117, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v33.h, s1
	v_bfe_u32 v33, v50, 16, 1
	v_add3_u32 v32, v49, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_add3_u32 v34, v35, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_bfe_u32 v35, v51, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v61, v120, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v33, v50, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_cndmask_b16 v32.l, 0x7fff, v32.h, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s0
	v_bfe_u32 v34, v52, 16, 1
	v_bfe_u32 v37, v53, 16, 1
	v_add3_u32 v35, v51, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v62, v121, s2
	v_cndmask_b32_e64 v57, v63, v122, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s1
	v_add3_u32 v34, v52, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v52, v52
	v_add3_u32 v37, v53, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v33.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v54, 16, 1
	v_bfe_u32 v38, v55, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v126, v128, v209, v67
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v64, v123, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s0
	v_cndmask_b16 v34.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v56, 16, 1
	v_add3_u32 v35, v54, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_add3_u32 v38, v55, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_bfe_u32 v39, v57, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v127, v129, v210, v68
	v_fma_f32 v128, v130, v211, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v67, v126, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v56, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v56, v56
	v_cndmask_b16 v35.l, 0x7fff, v35.h, vcc_lo
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s0
	v_bfe_u32 v38, v58, 16, 1
	v_bfe_u32 v40, v59, 16, 1
	v_add3_u32 v39, v57, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v129, v131, v212, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v68, v127, s2
	v_cndmask_b32_e64 v63, v69, v128, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s1
	v_add3_u32 v38, v58, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_add3_u32 v40, v59, v40, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cndmask_b16 v37.h, 0x7fff, v39.h, vcc_lo
	v_bfe_u32 v39, v60, 16, 1
	v_bfe_u32 v41, v61, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v70, v129, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s0
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s1
	v_bfe_u32 v40, v62, 16, 1
	v_add3_u32 v39, v60, v39, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_add3_u32 v41, v61, v41, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	v_bfe_u32 v42, v63, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v216, v74
	v_fma_f32 v4, v4, v217, v75
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v40, v62, v40, 0x7fff
	v_cmp_o_f32_e64 s1, v62, v62
	v_cndmask_b16 v39.l, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s0
	v_bfe_u32 v41, v64, 16, 1
	v_bfe_u32 v43, v36, 16, 1
	v_add3_u32 v42, v63, v42, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v218, v76
	v_fma_f32 v6, v6, v219, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v74, v3, s2
	v_cndmask_b32_e64 v68, v75, v4, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s1
	v_add3_u32 v41, v64, v41, 0x7fff
	v_cmp_o_f32_e64 s0, v64, v64
	v_add3_u32 v43, v36, v43, 0x7fff
	v_cmp_o_f32_e64 s1, v36, v36
	v_cndmask_b16 v40.h, 0x7fff, v42.h, vcc_lo
	v_bfe_u32 v36, v65, 16, 1
	v_bfe_u32 v42, v66, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v220, v78
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v76, v5, s2
	v_cndmask_b32_e64 v70, v77, v6, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s0
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s1
	v_bfe_u32 v43, v67, 16, 1
	v_add3_u32 v36, v65, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_add3_u32 v42, v66, v42, 0x7fff
	v_cmp_o_f32_e64 s0, v66, v66
	v_bfe_u32 v44, v68, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v221, v79
	v_fma_f32 v9, v9, v222, v81
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v78, v7, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v67, v43, 0x7fff
	v_cmp_o_f32_e64 s1, v67, v67
	v_cndmask_b16 v36.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v42.h, s0
	v_bfe_u32 v42, v69, 16, 1
	v_bfe_u32 v45, v70, 16, 1
	v_add3_u32 v44, v68, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v79, v8, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v223, v82
	v_fma_f32 v11, v11, v224, v83
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v81, v9, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s1
	v_add3_u32 v42, v69, v42, 0x7fff
	v_cmp_o_f32_e64 s0, v69, v69
	v_add3_u32 v45, v70, v45, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_cndmask_b16 v43.h, 0x7fff, v44.h, vcc_lo
	v_bfe_u32 v44, v7, 16, 1
	v_bfe_u32 v46, v8, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v225, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v82, v10, s2
	v_cndmask_b32_e64 v11, v83, v11, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s0
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s1
	v_bfe_u32 v45, v9, 16, 1
	v_add3_u32 v44, v7, v44, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_add3_u32 v7, v8, v46, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v226, v85
	v_fma_f32 v14, v14, v227, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v84, v12, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v8, v8
	v_add3_u32 v8, v9, v45, 0x7fff
	v_cmp_o_f32_e64 s1, v9, v9
	v_cndmask_b16 v7.l, 0x7fff, v44.h, vcc_lo
	v_bfe_u32 v9, v10, 16, 1
	v_bfe_u32 v44, v11, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v228, v87
	v_fma_f32 v16, v16, v229, v80
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v85, v13, s2
	v_cndmask_b32_e64 v14, v86, v14, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s0
	v_bfe_u32 v45, v12, 16, 1
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v10, v11, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v11, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v87, v15, s2
	v_cndmask_b32_e64 v16, v80, v16, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s1
	v_add3_u32 v11, v12, v45, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s0
	v_bfe_u32 v10, v14, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s1
	v_add3_u32 v11, v13, v12, 0x7fff
	v_bfe_u32 v12, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_add3_u32 v10, v14, v10, 0x7fff
	v_bfe_u32 v13, v16, 16, 1
	v_cmp_o_f32_e64 s0, v14, v14
	v_and_b32_e32 v0, 16, v248
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s1
	v_cndmask_b16 v0.h, 0x7fff, v13.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b32_e32 v11, v22, v18, vcc_lo
	v_dual_cndmask_b32 v12, v18, v22 :: v_dual_cndmask_b32 v13, v21, v20
	v_dual_cndmask_b32 v14, v20, v21 :: v_dual_cndmask_b32 v15, v25, v23
	v_cndmask_b32_e32 v16, v23, v25, vcc_lo
	v_cndmask_b32_e32 v18, v26, v24, vcc_lo
	v_cndmask_b32_e32 v20, v24, v26, vcc_lo
	v_dual_cndmask_b32 v25, v32, v31 :: v_dual_cndmask_b32 v26, v31, v32
	v_dual_cndmask_b32 v31, v40, v38 :: v_dual_cndmask_b32 v32, v38, v40
	v_cndmask_b32_e32 v38, v10, v8, vcc_lo
	v_cndmask_b32_e32 v8, v8, v10, vcc_lo
	v_mov_b32_e32 v10, 0x5410
	v_dual_mov_b32 v40, 0x7632 :: v_dual_cndmask_b32 v21, v17, v27
	v_cndmask_b32_e32 v17, v27, v17, vcc_lo
	v_dual_cndmask_b32 v22, v19, v28 :: v_dual_cndmask_b32 v19, v28, v19
	v_dual_cndmask_b32 v23, v30, v29 :: v_dual_cndmask_b32 v24, v29, v30
	v_dual_cndmask_b32 v27, v35, v33 :: v_dual_cndmask_b32 v28, v33, v35
	v_dual_cndmask_b32 v29, v37, v34 :: v_dual_cndmask_b32 v30, v34, v37
	v_dual_cndmask_b32 v33, v41, v39 :: v_dual_cndmask_b32 v34, v39, v41
	v_dual_cndmask_b32 v39, v0, v9 :: v_dual_cndmask_b32 v0, v9, v0
	v_permlanex16_b32 v9, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v10, 0x1054, v10, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v40, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s23, v240
	v_add3_u32 v4, s22, s33, v89
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v35, v42, v36, vcc_lo
	v_lshl_or_b32 v10, v10, 8, v10
	v_lshl_or_b32 v12, v12, 8, v12
	v_dual_cndmask_b32 v36, v36, v42 :: v_dual_cndmask_b32 v37, v7, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v7, v43, v7 :: v_dual_and_b32 v10, 0x540054, v10
	v_and_b32_e32 v12, 0x760076, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mad_u64_u32 v[1:2], null, s23, 48, v[3:4]
	v_add_nc_u32_e32 v2, 0x80, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v10, v10, 4, v10
	v_lshl_or_b32 v12, v12, 4, v12
	v_permlanex16_b32 v14, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x5040504, v10
	v_and_b32_e32 v41, 0x7060706, v12
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v6, s23, 4, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_lshl_add_u32 v5, s23, 5, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v7, v9, v11, v40
	v_perm_b32 v8, v9, v11, v41
	v_perm_b32 v9, v14, v13, v40
	v_perm_b32 v10, v14, v13, v41
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v3, v4, v3, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_perm_b32 v11, v16, v15, v40
	v_perm_b32 v12, v16, v15, v41
	v_perm_b32 v13, v20, v18, v40
	v_perm_b32 v14, v20, v18, v41
	v_perm_b32 v15, v17, v21, v40
	v_perm_b32 v16, v17, v21, v41
	v_perm_b32 v17, v19, v22, v40
	v_perm_b32 v18, v19, v22, v41
	v_perm_b32 v19, v24, v23, v40
	v_perm_b32 v20, v24, v23, v41
	v_perm_b32 v21, v26, v25, v40
	v_perm_b32 v22, v26, v25, v41
	v_perm_b32 v23, v28, v27, v40
	v_perm_b32 v24, v28, v27, v41
	v_perm_b32 v25, v30, v29, v40
	v_perm_b32 v26, v30, v29, v41
	v_perm_b32 v27, v32, v31, v40
	v_perm_b32 v28, v32, v31, v41
	v_perm_b32 v29, v34, v33, v40
	v_perm_b32 v30, v34, v33, v41
	v_perm_b32 v31, v36, v35, v40
	v_perm_b32 v32, v36, v35, v41
	v_perm_b32 v33, v42, v37, v40
	v_perm_b32 v34, v42, v37, v41
	v_perm_b32 v35, v43, v38, v40
	v_perm_b32 v37, v0, v39, v40
	v_add_lshl_u32 v40, v4, v6, 1
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	v_perm_b32 v36, v43, v38, v41
	v_perm_b32 v38, v0, v39, v41
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v3, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v3, s[20:23], 0 offen offset:256
	buffer_store_b128 v[15:18], v40, s[20:23], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	v_add_lshl_u32 v5, v2, v5, 1
	v_add_lshl_u32 v4, v4, v1, 1
	v_add_lshl_u32 v1, v2, v1, 1
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 76
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
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 76
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13320
; TotalNumSgprs: 46
; NumVgprs: 256
; ScratchSize: 76
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 46
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 76
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 26
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
