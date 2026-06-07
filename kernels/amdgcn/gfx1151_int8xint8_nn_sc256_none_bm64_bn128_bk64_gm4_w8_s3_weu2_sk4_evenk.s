	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshlrev_b32_e32 v15, 4, v0
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v17, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v71, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 48, v15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v48, 0, v15
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v72, 1, v17
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s13, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s12, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s13
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s18, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v15
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[13:14], null, s35, v3, v[1:2]
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v14, 0x80, v0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_mov_b64 s[20:21], s[10:11]
	s_mul_hi_u32 s13, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s13
	s_mul_hi_u32 s6, s14, s18
	s_ashr_i32 s18, s7, 31
	s_mul_i32 s13, s6, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s14, s13
	s_add_i32 s13, s6, 1
	s_sub_i32 s14, s7, s17
	s_cmp_ge_u32 s7, s17
	s_cselect_b32 s6, s13, s6
	s_cselect_b32 s7, s14, s7
	s_add_i32 s13, s6, 1
	s_cmp_ge_u32 s7, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s13, s13, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s22, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s13, s18
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s13, s13, s18
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s6
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s14, s13, s16
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s34, s13, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s14
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s12, 0xff
.Ltmp13:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s40, s2, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s2, s14, 31
.Ltmp15:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s3, s40, s12
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s2, s2, 24
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v73, v2, v4, s3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s14, s2
.Ltmp19:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0xff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s12, s35, s22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s33, s35, 5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s22, v73
	.loc	1 348 22 is_stmt 0              ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s12, s34, s12
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v74, s33, v13
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x1ff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s12, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s35, 8
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s41, s22, 0x100
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s12, s15
	v_add_nc_u32_e32 v4, s12, v74
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s41, v73
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s15, v13
	v_add_nc_u32_e32 v6, s15, v74
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	buffer_load_b128 v[24:27], v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v5, 0x80000000, v6, s2
	s_clause 0x1
	buffer_load_b128 v[28:31], v2, s[24:27], 0 offen
	buffer_load_b128 v[32:35], v1, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[36:39], v3, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[40:43], v4, s[24:27], 0 offen
	buffer_load_b128 v[44:47], v5, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v14
	s_mov_b32 s12, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x2ff
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 48, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v1, 1, v72
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, v3, v71
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v75, v15, v4
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v23, 32, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v8, 4, v2
	v_or_b32_e32 v9, 6, v2
	v_or_b32_e32 v10, 8, v2
	v_or_b32_e32 v11, 10, v2
	v_or_b32_e32 v12, 12, v2
	v_or_b32_e32 v16, 14, v2
	v_or_b32_e32 v18, 64, v2
	v_or_b32_e32 v19, 0x42, v2
	v_or_b32_e32 v20, 0x44, v2
	v_or_b32_e32 v21, 0x46, v2
	v_or_b32_e32 v22, 0x48, v2
	v_or_b32_e32 v4, 0x4a, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, 0, v75
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0x4c, v2
	v_or_b32_e32 v6, 0x4e, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v49, v[24:27] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v48, v[28:31]
	s_waitcnt vmcnt(3)
	ds_store_b128 v48, v[32:35] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v49, v[36:39] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v48, v[40:43] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v48, v[44:47] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v24, 0x430, v1
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v67, v71, 6, v24
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v70, 32, v67
	v_xor_b32_e32 v68, 48, v67
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow225
	s_load_b64 s[0:1], s[0:1], 0x20
	v_or_b32_e32 v3, s40, v3
	v_or_b32_e32 v23, s40, v23
	s_ashr_i32 s42, s13, 8
	v_or_b32_e32 v64, s34, v2
	v_or_b32_e32 v63, s34, v7
	v_mul_lo_u32 v65, v3, s42
	v_mul_lo_u32 v66, v23, s42
	v_or_b32_e32 v62, s34, v8
	v_or_b32_e32 v61, s34, v9
	v_or_b32_e32 v60, s34, v10
	v_or_b32_e32 v59, s34, v11
	v_or_b32_e32 v58, s34, v12
	v_or_b32_e32 v57, s34, v16
	v_or_b32_e32 v56, s34, v18
	v_or_b32_e32 v55, s34, v19
	v_or_b32_e32 v54, s34, v20
	v_or_b32_e32 v52, s34, v21
	v_or_b32_e32 v33, s34, v22
	v_or_b32_e32 v53, s34, v4
	v_or_b32_e32 v51, s34, v5
	v_or_b32_e32 v32, s34, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v1, 0x430, v1
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v71, 6, v1
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_xor_b32_e32 v69, 16, v67
	v_xor_b32_e32 v70, 32, v67
	v_xor_b32_e32 v68, 48, v67
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v50, 0
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s23, s42, 3
	s_add_i32 s11, s41, 0x100
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s21, 0xffff
	s_mov_b32 s36, s20
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s43, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
	s_add_i32 s23, s23, -3
	s_mov_b32 s45, 1
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s15, s10
	s_mov_b32 s14, s22
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v77, s15, v67
	v_add_nc_u32_e32 v78, s15, v69
	v_add_nc_u32_e32 v79, s15, v70
	v_add_nc_u32_e32 v80, s15, v68
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s15, s14, 31
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s17, s13, 8
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s15, s15, 24
	s_mov_b32 s16, s12
	s_mov_b32 s22, s41
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s41, s11, s17
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s14, s14, s15
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v76, s16, v71, v72
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s16, s41, s35
	.loc	1 362 29 is_stmt 1              ; generate_amdgcn.py:362:29
	s_ashr_i32 s14, s14, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v136, v65, s14, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s15, s14, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s14, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v137, v66, s14, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v138, v64, s15, 1
	v_add_lshl_u32 v139, v63, s15, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v140, v62, s15, 1
	v_add_lshl_u32 v171, v56, s15, 1
	v_add_lshl_u32 v172, v55, s15, 1
	v_add_lshl_u32 v173, v54, s15, 1
	v_add_lshl_u32 v174, v52, s15, 1
	v_add_lshl_u32 v175, v33, s15, 1
	v_add_lshl_u32 v176, v53, s15, 1
	v_add_lshl_u32 v177, v51, s15, 1
	v_add_lshl_u32 v178, v32, s15, 1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v9, s41, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v141, v61, s15, 1
	v_add_lshl_u32 v142, v60, s15, 1
	v_add_lshl_u32 v143, v59, s15, 1
	v_add_lshl_u32 v169, v58, s15, 1
	v_add_lshl_u32 v170, v57, s15, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v136, 0x80000000, v136 :: v_dual_cndmask_b32 v137, 0x80000000, v137
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	v_dual_cndmask_b32 v171, 0x80000000, v171 :: v_dual_cndmask_b32 v172, 0x80000000, v172
	v_dual_cndmask_b32 v173, 0x80000000, v173 :: v_dual_cndmask_b32 v174, 0x80000000, v174
	v_dual_cndmask_b32 v175, 0x80000000, v175 :: v_dual_cndmask_b32 v176, 0x80000000, v176
	v_dual_cndmask_b32 v177, 0x80000000, v177 :: v_dual_cndmask_b32 v178, 0x80000000, v178
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v143, 0x80000000, v143
	v_dual_cndmask_b32 v169, 0x80000000, v169 :: v_dual_cndmask_b32 v170, 0x80000000, v170
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v179, v136, s[28:31], 0 offen
	buffer_load_u16 v180, v137, s[28:31], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v181, v138, s[36:39], 0 offen
	buffer_load_u16 v182, v139, s[36:39], 0 offen
	buffer_load_u16 v183, v140, s[36:39], 0 offen
	buffer_load_u16 v184, v141, s[36:39], 0 offen
	buffer_load_u16 v185, v142, s[36:39], 0 offen
	buffer_load_u16 v186, v143, s[36:39], 0 offen
	buffer_load_u16 v187, v169, s[36:39], 0 offen
	buffer_load_u16 v188, v170, s[36:39], 0 offen
	buffer_load_u16 v189, v171, s[36:39], 0 offen
	buffer_load_u16 v172, v172, s[36:39], 0 offen
	buffer_load_u16 v173, v173, s[36:39], 0 offen
	buffer_load_u16 v174, v174, s[36:39], 0 offen
	buffer_load_u16 v175, v175, s[36:39], 0 offen
	buffer_load_u16 v176, v176, s[36:39], 0 offen
	buffer_load_u16 v177, v177, s[36:39], 0 offen
	buffer_load_u16 v178, v178, s[36:39], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v81, s16, v13
	v_add_nc_u32_e32 v82, s16, v74
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[136:139], v81, s[24:27], 0 offen
	buffer_load_b128 v[140:143], v82, s[24:27], 0 offen
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	ds_load_b128 v[92:95], v77
	ds_load_b128 v[108:111], v77 offset:2048
	ds_load_b128 v[112:115], v78
	ds_load_b128 v[116:119], v78 offset:2048
	ds_load_b128 v[120:123], v79
	ds_load_b128 v[124:127], v79 offset:2048
	ds_load_b128 v[128:131], v80
	ds_load_b128 v[132:135], v80 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v77, v76 offset:3200
	ds_load_u8 v78, v76 offset:3072
	ds_load_u8 v79, v76 offset:6784
	ds_load_u8 v80, v76 offset:6656
	ds_load_u8 v83, v76 offset:7040
	ds_load_u8 v84, v76 offset:6912
	ds_load_u8 v85, v76 offset:6272
	ds_load_u8 v86, v76 offset:6144
	ds_load_u8 v87, v76 offset:6528
	ds_load_u8 v88, v76 offset:6400
	ds_load_u8 v89, v76 offset:1664
	ds_load_u8 v90, v76 offset:1536
	ds_load_u8 v91, v76 offset:1920
	ds_load_u8 v96, v76 offset:1792
	ds_load_u8 v97, v76 offset:1984
	ds_load_u8 v98, v76 offset:1856
	ds_load_u8 v99, v76 offset:1728
	ds_load_u8 v100, v76 offset:1600
	ds_load_u8 v101, v76 offset:1152
	ds_load_u8 v102, v76 offset:1024
	ds_load_u8 v103, v76 offset:1408
	ds_load_u8 v104, v76 offset:1280
	ds_load_u8 v105, v76 offset:1472
	ds_load_u8 v106, v76 offset:1344
	ds_load_u8 v107, v76 offset:1216
	ds_load_u8 v144, v76 offset:1088
	ds_load_u8 v145, v76 offset:640
	ds_load_u8 v146, v76 offset:512
	ds_load_u8 v147, v76 offset:896
	ds_load_u8 v148, v76 offset:768
	ds_load_u8 v149, v76 offset:960
	ds_load_u8 v150, v76 offset:832
	ds_load_u8 v151, v76 offset:704
	ds_load_u8 v152, v76 offset:576
	ds_load_u8 v153, v76 offset:128
	ds_load_u8 v154, v76
	ds_load_u8 v155, v76 offset:384
	ds_load_u8 v156, v76 offset:256
	ds_load_u8 v157, v76 offset:448
	ds_load_u8 v158, v76 offset:320
	ds_load_u8 v159, v76 offset:192
	ds_load_u8 v160, v76 offset:64
	ds_load_u8 v161, v76 offset:3712
	ds_load_u8 v162, v76 offset:3584
	ds_load_u8 v163, v76 offset:3968
	ds_load_u8 v164, v76 offset:3840
	ds_load_u8 v165, v76 offset:4032
	ds_load_u8 v166, v76 offset:3904
	ds_load_u8 v167, v76 offset:3776
	ds_load_u8 v168, v76 offset:3648
	ds_load_u8 v169, v76 offset:3456
	ds_load_u8 v170, v76 offset:3328
	ds_load_u8 v171, v76 offset:3520
	ds_load_u8 v190, v76 offset:3392
	ds_load_u8 v191, v76 offset:3264
	ds_load_u8 v192, v76 offset:3136
	ds_load_u8 v193, v76 offset:2688
	ds_load_u8 v194, v76 offset:2560
	ds_load_u8 v195, v76 offset:2944
	ds_load_u8 v196, v76 offset:2816
	ds_load_u8 v197, v76 offset:3008
	ds_load_u8 v198, v76 offset:2880
	ds_load_u8 v81, v76 offset:2752
	ds_load_u8 v82, v76 offset:2624
	ds_load_u8 v199, v76 offset:2176
	ds_load_u8 v200, v76 offset:2048
	ds_load_u8 v201, v76 offset:2432
	ds_load_u8 v202, v76 offset:2304
	ds_load_u8 v203, v76 offset:2496
	ds_load_u8 v204, v76 offset:2368
	ds_load_u8 v205, v76 offset:2240
	ds_load_u8 v206, v76 offset:2112
	ds_load_u8 v207, v76 offset:5760
	ds_load_u8 v208, v76 offset:5632
	ds_load_u8 v209, v76 offset:6016
	ds_load_u8 v210, v76 offset:5888
	ds_load_u8 v211, v76 offset:6080
	ds_load_u8 v212, v76 offset:5952
	ds_load_u8 v213, v76 offset:5824
	ds_load_u8 v214, v76 offset:5696
	ds_load_u8 v215, v76 offset:5248
	ds_load_u8 v216, v76 offset:5120
	ds_load_u8 v217, v76 offset:5504
	ds_load_u8 v218, v76 offset:5376
	ds_load_u8 v219, v76 offset:5568
	ds_load_u8 v220, v76 offset:5440
	ds_load_u8 v221, v76 offset:5312
	ds_load_u8 v222, v76 offset:5184
	ds_load_u8 v223, v76 offset:4736
	ds_load_u8 v224, v76 offset:4608
	ds_load_u8 v225, v76 offset:4992
	ds_load_u8 v226, v76 offset:4864
	ds_load_u8 v227, v76 offset:5056
	ds_load_u8 v228, v76 offset:4928
	ds_load_u8 v229, v76 offset:4800
	ds_load_u8 v230, v76 offset:4672
	ds_load_u8 v231, v76 offset:4224
	ds_load_u8 v232, v76 offset:4096
	ds_load_u8 v233, v76 offset:4480
	ds_load_u8 v234, v76 offset:4352
	ds_load_u8 v235, v76 offset:4544
	ds_load_u8 v236, v76 offset:4416
	ds_load_u8 v237, v76 offset:4288
	ds_load_u8 v238, v76 offset:4160
	ds_load_u8 v239, v76 offset:7808
	ds_load_u8 v240, v76 offset:7680
	ds_load_u8 v241, v76 offset:8064
	ds_load_u8 v242, v76 offset:7936
	ds_load_u8 v243, v76 offset:8128
	ds_load_u8 v244, v76 offset:8000
	ds_load_u8 v245, v76 offset:7872
	ds_load_u8 v246, v76 offset:7744
	ds_load_u8 v247, v76 offset:7296
	ds_load_u8 v248, v76 offset:7168
	ds_load_u8 v249, v76 offset:7552
	ds_load_u8 v250, v76 offset:7424
	ds_load_u8 v251, v76 offset:7616
	ds_load_u8 v252, v76 offset:7488
	ds_load_u8 v253, v76 offset:7360
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v76 offset:7232
	v_perm_b32 v91, v96, v91, 0xc0c0004
	ds_load_u8 v96, v76 offset:7104
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v76 offset:6976
	v_perm_b32 v104, v104, v103, 0xc0c0004
	ds_load_u8 v103, v76 offset:6848
	v_perm_b32 v145, v146, v145, 0xc0c0004
	ds_load_u8 v146, v76 offset:6720
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v76 offset:6592
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v76 offset:6464
	v_perm_b32 v155, v156, v155, 0xc0c0004
	ds_load_u8 v156, v76 offset:6336
	ds_load_u8 v76, v76 offset:6208
	v_perm_b32 v79, v80, v79, 0xc0c0004
	v_perm_b32 v80, v84, v83, 0xc0c0004
	v_perm_b32 v83, v86, v85, 0xc0c0004
	v_perm_b32 v84, v88, v87, 0xc0c0004
	v_perm_b32 v85, v100, v99, 0xc0c0004
	v_perm_b32 v86, v98, v97, 0xc0c0004
	v_perm_b32 v87, v144, v107, 0xc0c0004
	v_perm_b32 v88, v106, v105, 0xc0c0004
	v_perm_b32 v97, v152, v151, 0xc0c0004
	v_perm_b32 v98, v150, v149, 0xc0c0004
	v_perm_b32 v99, v160, v159, 0xc0c0004
	v_perm_b32 v105, v158, v157, 0xc0c0004
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v162, v164, v163, 0xc0c0004
	v_perm_b32 v77, v78, v77, 0xc0c0004
	v_perm_b32 v78, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v163, v194, v193, 0xc0c0004
	v_perm_b32 v164, v196, v195, 0xc0c0004
	v_perm_b32 v169, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v170, v202, v201, 0xc0c0004
	v_perm_b32 v106, v168, v167, 0xc0c0004
	v_perm_b32 v107, v166, v165, 0xc0c0004
	v_perm_b32 v160, v192, v191, 0xc0c0004
	v_perm_b32 v165, v190, v171, 0xc0c0004
	v_perm_b32 v81, v82, v81, 0xc0c0004
	v_perm_b32 v82, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v166, v206, v205, 0xc0c0004
	v_perm_b32 v167, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v168, v214, v213, 0xc0c0004
	v_perm_b32 v171, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v90, v90, v253, 0xc0c0004
	v_perm_b32 v206, v252, v251, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v211, v146, v103, 0xc0c0004
	v_perm_b32 v96, v102, v96, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v156, 0xc0c0004
	v_perm_b32 v212, v154, v148, 0xc0c0004
	v_lshl_or_b32 v103, v91, 16, v89
	v_lshl_or_b32 v102, v104, 16, v101
	v_lshl_or_b32 v101, v147, 16, v145
	v_lshl_or_b32 v100, v155, 16, v153
	v_lshl_or_b32 v159, v86, 16, v85
	v_lshl_or_b32 v158, v88, 16, v87
	v_lshl_or_b32 v157, v98, 16, v97
	v_lshl_or_b32 v156, v105, 16, v99
	v_perm_b32 v193, v208, v207, 0xc0c0004
	v_perm_b32 v194, v210, v209, 0xc0c0004
	v_perm_b32 v195, v216, v215, 0xc0c0004
	v_perm_b32 v196, v218, v217, 0xc0c0004
	v_perm_b32 v199, v224, v223, 0xc0c0004
	v_perm_b32 v200, v226, v225, 0xc0c0004
	v_perm_b32 v201, v232, v231, 0xc0c0004
	v_perm_b32 v202, v234, v233, 0xc0c0004
	v_perm_b32 v190, v222, v221, 0xc0c0004
	v_perm_b32 v191, v220, v219, 0xc0c0004
	v_perm_b32 v192, v230, v229, 0xc0c0004
	v_perm_b32 v197, v228, v227, 0xc0c0004
	v_perm_b32 v198, v238, v237, 0xc0c0004
	v_perm_b32 v203, v236, v235, 0xc0c0004
	v_lshl_or_b32 v147, v162, 16, v161
	v_lshl_or_b32 v146, v78, 16, v77
	v_lshl_or_b32 v145, v164, 16, v163
	v_lshl_or_b32 v144, v170, 16, v169
	v_lshl_or_b32 v153, v80, 16, v79
	v_lshl_or_b32 v152, v84, 16, v83
	v_lshl_or_b32 v163, v107, 16, v106
	v_lshl_or_b32 v162, v165, 16, v160
	v_lshl_or_b32 v161, v82, 16, v81
	v_lshl_or_b32 v160, v167, 16, v166
	v_lshl_or_b32 v167, v171, 16, v168
	v_lshl_or_b32 v170, v206, 16, v90
	v_lshl_or_b32 v169, v96, 16, v211
	v_lshl_or_b32 v168, v212, 16, v76
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[156:159], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[156:159], v[108:111], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v207, v240, v239, 0xc0c0004
	v_perm_b32 v208, v242, v241, 0xc0c0004
	v_perm_b32 v209, v248, v247, 0xc0c0004
	v_perm_b32 v210, v250, v249, 0xc0c0004
	v_perm_b32 v204, v246, v245, 0xc0c0004
	v_perm_b32 v205, v244, v243, 0xc0c0004
	v_lshl_or_b32 v151, v194, 16, v193
	v_lshl_or_b32 v150, v196, 16, v195
	v_lshl_or_b32 v149, v200, 16, v199
	v_lshl_or_b32 v148, v202, 16, v201
	v_lshl_or_b32 v166, v191, 16, v190
	v_lshl_or_b32 v165, v197, 16, v192
	v_lshl_or_b32 v164, v203, 16, v198
	v_wmma_i32_16x16x16_iu8 v[76:83], v[144:147], v[112:115], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[160:163], v[112:115], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[144:147], v[116:119], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[160:163], v[116:119], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v155, v208, 16, v207
	v_lshl_or_b32 v154, v210, 16, v209
	v_lshl_or_b32 v171, v205, 16, v204
	v_wmma_i32_16x16x16_iu8 v[76:83], v[148:151], v[120:123], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[164:167], v[120:123], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[148:151], v[124:127], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[164:167], v[124:127], v[100:107] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s45, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[76:83], v[152:155], v[128:131], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[168:171], v[128:131], v[84:91] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s14, 2
	s_mov_b32 s12, s44
	s_cselect_b32 s45, s14, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[92:99], v[152:155], v[132:135], v[92:99] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s15, s45, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[132:135], v[100:107] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s16, s15, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s44, s16, s15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s14, s13, 1
	s_mov_b32 s10, s43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s43, s16, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s13, s23
	s_mov_b32 s13, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v122, 16, v175
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v109, 16, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v125, 16, v178
	v_lshlrev_b32_e32 v113, 16, v184
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v108, 16, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v129, v108, v113
	v_dual_mul_f32 v113, v109, v113 :: v_dual_mul_f32 v146, v108, v122
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v124, 16, v177
	v_lshlrev_b32_e32 v115, 16, v186
	v_lshlrev_b32_e32 v121, 16, v174
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v29, v146, v88 :: v_dual_lshlrev_b32 v112, 16, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v108, v124
	v_dual_mul_f32 v131, v108, v115 :: v_dual_lshlrev_b32 v120, 16, v173
	v_mul_f32_e32 v115, v109, v115
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v111, 16, v182
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v145, v108, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v144, v108, v120
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v118, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v128, v108, v112
	v_mul_f32_e32 v127, v108, v111
	v_mul_f32_e32 v111, v109, v111
	v_dual_mul_f32 v134, v108, v118 :: v_dual_add_nc_u32 v255, s44, v15
	v_dual_mul_f32 v118, v109, v118 :: v_dual_lshlrev_b32 v123, 16, v176
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v114, 16, v185
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v112, v109, v112
	v_dual_mul_f32 v120, v109, v120 :: v_dual_fmac_f32 v19, v128, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v147, v108, v123
	v_dual_mul_f32 v130, v108, v114 :: v_dual_lshlrev_b32 v119, 16, v172
	v_mul_f32_e32 v114, v109, v114
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v110, 16, v181
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v121, v109, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v135, v108, v119
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v117, 16, v188
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v119, v109, v119 :: v_dual_mul_f32 v126, v108, v110
	v_mul_f32_e32 v110, v109, v110
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v116, 16, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v133, v108, v117 :: v_dual_add_nc_u32 v254, s16, v75
	v_mul_f32_e32 v117, v109, v117
	v_dual_mul_f32 v122, v109, v122 :: v_dual_fmac_f32 v21, v130, v80
	v_mul_f32_e32 v132, v108, v116
	v_mul_f32_e32 v116, v109, v116
	v_dual_mul_f32 v108, v108, v125 :: v_dual_mul_f32 v123, v109, v123
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v16, v126, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v124, v109, v124 :: v_dual_fmac_f32 v23, v132, v82
	v_dual_mul_f32 v109, v109, v125 :: v_dual_fmac_f32 v34, v108, v91
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v18, v127, v77 :: v_dual_fmac_f32 v25, v134, v84
	v_dual_fmac_f32 v20, v129, v79 :: v_dual_fmac_f32 v27, v144, v86
	v_fmac_f32_e32 v22, v131, v81
	v_dual_fmac_f32 v24, v133, v83 :: v_dual_fmac_f32 v31, v148, v90
	v_dual_fmac_f32 v26, v135, v85 :: v_dual_fmac_f32 v35, v110, v92
	v_dual_fmac_f32 v28, v145, v87 :: v_dual_fmac_f32 v37, v112, v94
	v_dual_fmac_f32 v30, v147, v89 :: v_dual_fmac_f32 v39, v114, v96
	v_dual_fmac_f32 v36, v111, v93 :: v_dual_fmac_f32 v41, v116, v98
	v_dual_fmac_f32 v38, v113, v95 :: v_dual_fmac_f32 v45, v119, v101
	v_dual_fmac_f32 v40, v115, v97 :: v_dual_fmac_f32 v47, v121, v103
	v_dual_fmac_f32 v42, v117, v99 :: v_dual_fmac_f32 v49, v123, v105
	v_dual_fmac_f32 v44, v118, v100 :: v_dual_fmac_f32 v43, v109, v107
	v_fmac_f32_e32 v46, v120, v102
	v_fmac_f32_e32 v48, v122, v104
	v_fmac_f32_e32 v50, v124, v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v254, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v255, v[136:139]
	s_waitcnt vmcnt(0)
	ds_store_b128 v255, v[140:143] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v16, 0
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s43, 0, 0x5000
	s_add_i32 s44, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v109, v72, v71
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v89, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v71, s12, v109
	s_mov_b32 s12, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v73, v71 offset:1664
	ds_load_u8 v74, v71 offset:1536
	ds_load_u8 v75, v71 offset:1920
	ds_load_u8 v76, v71 offset:1792
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v6, s10, v70
	v_add_nc_u32_e32 v72, s10, v69
	ds_load_b128 v[2:5], v6 offset:2048
	ds_load_b128 v[6:9], v6
	ds_load_b128 v[10:13], v72 offset:2048
	ds_load_b128 v[79:82], v72
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v72, v71 offset:1152
	ds_load_u8 v83, v71 offset:1024
	ds_load_u8 v84, v71 offset:1408
	ds_load_u8 v85, v71 offset:1280
	ds_load_u8 v86, v71 offset:640
	ds_load_u8 v87, v71 offset:512
	ds_load_u8 v88, v71 offset:896
	ds_load_u8 v89, v71 offset:768
	ds_load_u8 v103, v71 offset:1984
	ds_load_u8 v104, v71 offset:1856
	ds_load_u8 v105, v71 offset:1728
	ds_load_u8 v106, v71 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v78, s10, v67
	v_add_nc_u32_e32 v77, s10, v68
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v73, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v74, v76, v75, 0xc0c0004
	ds_load_u8 v75, v71 offset:128
	ds_load_u8 v76, v71
	ds_load_u8 v90, v71 offset:384
	ds_load_u8 v91, v71 offset:256
	ds_load_u8 v107, v71 offset:1472
	ds_load_u8 v108, v71 offset:1344
	ds_load_u8 v134, v71 offset:1216
	ds_load_u8 v135, v71 offset:1088
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v72, v83, v72, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v83, v85, v84, 0xc0c0004
	v_lshl_or_b32 v117, v74, 16, v73
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v84, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v85, v89, v88, 0xc0c0004
	v_lshl_or_b32 v116, v83, 16, v72
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v115, v85, 16, v84
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v91, v90, 0xc0c0004
	v_mov_b32_e32 v90, s19
	ds_load_u8 v91, v71 offset:3712
	ds_load_u8 v92, v71 offset:3584
	ds_load_u8 v93, v71 offset:3968
	ds_load_u8 v94, v71 offset:3840
	ds_load_u8 v136, v71 offset:960
	ds_load_u8 v138, v71 offset:832
	ds_load_u8 v139, v71 offset:704
	ds_load_u8 v140, v71 offset:576
	v_mov_b32_e32 v88, s17
	v_lshl_or_b32 v114, v76, 16, v75
	ds_load_u8 v75, v71 offset:3200
	ds_load_u8 v76, v71 offset:3072
	ds_load_u8 v95, v71 offset:3456
	ds_load_u8 v96, v71 offset:3328
	ds_load_u8 v97, v71 offset:2688
	ds_load_u8 v98, v71 offset:2560
	ds_load_u8 v118, v71 offset:2944
	ds_load_u8 v119, v71 offset:2816
	ds_load_u8 v120, v71 offset:2176
	ds_load_u8 v121, v71 offset:2048
	ds_load_u8 v122, v71 offset:2432
	ds_load_u8 v123, v71 offset:2304
	ds_load_u8 v142, v71 offset:4032
	ds_load_u8 v143, v71 offset:3904
	ds_load_u8 v144, v71 offset:3776
	ds_load_u8 v145, v71 offset:3648
	v_mov_b32_e32 v85, s14
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v78 offset:2048
	ds_load_b128 v[99:102], v78
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v72, v71 offset:448
	ds_load_u8 v73, v71 offset:320
	ds_load_u8 v74, v71 offset:192
	ds_load_u8 v78, v71 offset:64
	ds_load_u8 v146, v71 offset:3520
	ds_load_u8 v147, v71 offset:3392
	ds_load_u8 v148, v71 offset:3264
	ds_load_u8 v149, v71 offset:3136
	ds_load_u8 v150, v71 offset:3008
	ds_load_u8 v151, v71 offset:2880
	ds_load_u8 v152, v71 offset:2752
	ds_load_u8 v153, v71 offset:2624
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	ds_load_u8 v154, v71 offset:2496
	ds_load_u8 v155, v71 offset:2368
	ds_load_u8 v156, v71 offset:2240
	ds_load_u8 v157, v71 offset:2112
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v76, v96, v95, 0xc0c0004
	ds_load_u8 v166, v71 offset:5056
	ds_load_u8 v167, v71 offset:4928
	ds_load_u8 v168, v71 offset:4800
	ds_load_u8 v169, v71 offset:4672
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v126, v98, v97, 0xc0c0004
	v_mov_b32_e32 v89, s18
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_mov_b32_e32 v87, s16
	v_perm_b32 v124, v92, v91, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v127, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v71 offset:5760
	ds_load_u8 v128, v71 offset:5632
	ds_load_u8 v129, v71 offset:6016
	ds_load_u8 v130, v71 offset:5888
	v_perm_b32 v125, v94, v93, 0xc0c0004
	v_lshl_or_b32 v120, v76, 16, v75
	v_lshl_or_b32 v119, v118, 16, v126
	v_lshl_or_b32 v118, v122, 16, v127
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_lshl_or_b32 v121, v125, 16, v124
	ds_load_u8 v75, v71 offset:5248
	ds_load_u8 v76, v71 offset:5120
	ds_load_u8 v122, v71 offset:5504
	ds_load_u8 v124, v71 offset:5376
	ds_load_u8 v125, v71 offset:4736
	ds_load_u8 v126, v71 offset:4608
	ds_load_u8 v127, v71 offset:4992
	ds_load_u8 v131, v71 offset:4864
	ds_load_u8 v158, v71 offset:6080
	ds_load_u8 v159, v71 offset:5952
	ds_load_u8 v160, v71 offset:5824
	ds_load_u8 v161, v71 offset:5696
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v74, v78, v74, 0xc0c0004
	v_dual_mov_b32 v86, s15 :: v_dual_mov_b32 v83, s12
	v_mov_b32_e32 v84, s13
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[91:98], v[114:117], v[99:102], v[83:90] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v123, v128, v123, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v75, v76, v75, 0xc0c0004
	v_perm_b32 v128, v130, v129, 0xc0c0004
	ds_load_u8 v129, v71 offset:4224
	ds_load_u8 v130, v71 offset:4096
	ds_load_u8 v132, v71 offset:4480
	ds_load_u8 v133, v71 offset:4352
	ds_load_u8 v162, v71 offset:5568
	ds_load_u8 v163, v71 offset:5440
	ds_load_u8 v164, v71 offset:5312
	ds_load_u8 v165, v71 offset:5184
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v122, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v126, v131, v127, 0xc0c0004
	ds_load_u8 v127, v71 offset:7808
	ds_load_u8 v131, v71 offset:7680
	ds_load_u8 v137, v71 offset:8064
	ds_load_u8 v141, v71 offset:7936
	ds_load_u8 v170, v71 offset:4544
	ds_load_u8 v171, v71 offset:4416
	ds_load_u8 v172, v71 offset:4288
	ds_load_u8 v173, v71 offset:4160
	v_lshl_or_b32 v125, v128, 16, v123
	v_lshl_or_b32 v124, v76, 16, v75
	ds_load_u8 v75, v71 offset:7296
	ds_load_u8 v76, v71 offset:7168
	ds_load_u8 v174, v71 offset:7552
	ds_load_u8 v175, v71 offset:7424
	ds_load_u8 v176, v71 offset:8128
	ds_load_u8 v177, v71 offset:8000
	ds_load_u8 v178, v71 offset:7872
	ds_load_u8 v179, v71 offset:7744
	v_lshl_or_b32 v123, v126, 16, v122
	v_wmma_i32_16x16x16_iu8 v[91:98], v[118:121], v[79:82], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v130, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v131, v127, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v137, v141, v137, 0xc0c0004
	v_lshl_or_b32 v122, v130, 16, v129
	ds_load_u8 v141, v71 offset:6784
	ds_load_u8 v181, v71 offset:6656
	ds_load_u8 v182, v71 offset:7040
	ds_load_u8 v183, v71 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[126:129], v77 offset:2048
	ds_load_b128 v[130:133], v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v77, v71 offset:6272
	ds_load_u8 v184, v71 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v188, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v75, v71 offset:6528
	ds_load_u8 v76, v71 offset:6400
	ds_load_u8 v175, v71 offset:7104
	ds_load_u8 v189, v71 offset:6976
	ds_load_u8 v190, v71 offset:6848
	ds_load_u8 v191, v71 offset:6720
	v_lshl_or_b32 v137, v137, 16, v180
	ds_load_u8 v180, v71 offset:7616
	ds_load_u8 v185, v71 offset:7488
	ds_load_u8 v186, v71 offset:7360
	ds_load_u8 v187, v71 offset:7232
	v_wmma_i32_16x16x16_iu8 v[91:98], v[122:125], v[6:9], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v181, v181, v141, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v71 offset:6592
	ds_load_u8 v192, v71 offset:6464
	ds_load_u8 v193, v71 offset:6336
	ds_load_u8 v194, v71 offset:6208
	v_perm_b32 v71, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v184, v184, v77, 0xc0c0004
	v_perm_b32 v77, v104, v103, 0xc0c0004
	v_perm_b32 v103, v135, v134, 0xc0c0004
	v_perm_b32 v104, v108, v107, 0xc0c0004
	v_perm_b32 v105, v140, v139, 0xc0c0004
	v_perm_b32 v106, v138, v136, 0xc0c0004
	v_lshl_or_b32 v141, v77, 16, v71
	v_lshl_or_b32 v138, v72, 16, v74
	v_lshl_or_b32 v140, v104, 16, v103
	v_perm_b32 v103, v145, v144, 0xc0c0004
	v_lshl_or_b32 v139, v106, 16, v105
	v_perm_b32 v104, v143, v142, 0xc0c0004
	v_perm_b32 v105, v149, v148, 0xc0c0004
	v_perm_b32 v106, v147, v146, 0xc0c0004
	v_perm_b32 v108, v153, v152, 0xc0c0004
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_perm_b32 v135, v157, v156, 0xc0c0004
	v_perm_b32 v136, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v107, v76, v75, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[138:141], v[99:102], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v104, 16, v103
	v_lshl_or_b32 v144, v106, 16, v105
	v_lshl_or_b32 v143, v134, 16, v108
	v_lshl_or_b32 v142, v136, 16, v135
	v_perm_b32 v99, v161, v160, 0xc0c0004
	v_perm_b32 v100, v159, v158, 0xc0c0004
	v_perm_b32 v101, v165, v164, 0xc0c0004
	v_perm_b32 v102, v163, v162, 0xc0c0004
	v_perm_b32 v103, v169, v168, 0xc0c0004
	v_perm_b32 v104, v167, v166, 0xc0c0004
	v_perm_b32 v105, v173, v172, 0xc0c0004
	v_perm_b32 v106, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[142:145], v[79:82], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v100, 16, v99
	v_lshl_or_b32 v81, v102, 16, v101
	v_lshl_or_b32 v80, v104, 16, v103
	v_lshl_or_b32 v79, v106, 16, v105
	v_perm_b32 v99, v179, v178, 0xc0c0004
	v_perm_b32 v100, v177, v176, 0xc0c0004
	v_lshl_or_b32 v134, v107, 16, v184
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v191, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[6:9], v[71:78] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v187, v186, 0xc0c0004
	v_lshl_or_b32 v9, v100, 16, v99
	v_wmma_i32_16x16x16_iu8 v[99:106], v[114:117], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[138:141], v[110:113], v[83:90] neg_lo:[1,1,0]
	v_perm_b32 v7, v185, v180, 0xc0c0004
	v_perm_b32 v108, v189, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v194, v193, 0xc0c0004
	v_perm_b32 v111, v192, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[99:106], v[118:121], v[10:13], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[142:145], v[10:13], v[83:90] neg_lo:[1,1,0]
	v_lshl_or_b32 v136, v174, 16, v188
	v_lshl_or_b32 v135, v182, 16, v181
	v_lshl_or_b32 v8, v7, 16, v6
	v_lshl_or_b32 v7, v108, 16, v107
	v_lshl_or_b32 v6, v111, 16, v110
	v_wmma_i32_16x16x16_iu8 v[99:106], v[122:125], v[2:5], v[99:106] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[83:90], v[79:82], v[2:5], v[83:90] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[91:98], v[134:137], v[130:133], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[6:9], v[130:133], v[71:78] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[99:106], v[134:137], v[126:129], v[99:106] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[83:90], v[6:9], v[126:129], v[83:90] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v92
	v_cvt_f32_i32_e32 v3, v93
	v_cvt_f32_i32_e32 v4, v94
	v_cvt_f32_i32_e32 v5, v95
	v_cvt_f32_i32_e32 v6, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v8, v98
	v_cvt_f32_i32_e32 v9, v71
	v_cvt_f32_i32_e32 v10, v72
	v_cvt_f32_i32_e32 v11, v73
	v_cvt_f32_i32_e32 v13, v74
	v_cvt_f32_i32_e32 v71, v75
	v_cvt_f32_i32_e32 v72, v76
	v_cvt_f32_i32_e32 v73, v77
	v_cvt_f32_i32_e32 v74, v78
	v_cvt_f32_i32_e32 v75, v99
	v_cvt_f32_i32_e32 v76, v100
	v_cvt_f32_i32_e32 v77, v101
	v_cvt_f32_i32_e32 v78, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v80, v104
	v_cvt_f32_i32_e32 v81, v105
	v_cvt_f32_i32_e32 v82, v106
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v12, v91
.LBB0_9:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s22, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s22, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v91, v65, s4, 1
	v_add_lshl_u32 v92, v66, s4, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v93, v64, s4, 1
	v_add_lshl_u32 v101, v56, s4, 1
	v_add_lshl_u32 v94, v63, s4, 1
	v_add_lshl_u32 v102, v55, s4, 1
	v_add_lshl_u32 v95, v62, s4, 1
	v_add_lshl_u32 v103, v54, s4, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v96, v61, s4, 1
	v_add_lshl_u32 v104, v52, s4, 1
	v_add_lshl_u32 v97, v60, s4, 1
	v_add_lshl_u32 v98, v59, s4, 1
	v_add_lshl_u32 v99, v58, s4, 1
	v_add_lshl_u32 v100, v57, s4, 1
	v_add_lshl_u32 v105, v33, s4, 1
	v_add_lshl_u32 v106, v53, s4, 1
	v_add_lshl_u32 v107, v51, s4, 1
	v_add_lshl_u32 v108, v32, s4, 1
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	s_and_b32 s21, s21, 0xffff
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	s_clause 0xf
	buffer_load_u16 v93, v93, s[20:23], 0 offen
	buffer_load_u16 v94, v94, s[20:23], 0 offen
	buffer_load_u16 v95, v95, s[20:23], 0 offen
	buffer_load_u16 v96, v96, s[20:23], 0 offen
	buffer_load_u16 v97, v97, s[20:23], 0 offen
	buffer_load_u16 v98, v98, s[20:23], 0 offen
	buffer_load_u16 v99, v99, s[20:23], 0 offen
	buffer_load_u16 v100, v100, s[20:23], 0 offen
	buffer_load_u16 v101, v101, s[20:23], 0 offen
	buffer_load_u16 v102, v102, s[20:23], 0 offen
	buffer_load_u16 v103, v103, s[20:23], 0 offen
	buffer_load_u16 v104, v104, s[20:23], 0 offen
	buffer_load_u16 v105, v105, s[20:23], 0 offen
	buffer_load_u16 v106, v106, s[20:23], 0 offen
	buffer_load_u16 v107, v107, s[20:23], 0 offen
	buffer_load_u16 v108, v108, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	s_and_b32 s9, s9, 0xffff
	s_clause 0x1
	buffer_load_u16 v91, v91, s[8:11], 0 offen
	buffer_load_u16 v92, v92, s[8:11], 0 offen
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_mov_b32_e32 v140, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s12, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s44, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v111, v1 offset:1664
	ds_load_u8 v112, v1 offset:1536
	ds_load_u8 v113, v1 offset:1920
	ds_load_u8 v114, v1 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v109, s43, v70
	v_add_nc_u32_e32 v110, s43, v69
	v_add_nc_u32_e32 v117, s43, v68
	v_add_nc_u32_e32 v115, s43, v67
	ds_load_b128 v[67:70], v109 offset:2048
	ds_load_b128 v[125:128], v109
	ds_load_b128 v[141:144], v110 offset:2048
	ds_load_b128 v[129:132], v110
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v109, v1 offset:1152
	ds_load_u8 v110, v1 offset:1024
	ds_load_u8 v116, v1 offset:1408
	ds_load_u8 v118, v1 offset:1280
	ds_load_u8 v119, v1 offset:640
	ds_load_u8 v120, v1 offset:512
	ds_load_u8 v121, v1 offset:896
	ds_load_u8 v122, v1 offset:768
	ds_load_u8 v123, v1 offset:1984
	ds_load_u8 v124, v1 offset:1856
	ds_load_u8 v173, v1 offset:1728
	ds_load_u8 v174, v1 offset:1600
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v118, v116, 0xc0c0004
	v_perm_b32 v112, v114, v113, 0xc0c0004
	ds_load_u8 v113, v1 offset:128
	ds_load_u8 v114, v1
	ds_load_u8 v133, v1 offset:384
	ds_load_u8 v134, v1 offset:256
	ds_load_u8 v175, v1 offset:1472
	ds_load_u8 v177, v1 offset:1344
	ds_load_u8 v178, v1 offset:1216
	ds_load_u8 v179, v1 offset:1088
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v116, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v119, v122, v121, 0xc0c0004
	v_lshl_or_b32 v155, v110, 16, v109
	v_lshl_or_b32 v156, v112, 16, v111
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_lshl_or_b32 v154, v119, 16, v116
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_mov_b32_e32 v140, s19
	ds_load_u8 v111, v1 offset:3712
	ds_load_u8 v112, v1 offset:3584
	ds_load_u8 v113, v1 offset:3968
	ds_load_u8 v114, v1 offset:3840
	v_mov_b32_e32 v134, s13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[145:148], v115 offset:2048
	ds_load_b128 v[149:152], v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v153, v110, 16, v109
	ds_load_u8 v109, v1 offset:3200
	ds_load_u8 v110, v1 offset:3072
	ds_load_u8 v115, v1 offset:3456
	ds_load_u8 v116, v1 offset:3328
	ds_load_u8 v157, v1 offset:2688
	ds_load_u8 v158, v1 offset:2560
	ds_load_u8 v159, v1 offset:2944
	ds_load_u8 v160, v1 offset:2816
	ds_load_u8 v161, v1 offset:2176
	ds_load_u8 v162, v1 offset:2048
	ds_load_u8 v163, v1 offset:2432
	ds_load_u8 v164, v1 offset:2304
	ds_load_u8 v183, v1 offset:4032
	ds_load_u8 v184, v1 offset:3904
	ds_load_u8 v185, v1 offset:3776
	ds_load_u8 v186, v1 offset:3648
	ds_load_u8 v118, v1 offset:960
	ds_load_u8 v180, v1 offset:832
	ds_load_u8 v181, v1 offset:704
	ds_load_u8 v182, v1 offset:576
	ds_load_u8 v119, v1 offset:448
	ds_load_u8 v120, v1 offset:320
	ds_load_u8 v121, v1 offset:192
	ds_load_u8 v122, v1 offset:64
	v_mov_b32_e32 v136, s15
	ds_load_u8 v187, v1 offset:3520
	ds_load_u8 v188, v1 offset:3392
	ds_load_u8 v189, v1 offset:3264
	ds_load_u8 v190, v1 offset:3136
	ds_load_u8 v191, v1 offset:3008
	ds_load_u8 v192, v1 offset:2880
	ds_load_u8 v193, v1 offset:2752
	ds_load_u8 v194, v1 offset:2624
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v167, v110, v109, 0xc0c0004
	ds_load_u8 v195, v1 offset:2496
	ds_load_u8 v196, v1 offset:2368
	ds_load_u8 v197, v1 offset:2240
	ds_load_u8 v198, v1 offset:2112
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v168, v116, v115, 0xc0c0004
	ds_load_u8 v208, v1 offset:5056
	ds_load_u8 v209, v1 offset:4928
	ds_load_u8 v210, v1 offset:4800
	ds_load_u8 v211, v1 offset:4672
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	v_perm_b32 v124, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	v_lshl_or_b32 v159, v168, 16, v167
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v165, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v162, v164, v163, 0xc0c0004
	ds_load_u8 v163, v1 offset:5760
	ds_load_u8 v164, v1 offset:5632
	ds_load_u8 v169, v1 offset:6016
	ds_load_u8 v170, v1 offset:5888
	v_perm_b32 v166, v114, v113, 0xc0c0004
	v_lshl_or_b32 v158, v158, 16, v157
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v118, v180, v118, 0xc0c0004
	v_lshl_or_b32 v157, v162, 16, v161
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_lshl_or_b32 v160, v166, 16, v165
	ds_load_u8 v161, v1 offset:5248
	ds_load_u8 v162, v1 offset:5120
	ds_load_u8 v165, v1 offset:5504
	ds_load_u8 v166, v1 offset:5376
	ds_load_u8 v167, v1 offset:4736
	ds_load_u8 v168, v1 offset:4608
	ds_load_u8 v171, v1 offset:4992
	ds_load_u8 v172, v1 offset:4864
	ds_load_u8 v199, v1 offset:6080
	ds_load_u8 v200, v1 offset:5952
	ds_load_u8 v201, v1 offset:5824
	ds_load_u8 v202, v1 offset:5696
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_dual_mov_b32 v139, s18 :: v_dual_mov_b32 v138, s17
	v_mov_b32_e32 v137, s16
	v_mov_b32_e32 v135, s14
	v_mov_b32_e32 v133, s12
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v162, v166, v165, 0xc0c0004
	v_perm_b32 v164, v170, v169, 0xc0c0004
	ds_load_u8 v169, v1 offset:4224
	ds_load_u8 v170, v1 offset:4096
	ds_load_u8 v176, v1 offset:4480
	ds_load_u8 v203, v1 offset:4352
	ds_load_u8 v204, v1 offset:5568
	ds_load_u8 v205, v1 offset:5440
	ds_load_u8 v206, v1 offset:5312
	ds_load_u8 v207, v1 offset:5184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v165, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v166, v172, v171, 0xc0c0004
	ds_load_u8 v167, v1 offset:7808
	ds_load_u8 v168, v1 offset:7680
	ds_load_u8 v171, v1 offset:8064
	ds_load_u8 v172, v1 offset:7936
	ds_load_u8 v212, v1 offset:4544
	ds_load_u8 v213, v1 offset:4416
	ds_load_u8 v214, v1 offset:4288
	ds_load_u8 v215, v1 offset:4160
	v_lshl_or_b32 v164, v164, 16, v163
	v_lshl_or_b32 v163, v162, 16, v161
	v_wmma_i32_16x16x16_iu8 v[109:116], v[153:156], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v166, 16, v165
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[109:116], v[157:160], v[129:132], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v169, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v170, v203, v176, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v176, v168, v167, 0xc0c0004
	ds_load_u8 v203, v1 offset:7296
	ds_load_u8 v216, v1 offset:7168
	ds_load_u8 v217, v1 offset:7552
	ds_load_u8 v218, v1 offset:7424
	ds_load_u8 v219, v1 offset:8128
	ds_load_u8 v220, v1 offset:8000
	ds_load_u8 v221, v1 offset:7872
	ds_load_u8 v222, v1 offset:7744
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v223, v172, v171, 0xc0c0004
	v_lshl_or_b32 v161, v170, 16, v169
	ds_load_u8 v224, v1 offset:6784
	ds_load_u8 v225, v1 offset:6656
	ds_load_u8 v226, v1 offset:7040
	ds_load_u8 v227, v1 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[165:168], v117 offset:2048
	ds_load_b128 v[169:172], v117
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v117, v1 offset:6272
	ds_load_u8 v228, v1 offset:6144
	v_lshl_or_b32 v176, v223, 16, v176
	ds_load_u8 v223, v1 offset:7616
	ds_load_u8 v229, v1 offset:7488
	ds_load_u8 v230, v1 offset:7360
	ds_load_u8 v231, v1 offset:7232
	v_wmma_i32_16x16x16_iu8 v[109:116], v[161:164], v[125:128], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v203, v216, v203, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v216, v218, v217, 0xc0c0004
	ds_load_u8 v217, v1 offset:6528
	ds_load_u8 v218, v1 offset:6400
	ds_load_u8 v232, v1 offset:7104
	ds_load_u8 v233, v1 offset:6976
	ds_load_u8 v234, v1 offset:6848
	ds_load_u8 v235, v1 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v224, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v225, v227, v226, 0xc0c0004
	ds_load_u8 v226, v1 offset:6592
	ds_load_u8 v227, v1 offset:6464
	ds_load_u8 v236, v1 offset:6336
	ds_load_u8 v1, v1 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v228, v228, v117, 0xc0c0004
	v_perm_b32 v117, v174, v173, 0xc0c0004
	v_perm_b32 v173, v177, v175, 0xc0c0004
	v_perm_b32 v174, v182, v181, 0xc0c0004
	v_lshl_or_b32 v177, v119, 16, v121
	v_perm_b32 v175, v190, v189, 0xc0c0004
	v_lshl_or_b32 v180, v123, 16, v117
	v_lshl_or_b32 v179, v173, 16, v124
	v_lshl_or_b32 v178, v118, 16, v174
	v_perm_b32 v173, v186, v185, 0xc0c0004
	v_perm_b32 v174, v184, v183, 0xc0c0004
	v_perm_b32 v181, v188, v187, 0xc0c0004
	v_perm_b32 v182, v194, v193, 0xc0c0004
	v_perm_b32 v183, v192, v191, 0xc0c0004
	v_perm_b32 v184, v198, v197, 0xc0c0004
	v_perm_b32 v185, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[177:180], v[149:152], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v152, v174, 16, v173
	v_lshl_or_b32 v151, v181, 16, v175
	v_lshl_or_b32 v150, v183, 16, v182
	v_lshl_or_b32 v149, v185, 16, v184
	v_perm_b32 v173, v202, v201, 0xc0c0004
	v_perm_b32 v174, v200, v199, 0xc0c0004
	v_perm_b32 v175, v207, v206, 0xc0c0004
	v_perm_b32 v181, v205, v204, 0xc0c0004
	v_perm_b32 v182, v211, v210, 0xc0c0004
	v_perm_b32 v185, v209, v208, 0xc0c0004
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_perm_b32 v187, v213, v212, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[149:152], v[129:132], v[117:124] neg_lo:[1,1,0]
	v_lshl_or_b32 v184, v174, 16, v173
	v_lshl_or_b32 v183, v181, 16, v175
	v_lshl_or_b32 v182, v185, 16, v182
	v_lshl_or_b32 v181, v187, 16, v186
	v_perm_b32 v129, v222, v221, 0xc0c0004
	v_perm_b32 v130, v220, v219, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v217, v218, v217, 0xc0c0004
	v_perm_b32 v185, v231, v230, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[117:124], v[181:184], v[125:128], v[117:124] neg_lo:[1,1,0]
	v_perm_b32 v186, v229, v223, 0xc0c0004
	v_lshl_or_b32 v188, v130, 16, v129
	v_wmma_i32_16x16x16_iu8 v[125:132], v[153:156], v[145:148], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[177:180], v[145:148], v[133:140] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v189, v235, v234, 0xc0c0004
	v_perm_b32 v145, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v236, 0xc0c0004
	v_perm_b32 v146, v227, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[125:132], v[157:160], v[141:144], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[149:152], v[141:144], v[133:140] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v216, 16, v203
	v_lshl_or_b32 v174, v225, 16, v224
	v_lshl_or_b32 v173, v217, 16, v228
	v_lshl_or_b32 v187, v186, 16, v185
	v_lshl_or_b32 v186, v145, 16, v189
	v_lshl_or_b32 v185, v146, 16, v1
	v_wmma_i32_16x16x16_iu8 v[125:132], v[161:164], v[67:70], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[133:140], v[181:184], v[67:70], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[109:116], v[173:176], v[169:172], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[117:124], v[185:188], v[169:172], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[125:132], v[173:176], v[165:168], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[133:140], v[185:188], v[165:168], v[133:140] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v1, v109
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
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
.LBB0_11:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s41, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s22, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s5, s5, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s23, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s5, s41, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v69.h, v108.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s5, s5, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v93.h, v105.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s5, s42
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v65, v65, s5, 1
	v_add_lshl_u32 v66, v66, s5, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s5, s5, s35
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s6, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v64, v64, s5, 1
	v_add_lshl_u32 v63, v63, s5, 1
	v_add_lshl_u32 v62, v62, s5, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v61, v61, s5, 1
	v_add_lshl_u32 v60, v60, s5, 1
	v_add_lshl_u32 v59, v59, s5, 1
	v_add_lshl_u32 v58, v58, s5, 1
	v_add_lshl_u32 v57, v57, s5, 1
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v61, 0x80000000, v61
	v_dual_cndmask_b32 v60, 0x80000000, v60 :: v_dual_cndmask_b32 v59, 0x80000000, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v58, 0x80000000, v58 :: v_dual_cndmask_b32 v57, 0x80000000, v57
	v_add_lshl_u32 v56, v56, s5, 1
	v_add_lshl_u32 v55, v55, s5, 1
	s_clause 0x7
	buffer_load_u16 v64, v64, s[20:23], 0 offen
	buffer_load_u16 v63, v63, s[20:23], 0 offen
	buffer_load_u16 v62, v62, s[20:23], 0 offen
	buffer_load_u16 v61, v61, s[20:23], 0 offen
	buffer_load_u16 v60, v60, s[20:23], 0 offen
	buffer_load_u16 v59, v59, s[20:23], 0 offen
	buffer_load_u16 v58, v58, s[20:23], 0 offen
	buffer_load_u16 v57, v57, s[20:23], 0 offen
	v_add_lshl_u32 v54, v54, s5, 1
	v_add_lshl_u32 v52, v52, s5, 1
	v_add_lshl_u32 v33, v33, s5, 1
	v_add_lshl_u32 v53, v53, s5, 1
	v_add_lshl_u32 v51, v51, s5, 1
	v_dual_cndmask_b32 v56, 0x80000000, v56 :: v_dual_cndmask_b32 v55, 0x80000000, v55
	v_add_lshl_u32 v32, v32, s5, 1
	v_dual_cndmask_b32 v54, 0x80000000, v54 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	v_dual_cndmask_b32 v52, 0x80000000, v52 :: v_dual_cndmask_b32 v53, 0x80000000, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_clause 0x7
	buffer_load_u16 v56, v56, s[20:23], 0 offen
	buffer_load_u16 v55, v55, s[20:23], 0 offen
	buffer_load_u16 v54, v54, s[20:23], 0 offen
	buffer_load_u16 v52, v52, s[20:23], 0 offen
	buffer_load_u16 v67, v33, s[20:23], 0 offen
	buffer_load_u16 v53, v53, s[20:23], 0 offen
	buffer_load_u16 v51, v51, s[20:23], 0 offen
	buffer_load_u16 v68, v32, s[20:23], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_cndmask_b32 v66, 0x80000000, v66
	s_clause 0x1
	buffer_load_u16 v65, v65, s[8:11], 0 offen
	buffer_load_u16 v66, v66, s[8:11], 0 offen
	v_mov_b16_e32 v33.l, 0
	s_waitcnt vmcnt(18)
	v_mov_b16_e32 v33.h, v92.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v105.h, v93.l
	v_mov_b16_e32 v95.h, v103.l
	v_mov_b16_e32 v103.h, v95.l
	v_mov_b16_e32 v93.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v108, 2, v0
	v_bfe_i32 v109, v0, 0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v95.l, v33.l
	v_mov_b16_e32 v70.h, v107.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v145, v33, v93 :: v_dual_and_b32 v108, 0x78, v108
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v94.h, v104.l
	v_mov_b16_e32 v104.h, v94.l
	v_mov_b16_e32 v69.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v107, 14, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v94.l, v33.l
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v109, 0x840, v109
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v147, v33, v95
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v17, v17, 3, v108
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v92.h, v106.l
	v_mov_b16_e32 v96.h, v102.l
	v_mov_b16_e32 v97.h, v101.l
	v_mov_b16_e32 v98.h, v100.l
	v_mov_b16_e32 v99.h, v99.l
	v_mov_b16_e32 v100.h, v98.l
	v_mov_b16_e32 v101.h, v97.l
	v_mov_b16_e32 v102.h, v96.l
	v_mov_b16_e32 v70.l, v33.l
	v_mov_b16_e32 v92.l, v33.l
	v_mov_b16_e32 v96.l, v33.l
	v_mov_b16_e32 v97.l, v33.l
	v_mov_b16_e32 v98.l, v33.l
	v_mov_b16_e32 v99.l, v33.l
	v_mov_b16_e32 v100.l, v33.l
	v_mov_b16_e32 v101.l, v33.l
	v_mov_b16_e32 v102.l, v33.l
	v_mov_b16_e32 v103.l, v33.l
	v_mov_b16_e32 v104.l, v33.l
	v_mov_b16_e32 v105.l, v33.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v142, v33, v69 :: v_dual_lshlrev_b32 v141, 11, v107
	v_mul_f32_e32 v144, v33, v92
	v_mul_f32_e32 v146, v33, v94
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v17, v17, v109
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v143, v33, v70 :: v_dual_and_b32 v32, 0x7f, v0
	v_mul_f32_e32 v149, v33, v97
	v_mul_f32_e32 v150, v33, v98
	v_mul_f32_e32 v151, v33, v99
	v_mul_f32_e32 v152, v33, v100
	v_mul_f32_e32 v153, v33, v101
	v_mul_f32_e32 v154, v33, v102
	v_mul_f32_e32 v155, v33, v103
	v_mul_f32_e32 v156, v33, v104
	v_mul_f32_e32 v157, v33, v105
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_or3_b32 v17, v17, v141, v14
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v33, v96
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v33.h, v91.l
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v106, 7, v14
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s5, s40, s35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v156, v76, v36
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s5, s5, s34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v91, v33, v92
	v_mul_f32_e32 v92, v33, v93
	v_mul_f32_e32 v93, v33, v94
	v_mul_f32_e32 v94, v33, v95
	v_mul_f32_e32 v95, v33, v96
	v_mul_f32_e32 v96, v33, v97
	v_mul_f32_e32 v97, v33, v98
	v_mul_f32_e32 v98, v33, v99
	v_mul_f32_e32 v99, v33, v100
	v_mul_f32_e32 v100, v33, v101
	v_mul_f32_e32 v101, v33, v102
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v106, s35, v106
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v33, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v97, v8, v24
	v_fma_f32 v6, v99, v6, v22
	v_fma_f32 v4, v101, v4, v20
	v_fma_f32 v7, v98, v7, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v70, v33, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v24, v8, s3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s5, v32, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v20, v4, s3
	v_cndmask_b32_e64 v6, v22, v6, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v100, v5, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v7, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v95, v10, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v36, v76, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v76, v17, 40, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v147, v85, v46
	v_fma_f32 v86, v146, v86, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v26, v10, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v143, v89, v50
	v_fma_f32 v87, v145, v87, v48
	v_fma_f32 v90, v142, v90, v43
	v_fma_f32 v88, v144, v88, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v46, v85, s3
	v_cndmask_b32_e64 v47, v47, v86, s3
	v_cndmask_b32_e64 v50, v50, v89, s3
	v_cndmask_b32_e64 v48, v48, v87, s3
	v_cndmask_b32_e64 v43, v43, v90, s3
	v_cndmask_b32_e64 v49, v49, v88, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v20, 16, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v157, v75, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v102, v33, v103
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v103, v33, v104 :: v_dual_lshlrev_b32 v22, 16, v57
	v_mul_f32_e32 v104, v33, v105
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v35, v75, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v24, 16, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v35, v69, v74, v34
	v_fma_f32 v69, v91, v72, v30
	v_fma_f32 v72, v103, v2, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v26, 16, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v93, v13, v28
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v96, v9, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v18, v72, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v18, 16, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v155, v77, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v69, s3
	v_cndmask_b32_e64 v25, v25, v9, s3
	v_cndmask_b32_e64 v9, v21, v5, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v21, 16, v58
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v77, v37, v77, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v70, v73, v31
	v_fma_f32 v70, v92, v71, v29
	v_fma_f32 v71, v102, v3, v19
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b64 v[2:3], 2, v[32:33]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v34, v35, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v35, 16, v52
	v_lshlrev_b32_e32 v52, 16, v53
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v53, 16, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v94, v11, v27
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_co_u32 v33, vcc_lo, s0, v2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v154, v78, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v11, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v151, v81, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v37, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v2, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v104, v12, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v78, s3
	v_cndmask_b32_e64 v29, v29, v70, s3
	v_cndmask_b32_e64 v13, v28, v13, s3
	v_cndmask_b32_e64 v5, v19, v71, s3
	v_cndmask_b32_e64 v11, v16, v12, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v153, v79, v39
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_add_nc_u32_e32 v69, 0, v17
	v_xad_u32 v70, v17, 8, 0
	v_xad_u32 v71, v17, 16, 0
	v_xad_u32 v72, v17, 24, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v79, s3
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v74, v17, 32, 0
	v_xad_u32 v78, v17, 48, 0
	v_xad_u32 v79, v17, 56, 0
	v_add_co_ci_u32_e64 v34, null, s1, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v66
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v12, 16, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v83, v149, v83, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v17, 16, v62
	v_lshlrev_b32_e32 v19, 16, v60
	v_lshlrev_b32_e32 v28, 16, v54
	v_lshlrev_b32_e32 v37, 16, v67
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v148, v84, v45
	v_fma_f32 v82, v150, v82, v42
	v_fma_f32 v80, v152, v80, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v83, s3
	v_cndmask_b32_e64 v41, v41, v81, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v2, v12
	v_mul_f32_e32 v55, v2, v16
	v_mul_f32_e32 v56, v2, v17
	v_mul_f32_e32 v57, v2, v18
	v_mul_f32_e32 v58, v2, v19
	v_mul_f32_e32 v59, v2, v20
	v_dual_mul_f32 v60, v2, v21 :: v_dual_mul_f32 v19, v3, v19
	v_dual_mul_f32 v62, v2, v24 :: v_dual_mul_f32 v17, v3, v17
	v_dual_mul_f32 v63, v2, v26 :: v_dual_mul_f32 v12, v3, v12
	v_dual_mul_f32 v64, v2, v28 :: v_dual_mul_f32 v21, v3, v21
	v_dual_mul_f32 v65, v2, v35 :: v_dual_mul_f32 v16, v3, v16
	v_dual_mul_f32 v66, v2, v37 :: v_dual_mul_f32 v35, v3, v35
	v_dual_mul_f32 v67, v2, v52 :: v_dual_mul_f32 v18, v3, v18
	v_dual_mul_f32 v68, v2, v51 :: v_dual_mul_f32 v37, v3, v37
	v_dual_mul_f32 v2, v2, v53 :: v_dual_mul_f32 v51, v3, v51
	v_mul_f32_e32 v24, v3, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v45, v84, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v3, v26
	v_mul_f32_e32 v28, v3, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v82, s3
	v_cndmask_b32_e64 v40, v40, v80, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v20, v3, v20
	v_mul_f32_e32 v22, v3, v22
	v_mul_f32_e32 v52, v3, v52
	v_mul_f32_e32 v3, v3, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v54, v1, v11
	v_fma_f32 v53, v55, v110, v7
	v_fma_f32 v54, v56, v111, v5
	v_fma_f32 v55, v57, v112, v4
	v_fma_f32 v56, v58, v113, v9
	v_fma_f32 v57, v59, v114, v6
	v_fma_f32 v58, v60, v115, v23
	v_fma_f32 v60, v62, v117, v25
	v_fma_f32 v2, v2, v124, v73
	v_fma_f32 v12, v12, v125, v75
	v_fma_f32 v17, v17, v127, v77
	v_fma_f32 v21, v21, v131, v41
	v_fma_f32 v82, v24, v133, v44
	v_fma_f32 v59, v61, v116, v8
	v_fma_f32 v61, v63, v118, v10
	v_fma_f32 v63, v65, v120, v13
	v_fma_f32 v65, v67, v122, v30
	v_fma_f32 v67, v16, v126, v36
	v_fma_f32 v83, v26, v134, v45
	v_fma_f32 v62, v64, v119, v27
	v_fma_f32 v84, v28, v135, v46
	v_fma_f32 v64, v66, v121, v29
	v_fma_f32 v66, v68, v123, v31
	v_fma_f32 v68, v18, v128, v38
	v_fma_f32 v85, v35, v136, v47
	v_fma_f32 v19, v19, v129, v39
	v_fma_f32 v86, v37, v137, v48
	v_fma_f32 v51, v51, v139, v50
	v_fma_f32 v80, v20, v130, v40
	v_fma_f32 v81, v22, v132, v42
	v_fma_f32 v52, v52, v138, v49
	v_fma_f32 v87, v3, v140, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v11, v1, s2
	v_cndmask_b32_e64 v11, v6, v57, s2
	v_cndmask_b32_e64 v20, v25, v60, s2
	v_cndmask_b32_e64 v37, v73, v2, s2
	v_cndmask_b32_e64 v2, v75, v12, s2
	v_cndmask_b32_e64 v6, v77, v17, s2
	v_cndmask_b32_e64 v17, v41, v21, s2
	v_cndmask_b32_e64 v21, v44, v82, s2
	v_cndmask_b32_e64 v3, v7, v53, s2
	v_cndmask_b32_e64 v7, v4, v55, s2
	v_cndmask_b32_e64 v16, v23, v58, s2
	v_cndmask_b32_e64 v22, v10, v61, s2
	v_cndmask_b32_e64 v4, v36, v67, s2
	v_cndmask_b32_e64 v23, v45, v83, s2
	v_cndmask_b32_e64 v5, v5, v54, s2
	v_cndmask_b32_e64 v24, v27, v62, s2
	v_cndmask_b32_e64 v25, v46, v84, s2
	v_cndmask_b32_e64 v18, v8, v59, s2
	v_cndmask_b32_e64 v26, v13, v63, s2
	v_cndmask_b32_e64 v8, v38, v68, s2
	v_cndmask_b32_e64 v27, v47, v85, s2
	v_cndmask_b32_e64 v9, v9, v56, s2
	v_cndmask_b32_e64 v28, v29, v64, s2
	v_cndmask_b32_e64 v10, v39, v19, s2
	v_cndmask_b32_e64 v29, v48, v86, s2
	v_cndmask_b32_e64 v36, v50, v51, s2
	v_cndmask_b32_e64 v30, v30, v65, s2
	v_cndmask_b32_e64 v35, v31, v66, s2
	v_cndmask_b32_e64 v12, v40, v80, s2
	v_cndmask_b32_e64 v19, v42, v81, s2
	v_cndmask_b32_e64 v31, v49, v52, s2
	v_cndmask_b32_e64 v38, v43, v87, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v69, v[1:2], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v70, v[3:4], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v71, v[5:6], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v72, v[7:8], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v74, v[9:10], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v76, v[11:12], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v78, v[16:17], v[35:36] offset1:2
	ds_store_2addr_stride64_b64 v79, v[18:19], v[37:38] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	v_and_b32_e32 v2, 0x700, v15
	v_lshlrev_b32_e32 v3, 2, v107
	v_cndmask_b32_e64 v1, 0x840, 0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v1, v0
	v_or3_b32 v0, v2, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_12:                               ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v35, v36, v28
	global_atomic_cmpswap_b32 v35, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v35, v36
	v_mov_b32_e32 v36, v35
	s_or_b32 s4, vcc_lo, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s4
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 1, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_14:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v35, v36, v24
	global_atomic_cmpswap_b32 v28, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v36
	v_mov_b32_e32 v36, v28
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 2, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_16:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v35, v36, v20
	global_atomic_cmpswap_b32 v24, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v36
	v_mov_b32_e32 v36, v24
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 6, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_18:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v35, v36, v16
	global_atomic_cmpswap_b32 v20, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v36
	v_mov_b32_e32 v36, v20
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 3, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_20:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v35, v36, v12
	global_atomic_cmpswap_b32 v16, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v36
	v_mov_b32_e32 v36, v16
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 10, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_22:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v35, v36, v8
	global_atomic_cmpswap_b32 v12, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v36
	v_mov_b32_e32 v36, v12
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 12, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_24:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v35, v36, v4
	global_atomic_cmpswap_b32 v8, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v36
	v_mov_b32_e32 v36, v8
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 14, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_26:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v35, v36, v0
	global_atomic_cmpswap_b32 v4, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v36
	v_mov_b32_e32 v36, v4
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s35, 4, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_28:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v30
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 18, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_30:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v26
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 20, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_32:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v22
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 22, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_34:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v18
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 24, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_36:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v14
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 26, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_38:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v10
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 28, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_40:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v6
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[33:34], null, s35, 30, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	v_add_co_u32 v33, vcc_lo, s0, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_42:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v2
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v33, s33, v32
	s_mov_b32 s2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v34, 31, v33
	v_lshlrev_b64 v[33:34], 2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v33, vcc_lo, s0, v33
	v_add_co_ci_u32_e64 v34, null, s1, v34, vcc_lo
	global_load_b32 v36, v[33:34], off
.LBB0_44:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v35, v36, v29
	global_atomic_cmpswap_b32 v0, v[33:34], v[35:36], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v36
	v_mov_b32_e32 v36, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s35, 34, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s0, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s1, v29, vcc_lo
	global_load_b32 v34, v[28:29], off
.LBB0_46:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v33, v34, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[33:34], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v34
	v_mov_b32_e32 v34, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s35, 36, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s0, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s1, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_48:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s35, 38, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s0, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s1, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_50:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s35, 40, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s0, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s1, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_52:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s35, 42, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s0, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s1, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_54:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s35, 44, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s0, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s1, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_56:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s35, 46, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s0, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s1, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_58:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 48, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 50, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 52, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 54, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 56, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 58, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 60, v[32:33]
	s_mov_b32 s2, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_72:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_72
; %bb.73:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s35, 62, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v0, vcc_lo, s0, v0
	v_add_co_ci_u32_e64 v1, null, s1, v1, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v5, v[0:1], off
.LBB0_74:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_74
; %bb.75:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16704
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 256
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
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
