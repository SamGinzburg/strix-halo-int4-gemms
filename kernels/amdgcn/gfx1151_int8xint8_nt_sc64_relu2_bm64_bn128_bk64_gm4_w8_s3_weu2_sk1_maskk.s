	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v4, 4, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v9, 48, v4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s8, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s16, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_sub_i32 s11, 0, s16
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 2, v0
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[10:11], null, s31, v1, v[9:10]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s10
	s_mul_hi_u32 s4, s10, s11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_lshl_add_u32 v72, s31, 6, v10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_add_i32 s10, s10, s4
	s_mov_b32 s11, 0x31027000
	s_mul_hi_u32 s4, s5, s10
	s_xor_b32 s10, s2, s7
	s_mul_i32 s17, s4, s16
	s_ashr_i32 s18, s10, 31
	s_sub_i32 s5, s5, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s19, s5, s16
	s_cmp_ge_u32 s5, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s5, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s17, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s17, s31, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s18
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s30, v9
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s5, s3, s7
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s17, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s6
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s3, 7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s5, s17, s4
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mad_u64_u32 v[11:12], null, s33, s31, v[10:11]
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s17, 63
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s45, s26, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s45, s30
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s30, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s17, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v1, s2, v10
	v_add_nc_u32_e32 v3, s2, v72
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s30, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s34, v9
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v6, 64, v1
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_mov_b32 s39, s11
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[25:28], v2, s[8:11], 0 offen
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s4, s31, v5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s34, v11
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v7, 64, v3
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_mov_b32 s16, 0
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_cmpk_gt_i32 s17, 0xbf
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_dual_cndmask_b32 v2, 0x80000000, v5 :: v_dual_cndmask_b32 v5, 0x80000000, v6
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[29:32], v1, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v3, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[37:40], v2, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[41:44], v5, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v6, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v5, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v8, 1, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v7
	v_lshlrev_b32_e32 v1, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v12, v5, 16, v2
	v_lshlrev_b32_e32 v2, 6, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v5, v6, 1, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v73, v4, v7
	v_lshlrev_b32_e32 v3, 5, v3
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v13, 32, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 2, v5
	v_or_b32_e32 v14, 4, v5
	v_or_b32_e32 v15, 6, v5
	v_or_b32_e32 v16, 8, v5
	v_or_b32_e32 v17, 10, v5
	v_or_b32_e32 v18, 12, v5
	v_or_b32_e32 v19, 14, v5
	v_or_b32_e32 v20, 64, v5
	v_or_b32_e32 v21, 0x42, v5
	v_or_b32_e32 v22, 0x44, v5
	v_or_b32_e32 v23, 0x46, v5
	v_or_b32_e32 v24, 0x48, v5
	v_or_b32_e32 v4, 0x4a, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, 0, v73
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 0x4c, v5
	v_or_b32_e32 v7, 0x4e, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v49, v[25:28] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v49, v[29:32]
	s_waitcnt vmcnt(3)
	ds_store_b128 v49, v[33:36] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v49, v[37:40] offset:20480
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v49, v[41:44] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v49, v[45:48] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v25, 48, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_or_b32 v64, 0x430, v1, v2
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_or3_b32 v68, v3, v25, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v65, 16, v64
	v_xor_b32_e32 v67, 32, v64
	v_xor_b32_e32 v66, 48, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v69, 16, v68
	v_xor_b32_e32 v70, 32, v68
	v_xor_b32_e32 v71, 48, v68
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
.LBB0_3:                                ; %Flow43
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v25, s33, v12
	v_or_b32_e32 v26, s33, v13
	s_ashr_i32 s1, s5, 6
	v_or_b32_e32 v61, s26, v5
	v_or_b32_e32 v60, s26, v8
	v_mul_lo_u32 v62, v25, s1
	v_mul_lo_u32 v63, v26, s1
	v_or_b32_e32 v59, s26, v14
	v_or_b32_e32 v58, s26, v15
	v_or_b32_e32 v57, s26, v16
	v_or_b32_e32 v56, s26, v17
	v_or_b32_e32 v55, s26, v18
	v_or_b32_e32 v54, s26, v19
	v_or_b32_e32 v53, s26, v20
	v_or_b32_e32 v51, s26, v21
	v_or_b32_e32 v48, s26, v22
	v_or_b32_e32 v33, s26, v23
	v_or_b32_e32 v31, s26, v24
	v_or_b32_e32 v35, s26, v4
	v_or_b32_e32 v32, s26, v6
	v_or_b32_e32 v30, s26, v7
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 48, v1
	v_and_or_b32 v64, 0x430, v1, v2
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v68, v3, v4, v2
	v_mov_b32_e32 v1, s16
	v_xor_b32_e32 v65, 16, v64
	v_xor_b32_e32 v67, 32, v64
	v_xor_b32_e32 v66, 48, v64
	v_xor_b32_e32 v69, 16, v68
	v_xor_b32_e32 v70, 32, v68
	v_xor_b32_e32 v71, 48, v68
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v52, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s46, s1, 3
	s_add_i32 s15, s34, 64
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s35, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s46, s46, -3
	s_mov_b32 s47, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s18, s17, 6
	s_mov_b32 s0, s30
	s_mov_b32 s30, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s15, s18
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v74, s34, v9
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s18, s18, 26
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v75, s34, v11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s18
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s19, s34, s45
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v74
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s18, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v74, 0x80000000, v75, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v75, v62, s0, 1
	v_add_lshl_u32 v76, v63, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v77, v61, s18, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v78, v60, s18, 1
	v_add_lshl_u32 v79, v59, s18, 1
	v_add_lshl_u32 v80, v58, s18, 1
	v_add_lshl_u32 v81, v57, s18, 1
	v_add_lshl_u32 v82, v56, s18, 1
	v_add_lshl_u32 v83, v55, s18, 1
	v_add_lshl_u32 v84, v54, s18, 1
	v_add_lshl_u32 v85, v53, s18, 1
	v_add_lshl_u32 v86, v51, s18, 1
	v_add_lshl_u32 v87, v48, s18, 1
	v_add_lshl_u32 v88, v33, s18, 1
	v_add_lshl_u32 v89, v31, s18, 1
	v_add_lshl_u32 v90, v35, s18, 1
	v_add_lshl_u32 v91, v32, s18, 1
	v_add_lshl_u32 v92, v30, s18, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[106:109], v74, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v74, 0x80000000, v75, s0
	v_cndmask_b32_e64 v75, 0x80000000, v76, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v76, 0x80000000, v77, s0
	v_cndmask_b32_e64 v77, 0x80000000, v78, s0
	v_cndmask_b32_e64 v78, 0x80000000, v79, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v79, 0x80000000, v80, s0
	v_cndmask_b32_e64 v80, 0x80000000, v81, s0
	v_cndmask_b32_e64 v81, 0x80000000, v82, s0
	v_cndmask_b32_e64 v82, 0x80000000, v83, s0
	v_cndmask_b32_e64 v83, 0x80000000, v84, s0
	v_cndmask_b32_e64 v84, 0x80000000, v85, s0
	v_cndmask_b32_e64 v85, 0x80000000, v86, s0
	v_cndmask_b32_e64 v86, 0x80000000, v87, s0
	v_cndmask_b32_e64 v87, 0x80000000, v88, s0
	v_cndmask_b32_e64 v88, 0x80000000, v89, s0
	v_cndmask_b32_e64 v89, 0x80000000, v90, s0
	v_cndmask_b32_e64 v90, 0x80000000, v91, s0
	v_cndmask_b32_e64 v91, 0x80000000, v92, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v174, v74, s[4:7], 0 offen
	buffer_load_u16 v175, v75, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v176, v76, s[40:43], 0 offen
	buffer_load_u16 v177, v77, s[40:43], 0 offen
	buffer_load_u16 v178, v78, s[40:43], 0 offen
	buffer_load_u16 v179, v79, s[40:43], 0 offen
	buffer_load_u16 v180, v80, s[40:43], 0 offen
	buffer_load_u16 v181, v81, s[40:43], 0 offen
	buffer_load_u16 v182, v82, s[40:43], 0 offen
	buffer_load_u16 v183, v83, s[40:43], 0 offen
	buffer_load_u16 v184, v84, s[40:43], 0 offen
	buffer_load_u16 v185, v85, s[40:43], 0 offen
	buffer_load_u16 v186, v86, s[40:43], 0 offen
	buffer_load_u16 v187, v87, s[40:43], 0 offen
	buffer_load_u16 v188, v88, s[40:43], 0 offen
	buffer_load_u16 v189, v89, s[40:43], 0 offen
	buffer_load_u16 v190, v90, s[40:43], 0 offen
	buffer_load_u16 v191, v91, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v74, s19, v10
	v_add_nc_u32_e32 v75, s19, v72
	s_mov_b32 s0, s14
	s_mov_b32 s18, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v76, s0, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	s_clause 0x1
	buffer_load_b128 v[110:113], v74, s[36:39], 0 offen
	buffer_load_b128 v[114:117], v75, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v74, s0, v64
	v_add_nc_u32_e32 v75, s0, v65
	v_add_nc_u32_e32 v77, s0, v66
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v78, s18, v68
	v_add_nc_u32_e32 v79, s18, v69
	v_add_nc_u32_e32 v80, s18, v70
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[90:93], v74
	ds_load_b128 v[118:121], v74 offset:2048
	ds_load_b128 v[122:125], v75
	ds_load_b128 v[126:129], v75 offset:2048
	ds_load_b128 v[130:133], v76
	ds_load_b128 v[134:137], v76 offset:2048
	ds_load_b128 v[138:141], v77
	ds_load_b128 v[142:145], v77 offset:2048
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[98:101], v78
	ds_load_b128 v[146:149], v78 offset:4096
	ds_load_b128 v[150:153], v79
	ds_load_b128 v[154:157], v79 offset:4096
	ds_load_b128 v[158:161], v80
	ds_load_b128 v[162:165], v80 offset:4096
	v_add_nc_u32_e32 v81, s18, v71
	ds_load_b128 v[166:169], v81
	ds_load_b128 v[170:173], v81 offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s0, s47, 1
	s_mov_b32 s16, s44
	s_cmp_lt_i32 s0, 2
	s_mov_b32 s14, s35
	s_cselect_b32 s47, s0, 0
	s_add_i32 s0, s17, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s18, s47, 12
	s_waitcnt lgkmcnt(0)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[98:101], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[146:149], v[90:93], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[98:101], v[118:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[146:149], v[118:121], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[74:81], v[150:153], v[122:125], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[150:153], v[126:129], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[154:157], v[122:125], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[98:105], v[154:157], v[126:129], v[98:105] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s18, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[158:161], v[130:133], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[158:161], v[134:137], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[162:165], v[130:133], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[162:165], v[134:137], v[98:105] neg_lo:[1,1,0]
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s44, s19, s18
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[166:169], v[138:141], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[166:169], v[142:145], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[170:173], v[138:141], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[98:105], v[170:173], v[142:145], v[98:105] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s35, s19, 0x4000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s17, s46
	s_mov_b32 s17, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v121, 16, v177
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v135, 16, v191
	v_lshlrev_b32_e32 v134, 16, v190
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v119, 16, v175
	v_lshlrev_b32_e32 v118, 16, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v137, v118, v121
	v_mul_f32_e32 v121, v119, v121
	v_dual_mul_f32 v150, v118, v134 :: v_dual_lshlrev_b32 v125, 16, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v15, v137, v75 :: v_dual_lshlrev_b32 v124, 16, v180
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v118, v125
	v_mul_f32_e32 v125, v119, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v140, v118, v124 :: v_dual_lshlrev_b32 v129, 16, v185
	v_mul_f32_e32 v124, v119, v124
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v128, 16, v184
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v134, v119, v134 :: v_dual_fmac_f32 v19, v141, v79
	v_mul_f32_e32 v145, v118, v129
	v_mul_f32_e32 v129, v119, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v144, v118, v128 :: v_dual_lshlrev_b32 v133, 16, v189
	v_mul_f32_e32 v128, v119, v128
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v120, 16, v176
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v149, v118, v133 :: v_dual_lshlrev_b32 v132, 16, v188
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v123, 16, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v133, v119, v133 :: v_dual_mul_f32 v136, v118, v120
	v_mul_f32_e32 v120, v119, v120
	v_dual_mul_f32 v139, v118, v123 :: v_dual_lshlrev_b32 v122, 16, v178
	v_mul_f32_e32 v123, v119, v123
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v127, 16, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v148, v118, v132 :: v_dual_add_nc_u32 v193, s44, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v138, v118, v122
	v_mul_f32_e32 v122, v119, v122
	v_dual_mul_f32 v143, v118, v127 :: v_dual_lshlrev_b32 v126, 16, v182
	v_mul_f32_e32 v127, v119, v127
	v_dual_mul_f32 v132, v119, v132 :: v_dual_lshlrev_b32 v131, 16, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v142, v118, v126
	v_mul_f32_e32 v126, v119, v126
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v130, 16, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v147, v118, v131 :: v_dual_add_nc_u32 v192, s19, v73
	v_dual_mul_f32 v131, v119, v131 :: v_dual_fmac_f32 v14, v136, v74
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v17, v139, v77 :: v_dual_mul_f32 v146, v118, v130
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v130, v119, v130
	v_mul_f32_e32 v118, v118, v135
	v_dual_mul_f32 v119, v119, v135 :: v_dual_fmac_f32 v16, v138, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v21, v143, v81 :: v_dual_fmac_f32 v18, v140, v78
	v_dual_fmac_f32 v23, v145, v83 :: v_dual_fmac_f32 v20, v142, v80
	v_dual_fmac_f32 v25, v147, v85 :: v_dual_fmac_f32 v22, v144, v82
	v_dual_fmac_f32 v27, v149, v87 :: v_dual_fmac_f32 v24, v146, v84
	v_fmac_f32_e32 v39, v124, v94
	v_dual_fmac_f32 v26, v148, v86 :: v_dual_fmac_f32 v29, v118, v89
	v_dual_fmac_f32 v28, v150, v88 :: v_dual_fmac_f32 v45, v129, v99
	v_dual_fmac_f32 v34, v120, v90 :: v_dual_fmac_f32 v37, v122, v92
	v_dual_fmac_f32 v36, v121, v91 :: v_dual_fmac_f32 v41, v126, v96
	v_dual_fmac_f32 v38, v123, v93 :: v_dual_fmac_f32 v49, v132, v102
	v_dual_fmac_f32 v40, v125, v95 :: v_dual_fmac_f32 v47, v131, v101
	v_fmac_f32_e32 v42, v127, v97
	v_dual_fmac_f32 v44, v128, v98 :: v_dual_fmac_f32 v43, v119, v105
	v_fmac_f32_e32 v46, v130, v100
	v_fmac_f32_e32 v50, v133, v103
	v_fmac_f32_e32 v52, v134, v104
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v192, v[106:109] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v193, v[110:113]
	s_waitcnt vmcnt(0)
	ds_store_b128 v193, v[114:117] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v14, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s35, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_mov_b32_e32 v93, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v93, s11 :: v_dual_add_nc_u32 v6, s16, v70
	v_dual_mov_b32 v91, s9 :: v_dual_add_nc_u32 v10, s16, v69
	v_dual_mov_b32 v89, s7 :: v_dual_add_nc_u32 v72, s16, v68
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v6 offset:4096
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[80:83], v10 offset:4096
	ds_load_b128 v[110:113], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v87, s5 :: v_dual_add_nc_u32 v10, s14, v64
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[114:117], v72 offset:4096
	ds_load_b128 v[118:121], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v90, s8 :: v_dual_add_nc_u32 v73, s14, v65
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[122:125], v10 offset:2048
	ds_load_b128 v[102:105], v10
	v_add_nc_u32_e32 v72, s14, v67
	ds_load_b128 v[134:137], v73 offset:2048
	ds_load_b128 v[138:141], v73
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v92, s10 :: v_dual_add_nc_u32 v11, s16, v71
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s14, v66
	ds_load_b128 v[126:129], v72 offset:2048
	ds_load_b128 v[130:133], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v88, s6
	v_mov_b32_e32 v86, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[146:149], v11
	ds_load_b128 v[150:153], v11 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[154:157], v10 offset:2048
	ds_load_b128 v[142:145], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[118:121], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[114:117], v[102:105], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[118:121], v[122:125], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[114:117], v[122:125], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[110:113], v[138:141], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[80:83], v[138:141], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[110:113], v[134:137], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[80:83], v[134:137], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[6:9], v[130:133], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[2:5], v[130:133], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[6:9], v[126:129], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[2:5], v[126:129], v[86:93] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[72:79], v[146:149], v[142:145], v[72:79] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[150:153], v[142:145], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[146:149], v[154:157], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[150:153], v[154:157], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v73
	v_cvt_f32_i32_e32 v3, v74
	v_cvt_f32_i32_e32 v4, v75
	v_cvt_f32_i32_e32 v5, v76
	v_cvt_f32_i32_e32 v6, v77
	v_cvt_f32_i32_e32 v7, v78
	v_cvt_f32_i32_e32 v8, v79
	v_cvt_f32_i32_e32 v9, v94
	v_cvt_f32_i32_e32 v10, v95
	v_cvt_f32_i32_e32 v11, v96
	v_cvt_f32_i32_e32 v73, v97
	v_cvt_f32_i32_e32 v74, v98
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v107
	v_cvt_f32_i32_e32 v84, v108
	v_cvt_f32_i32_e32 v85, v109
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v72, v72
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v94, v62, s0, 1
	v_add_lshl_u32 v95, v63, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v61, s0, 1
	v_add_lshl_u32 v97, v60, s0, 1
	v_add_lshl_u32 v98, v59, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v99, v58, s0, 1
	v_add_lshl_u32 v100, v57, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_add_lshl_u32 v101, v56, s0, 1
	v_add_lshl_u32 v102, v55, s0, 1
	v_add_lshl_u32 v103, v54, s0, 1
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_add_lshl_u32 v104, v53, s0, 1
	s_and_b32 s29, s29, 0xffff
	v_add_lshl_u32 v105, v51, s0, 1
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_add_lshl_u32 v106, v48, s0, 1
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v123, v96, s[28:31], 0 offen
	buffer_load_u16 v126, v97, s[28:31], 0 offen
	buffer_load_u16 v129, v98, s[28:31], 0 offen
	buffer_load_u16 v130, v99, s[28:31], 0 offen
	buffer_load_u16 v131, v100, s[28:31], 0 offen
	buffer_load_u16 v132, v101, s[28:31], 0 offen
	buffer_load_u16 v133, v102, s[28:31], 0 offen
	buffer_load_u16 v134, v103, s[28:31], 0 offen
	v_add_lshl_u32 v99, v33, s0, 1
	v_add_lshl_u32 v100, v31, s0, 1
	v_dual_cndmask_b32 v96, 0x80000000, v104 :: v_dual_cndmask_b32 v97, 0x80000000, v105
	v_add_lshl_u32 v101, v35, s0, 1
	v_add_lshl_u32 v102, v32, s0, 1
	v_add_lshl_u32 v103, v30, s0, 1
	v_dual_cndmask_b32 v98, 0x80000000, v106 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v100, 0x80000000, v100 :: v_dual_cndmask_b32 v101, 0x80000000, v101
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v103, 0x80000000, v103
	s_clause 0x7
	buffer_load_u16 v135, v96, s[28:31], 0 offen
	buffer_load_u16 v136, v97, s[28:31], 0 offen
	buffer_load_u16 v137, v98, s[28:31], 0 offen
	buffer_load_u16 v138, v99, s[28:31], 0 offen
	buffer_load_u16 v139, v100, s[28:31], 0 offen
	buffer_load_u16 v140, v101, s[28:31], 0 offen
	buffer_load_u16 v141, v102, s[28:31], 0 offen
	buffer_load_u16 v142, v103, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v94, v94, s[12:15], 0 offen
	buffer_load_u16 v95, v95, s[12:15], 0 offen
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_mov_b32_e32 v128, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s44, v70
	v_add_nc_u32_e32 v68, s44, v68
	ds_load_b128 v[143:146], v1 offset:4096
	ds_load_b128 v[147:150], v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s35, v64
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v69, s44, v69
	ds_load_b128 v[151:154], v68 offset:4096
	ds_load_b128 v[155:158], v68
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v64, s35, v67
	v_add_nc_u32_e32 v65, s35, v65
	ds_load_b128 v[159:162], v1 offset:2048
	ds_load_b128 v[112:115], v1
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[163:166], v69 offset:4096
	ds_load_b128 v[167:170], v69
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[171:174], v64 offset:2048
	ds_load_b128 v[175:178], v64
	ds_load_b128 v[179:182], v65 offset:2048
	ds_load_b128 v[183:186], v65
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v96, s44, v71
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s35, v66
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v71, s11 :: v_dual_mov_b32 v70, s10
	v_dual_mov_b32 v69, s9 :: v_dual_mov_b32 v68, s8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[187:190], v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v67, s7 :: v_dual_mov_b32 v66, s6
	v_dual_mov_b32 v65, s5 :: v_dual_mov_b32 v64, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[191:194], v96
	ds_load_b128 v[195:198], v96 offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[199:202], v1 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[155:158], v[112:115], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[151:154], v[112:115], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[155:158], v[159:162], v[64:71] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[151:154], v[159:162], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[167:170], v[183:186], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[163:166], v[183:186], v[104:111] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[112:119], v[167:170], v[179:182], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[163:166], v[179:182], v[64:71] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[147:150], v[175:178], v[96:103] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[104:111], v[143:146], v[175:178], v[104:111] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[147:150], v[171:174], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[143:146], v[171:174], v[64:71] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[96:103], v[191:194], v[187:190], v[96:103] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[104:111], v[195:198], v[187:190], v[104:111] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[112:119], v[191:194], v[199:202], v[112:119] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[64:71], v[195:198], v[199:202], v[64:71] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v96
	v_cvt_f32_i32_e32 v96, v97
	v_cvt_f32_i32_e32 v97, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_cvt_f32_i32_e32 v102, v103
	v_cvt_f32_i32_e32 v103, v104
	v_cvt_f32_i32_e32 v104, v105
	v_cvt_f32_i32_e32 v105, v106
	v_cvt_f32_i32_e32 v106, v107
	v_cvt_f32_i32_e32 v107, v108
	v_cvt_f32_i32_e32 v108, v109
	v_cvt_f32_i32_e32 v109, v110
	v_cvt_f32_i32_e32 v110, v111
	v_cvt_f32_i32_e32 v111, v112
	v_cvt_f32_i32_e32 v112, v113
	v_cvt_f32_i32_e32 v113, v114
	v_cvt_f32_i32_e32 v114, v115
	v_cvt_f32_i32_e32 v115, v116
	v_cvt_f32_i32_e32 v116, v117
	v_cvt_f32_i32_e32 v117, v118
	v_cvt_f32_i32_e32 v118, v119
	v_cvt_f32_i32_e32 v119, v64
	v_cvt_f32_i32_e32 v120, v65
	v_cvt_f32_i32_e32 v121, v66
	v_cvt_f32_i32_e32 v122, v67
	v_cvt_f32_i32_e32 v124, v68
	v_cvt_f32_i32_e32 v125, v69
	v_cvt_f32_i32_e32 v127, v70
	v_cvt_f32_i32_e32 v128, v71
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v65.h, v142.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v69.h, v138.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v62, v62, s0, 1
	v_add_lshl_u32 v63, v63, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v48, v48, s0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v33, s0, 1
	v_add_lshl_u32 v31, v31, s0, 1
	v_add_lshl_u32 v35, v35, s0, 1
	v_add_lshl_u32 v32, v32, s0, 1
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v48, 0x80000000, v48
	v_add_lshl_u32 v30, v30, s0, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	s_clause 0x7
	buffer_load_u16 v53, v53, s[28:31], 0 offen
	buffer_load_u16 v51, v51, s[28:31], 0 offen
	buffer_load_u16 v48, v48, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v64, v30, s[28:31], 0 offen
	v_add_lshl_u32 v61, v61, s0, 1
	v_add_lshl_u32 v60, v60, s0, 1
	v_add_lshl_u32 v59, v59, s0, 1
	v_add_lshl_u32 v58, v58, s0, 1
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v56, v56, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v54, v54, s0, 1
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	s_clause 0x7
	buffer_load_u16 v61, v61, s[28:31], 0 offen
	buffer_load_u16 v60, v60, s[28:31], 0 offen
	buffer_load_u16 v59, v59, s[28:31], 0 offen
	buffer_load_u16 v58, v58, s[28:31], 0 offen
	buffer_load_u16 v57, v57, s[28:31], 0 offen
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	buffer_load_u16 v55, v55, s[28:31], 0 offen
	buffer_load_u16 v54, v54, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	s_clause 0x1
	buffer_load_u16 v62, v62, s[12:15], 0 offen
	buffer_load_u16 v63, v63, s[12:15], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v30.h, v95.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v66.h, v141.l
	v_mov_b16_e64 v67.h, v140.l
	v_mov_b16_e64 v68.h, v139.l
	v_mov_b16_e64 v70.h, v137.l
	v_mov_b16_e64 v71.h, v136.l
	v_mov_b16_e64 v95.h, v135.l
	v_mov_b16_e64 v123.h, v134.l
	v_mov_b16_e64 v126.h, v133.l
	v_mov_b16_e64 v129.h, v132.l
	v_mov_b16_e64 v130.h, v131.l
	v_mov_b16_e64 v131.h, v130.l
	v_mov_b16_e64 v132.h, v129.l
	v_mov_b16_e64 v133.h, v126.l
	v_mov_b16_e64 v134.h, v123.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v135, 1, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v65.l, v30.l
	v_mov_b16_e32 v66.l, v30.l
	v_mov_b16_e32 v67.l, v30.l
	v_mov_b16_e32 v68.l, v30.l
	v_mov_b16_e32 v69.l, v30.l
	v_mov_b16_e32 v70.l, v30.l
	v_mov_b16_e32 v71.l, v30.l
	v_mov_b16_e32 v95.l, v30.l
	v_mov_b16_e32 v123.l, v30.l
	v_mov_b16_e32 v126.l, v30.l
	v_mov_b16_e64 v129.l, v30.l
	v_mov_b16_e64 v130.l, v30.l
	v_mov_b16_e64 v131.l, v30.l
	v_mov_b16_e64 v132.l, v30.l
	v_mov_b16_e64 v133.l, v30.l
	v_mov_b16_e64 v134.l, v30.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v146, v30, v129 :: v_dual_and_b32 v135, 56, v135
	v_mul_f32_e32 v136, v30, v65
	v_mul_f32_e32 v137, v30, v66
	v_mul_f32_e32 v138, v30, v67
	v_mul_f32_e32 v139, v30, v68
	v_mul_f32_e32 v140, v30, v69
	v_mul_f32_e32 v141, v30, v70
	v_mul_f32_e32 v142, v30, v71
	v_mul_f32_e32 v143, v30, v95
	v_mul_f32_e32 v144, v30, v123
	v_mul_f32_e32 v145, v30, v126
	v_mul_f32_e32 v147, v30, v130
	v_mul_f32_e32 v148, v30, v131
	v_mul_f32_e32 v149, v30, v132
	v_mul_f32_e32 v150, v30, v133
	v_mul_f32_e32 v151, v30, v134
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v30.h, v94.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v146, v83, v40
	v_fma_f32 v93, v136, v93, v43
	v_fma_f32 v89, v140, v89, v47
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s33, s27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v30, v68
	v_mul_f32_e32 v70, v30, v70
	v_mul_f32_e32 v94, v30, v95
	v_mul_f32_e32 v66, v30, v66
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v83, s3
	v_cndmask_b32_e64 v43, v43, v93, s3
	v_cndmask_b32_e64 v47, v47, v89, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s26
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, s14
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v68, v68, v74, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v95, v30, v123
	v_mul_f32_e32 v123, v30, v126
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v126, v30, v129 :: v_dual_lshlrev_b32 v31, 16, v31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v35, 16, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v129, v30, v130
	v_mul_f32_e32 v130, v30, v131
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v126, v6, v19
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v131, v30, v132
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v70, v11, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v68, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v19, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v131, v3, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v24, v11, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v132, v30, v133 :: v_dual_lshlrev_b32 v19, 16, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v150, v79, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v16, v3, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v32, 16, v32
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v24, 16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v132, v2, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v54, 16, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v79, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v148, v81, v38
	v_fma_f32 v80, v149, v80, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v15, v2, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v30, v71
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v16, 16, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v92, v137, v92, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v81, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v15, v24
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v71, v10, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v68, v15, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v129, v5, v18
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v15, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v123, v7, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v23, v10, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v23, 16, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v76, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v18, v5, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v65, v30, v65 :: v_dual_lshlrev_b32 v18, 16, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v20, v7, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v28, v28, v66, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v15, v33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v95, v8, v21
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v67, v30, v67 :: v_dual_lshlrev_b32 v20, 16, v58
	v_mul_f32_e32 v133, v30, v134
	v_mul_f32_e32 v63, v15, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v21, v8, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v58, v15, v20 :: v_dual_lshlrev_b32 v21, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v75, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v16, v20
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v133, v72, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v15, v21
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v130, v4, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v67, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v57, v15, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v70, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v15, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v17, v4, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v61, v15, v23 :: v_dual_mul_f32 v24, v16, v24
	v_mul_f32_e32 v19, v16, v19
	v_mul_f32_e32 v21, v16, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v55, v15, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v94, v9, v22
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v16, v17
	v_mul_f32_e32 v23, v16, v23
	v_mul_f32_e32 v33, v16, v33
	v_mul_f32_e32 v31, v16, v31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v22, v9, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v69, v30, v69 :: v_dual_lshlrev_b32 v22, 16, v56
	v_mul_f32_e32 v56, v15, v18
	v_mul_f32_e32 v18, v16, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v77, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v60, v15, v22
	v_mul_f32_e32 v22, v16, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v69, v69, v73, v25
	v_fma_f32 v18, v18, v112, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v65, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v65, v15, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v22, v116, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v69, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v15, v32
	v_dual_mul_f32 v15, v15, v54 :: v_dual_mul_f32 v48, v16, v48
	v_mul_f32_e32 v35, v16, v35
	v_mul_f32_e32 v32, v16, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v36, v18, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v16, v53
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v40, v22, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v16, v51
	v_mul_f32_e32 v16, v16, v54
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v56, v96, v2
	v_fma_f32 v56, v58, v98, v4
	v_fma_f32 v1, v55, v1, v14
	v_fma_f32 v58, v60, v100, v6
	v_fma_f32 v60, v62, v102, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v92, s3
	v_cndmask_b32_e64 v4, v4, v56, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v57, v97, v3
	v_fma_f32 v57, v59, v99, v5
	v_fma_f32 v59, v61, v101, v7
	v_fma_f32 v61, v63, v103, v9
	v_fma_f32 v62, v64, v104, v10
	v_fma_f32 v63, v65, v105, v11
	v_fma_f32 v64, v66, v106, v25
	v_fma_f32 v65, v67, v107, v26
	v_fma_f32 v66, v68, v108, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v14, v1, s2
	v_cndmask_b32_e64 v2, v2, v54, s2
	v_cndmask_b32_e64 v8, v8, v60, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v4, v4, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v110, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v80, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v127, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v58, s2
	v_cndmask_b32_e64 v9, v9, v61, s2
	v_cndmask_b32_e64 v10, v10, v62, s2
	v_cndmask_b32_e64 v11, v11, v63, s2
	v_cndmask_b32_e64 v14, v25, v64, s2
	v_cndmask_b32_e64 v25, v26, v65, s2
	v_cndmask_b32_e64 v26, v27, v66, s2
	v_cndmask_b32_e64 v15, v29, v15, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v8, v8, v8
	v_max_f32_e32 v2, v2, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v20, v114, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v52, v32, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v9, v9, v9
	v_max_f32_e32 v10, v10, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v19, v113, v37
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v32, v32, v32
	v_max_f32_e32 v2, 0, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v86, v143, v86, v44
	v_fma_f32 v78, v151, v78, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v55, s2
	v_cndmask_b32_e64 v19, v37, v19, s2
	v_cndmask_b32_e64 v20, v38, v20, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v9, 0, v9
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v2, v2, v2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v15, 0, v15
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v8, v8, v8 :: v_dual_mul_f32 v1, v1, v1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v141, v88, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v86, s3
	v_cndmask_b32_e64 v34, v34, v78, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v4, 0, v4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v36, s27, v12
	v_mul_lo_u32 v37, s27, v13
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v2.h
	v_mov_b16_e32 v13.l, v1.h
	v_mov_b16_e32 v13.h, v30.l
	v_mov_b16_e32 v12.h, v30.l
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v144, v85, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v88, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v69, v109, v28
	v_fma_f32 v17, v17, v111, v34
	v_fma_f32 v16, v16, v128, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v7, v59, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v18, v18, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v119, v44
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v11, 0, v11 :: v_dual_and_b32 v12, 1, v12
	v_dual_max_f32 v25, 0, v25 :: v_dual_mul_f32 v4, v4, v4
	v_dual_max_f32 v20, 0, v20 :: v_dual_max_f32 v19, 0, v19
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v13, 1, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v85, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v121, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v28, v67, s2
	v_cndmask_b32_e64 v17, v34, v17, s2
	v_cndmask_b32_e64 v28, v44, v53, s2
	v_cndmask_b32_e64 v16, v43, v16, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v7, v7, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v1, v13, 0x7fff
	v_add3_u32 v2, v2, v12, 0x7fff
	v_mov_b16_e32 v12.l, v4.h
	v_mov_b16_e32 v12.h, v30.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v24, v118, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v57, s2
	v_cndmask_b32_e64 v34, v46, v48, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v7, 0, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v1, 1, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v42, v24, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v34, v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v33, v122, v47
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v17, 0, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v1, v4, v1, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v4, v7, v7
	v_mul_f32_e32 v3, v3, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v47, v33, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v32, 0, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v3.h
	v_mov_b16_e32 v40.h, v30.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v145, v84, v41
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v27, 0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v6, v6, v6 :: v_dual_and_b32 v13, 1, v40
	v_mul_f32_e32 v5, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v84, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v147, v82, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v6.h
	v_add3_u32 v3, v3, v13, 0x7fff
	v_mov_b16_e32 v13.l, v5.h
	v_mov_b16_e32 v13.h, v30.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v117, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v7, 1, v12
	v_mov_b16_e32 v1.l, v3.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v142, v87, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 1, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v41, v23, s2
	v_cndmask_b32_e64 v39, v39, v82, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v24, 0, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v87, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v5, v3, 0x7fff
	v_add3_u32 v5, v6, v7, 0x7fff
	v_mov_b16_e32 v6.l, v8.h
	v_mov_b16_e32 v6.h, v30.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v23, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v5.l, v3.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v115, v39
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v22, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v3, 1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v51, v120, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v4.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v90, v139, v90, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v39, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v3, v8, v3, 0x7fff
	v_and_b32_e32 v0, 16, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v138, v91, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v45, v51, s2
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v9, v9, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v90, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v7, 1, v12
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, 0, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v91, s3
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v4, v7, 0x7fff
	v_mov_b16_e32 v7.l, v9.h
	v_mov_b16_e32 v7.h, v30.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v124, v49
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, 0, v21 :: v_dual_mul_f32 v8, v11, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v10.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v35, v125, v50
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v29, 0, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.l, v4.h
	v_and_b32_e32 v4, 1, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v14, v14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v49, v31, s2
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v23, 0, v23 :: v_dual_and_b32 v6, 1, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v30.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v50, v35, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v4, v9, v4, 0x7fff
	v_mov_b16_e32 v9.l, v7.h
	v_mov_b16_e32 v9.h, v30.l
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, v31, v31 :: v_dual_mul_f32 v12, v25, v25
	v_max_f32_e32 v33, 0, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v10, 1, v11
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v14, v17, v17
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v11, v26, v26
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v35, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.l, v4.h
	v_and_b32_e32 v4, 1, v9
	v_add3_u32 v8, v8, v10, 0x7fff
	v_mov_b16_e32 v9.l, v11.h
	v_mov_b16_e32 v10.l, v12.h
	v_mov_b16_e32 v10.h, v30.l
	v_add3_u32 v4, v7, v4, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v27, v27 :: v_dual_mul_f32 v16, v16, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v31, 0, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v8, 1, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v10, v15, v15 :: v_dual_and_b32 v9, 1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_max_f32_e32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v9, v11, v9, 0x7fff
	v_mov_b16_e32 v11.l, v10.h
	v_mov_b16_e32 v11.h, v30.l
	v_and_b32_e32 v12, 1, v13
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v13, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v8.h
	v_mov_b16_e32 v15.h, v30.l
	v_and_b32_e32 v8, 1, v11
	v_add3_u32 v7, v7, v12, 0x7fff
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v12.h, v30.l
	v_mov_b16_e32 v11.l, v13.h
	v_add3_u32 v8, v10, v8, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v19, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v7.h
	v_and_b32_e32 v7, 1, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v12, v20, v20 :: v_dual_and_b32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v15.l, v10.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v19, v23, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v14, v7, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v11, v13, v11, 0x7fff
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v30.l
	v_and_b32_e32 v14, 1, v15
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v22, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v7.h
	v_mov_b16_e32 v22.h, v30.l
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v21, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v10, v10, v14, 0x7fff
	v_mov_b16_e32 v14.l, v15.h
	v_mov_b16_e32 v14.h, v30.l
	v_mov_b16_e32 v17.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v24, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v12, v13, 0x7fff
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v13, 1, v14
	v_mov_b16_e32 v20.h, v30.l
	v_and_b32_e32 v14, 1, v17
	v_mov_b16_e32 v17.l, v18.h
	v_mov_b16_e32 v12.l, v10.h
	v_add3_u32 v10, v15, v13, 0x7fff
	v_and_b32_e32 v13, 1, v20
	v_add3_u32 v7, v7, v14, 0x7fff
	v_and_b32_e32 v14, 1, v17
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v20, v33, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v30.l
	v_add3_u32 v13, v19, v13, 0x7fff
	v_mov_b16_e32 v10.l, v7.h
	v_add3_u32 v14, v18, v14, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v34, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v22.l, v20.h
	v_mov_b16_e32 v14.l, v13.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v15, v29, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v30.l
	v_mov_b16_e32 v21.l, v18.h
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v38, s0, v135
	v_add3_u32 v39, s0, v135, 64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v17.l, v15.h
	s_mov_b32 s0, 0x76543210
	v_and_b32_e32 v21, 1, v21
	s_mov_b32 s27, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v13, v15, v17, 0x7fff
	v_and_b32_e32 v15, 1, v22
	v_add3_u32 v17, v18, v21, 0x7fff
	.loc	1 388 15 is_stmt 1              ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v18, v31, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.h, v30.l
	v_mov_b16_e32 v22.l, v16.h
	v_add3_u32 v15, v20, v15, 0x7fff
	v_mov_b16_e32 v15.l, v17.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v17, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v20.l, v18.h
	v_mov_b16_e32 v20.h, v30.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v21.l, v17.h
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v18, v18, v20, 0x7fff
	v_and_b32_e32 v20, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v21, 0x7fff
	v_add3_u32 v0, v16, v20, 0x7fff
	v_cndmask_b32_e32 v16, v5, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v0.l, v17.h
	v_cndmask_b32_e32 v2, v2, v5, vcc_lo
	v_cndmask_b32_e32 v5, v3, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v3, vcc_lo
	v_cndmask_b32_e32 v17, v9, v6, vcc_lo
	v_dual_cndmask_b32 v3, v6, v9 :: v_dual_mov_b32 v6, 0x5410
	v_cndmask_b32_e32 v9, v8, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_cndmask_b32_e32 v8, v11, v10, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v6, 0x1054, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v20, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v6, 8, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v7, v28, v28 :: v_dual_and_b32 v6, 0x540054, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v7.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v19.h, v30.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v13.l, v7.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v7, v35, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v7.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v7, v7, v19, 0x7fff
	v_mov_b16_e32 v7.l, v18.h
	v_dual_mov_b32 v18, 0x7632 :: v_dual_cndmask_b32 v19, v10, v11
	v_dual_cndmask_b32 v11, v14, v12 :: v_dual_cndmask_b32 v12, v12, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v14, v7, v13, vcc_lo
	v_dual_cndmask_b32 v10, 0x3276, v18 :: v_dual_cndmask_b32 v7, v13, v7
	v_permlanex16_b32 v13, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v1, v6, 4, v6
	v_cndmask_b32_e32 v18, v0, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b32_e32 v0, v15, v0, vcc_lo
	v_permlanex16_b32 v15, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 0x5040504, v1
	v_permlanex16_b32 v12, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x760076, v10
	v_permlanex16_b32 v23, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v16, v21
	v_perm_b32 v8, v20, v19, v21
	v_lshl_or_b32 v6, v10, 4, v10
	v_permlanex16_b32 v10, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v22, 0x7060706, v6
	v_perm_b32 v4, v10, v17, v21
	v_perm_b32 v6, v15, v9, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v1, v2, v16, v22
	v_perm_b32 v2, v13, v5, v21
	v_perm_b32 v3, v13, v5, v22
	v_add_lshl_u32 v16, v38, v36, 1
	v_perm_b32 v5, v10, v17, v22
	v_perm_b32 v7, v15, v9, v22
	v_add_lshl_u32 v17, v39, v36, 1
	v_perm_b32 v9, v20, v19, v22
	v_perm_b32 v10, v12, v11, v21
	v_perm_b32 v11, v12, v11, v22
	v_perm_b32 v12, v23, v14, v21
	v_perm_b32 v13, v23, v14, v22
	v_perm_b32 v14, v24, v18, v21
	v_perm_b32 v15, v24, v18, v22
	v_add_lshl_u32 v18, v38, v37, 1
	v_add_lshl_u32 v19, v39, v37, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 203
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8820
; TotalNumSgprs: 50
; NumVgprs: 203
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     203
    .vgpr_spill_count: 0
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
