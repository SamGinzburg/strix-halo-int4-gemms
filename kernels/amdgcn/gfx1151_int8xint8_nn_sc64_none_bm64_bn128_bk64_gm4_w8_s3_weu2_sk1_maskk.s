	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[30:31], s[0:1], 0x30
	s_load_b32 s15, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 2, v0
	s_load_b256 s[20:27], s[0:1], 0x0
	v_lshlrev_b32_e32 v67, 4, v0
	v_lshrrev_b32_e32 v68, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v238, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v71, 15, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v69, 48, v67
	v_or_b32_e32 v70, 32, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v72, 48, v238
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v44, v68, 16, v71
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v46, 32, v44
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s31, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s30, 63
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
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v2, s15, v2
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b64 s[16:17], s[22:23]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b64 s[12:13], s[26:27]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
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
	s_lshl_b32 s7, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s7
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s6, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v67
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[9:10], null, s31, v68, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v73, s31, 5, v9
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s6
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s10, s4
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s14, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s3, s4, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s8, s15, 63
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s3, s9
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s4, s8, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s9, s3, s6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s14, v69
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s9
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v3, s14, v68
	v_or_b32_e32 v4, s14, v70
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s4, s4, 26
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s7
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s30, s3, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s8, s4
.Ltmp19:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s5, s31, s14
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s8, 63
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s15, v1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s15, v3
	v_cmp_gt_i32_e64 s4, s15, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s30, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s7, s33, s15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v74, v2, v69, s7
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s4, s4, s2
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s3, s3, s2
	s_cmpk_gt_i32 s8, 0x7f
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s14, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s5, v73
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s14, v74
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v4, s34, v69
	v_or_b32_e32 v5, s34, v68
	v_or_b32_e32 v6, s34, v70
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_lshl_b32 s4, s31, 6
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s15, v4
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s34, v74
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s5, s5, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s15, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v1, s[16:19], 0 offen
	buffer_load_b128 v[23:26], v2, s[16:19], 0 offen
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s5, v9
	v_add_nc_u32_e32 v2, s5, v73
	.loc	1 344 23 is_stmt 1              ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s5, s15, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[27:30], v3, s[20:23], 0 offen
	v_cndmask_b32_e32 v3, 0x80000000, v7, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_mov_b32 s4, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s5, s3
	s_cmpk_gt_i32 s8, 0xbf
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[31:34], v3, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[35:38], v1, s[16:19], 0 offen
	buffer_load_b128 v[39:42], v2, s[16:19], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v43, 0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v2, v1, 1, v72
	v_lshlrev_b32_e32 v1, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v75, v67, v3
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v6, 2, v2
	v_or_b32_e32 v7, 4, v2
	v_or_b32_e32 v8, 6, v2
	v_or_b32_e32 v10, 8, v2
	v_or_b32_e32 v11, 10, v2
	v_or_b32_e32 v12, 12, v2
	v_or_b32_e32 v13, 14, v2
	v_or_b32_e32 v14, 64, v2
	v_or_b32_e32 v15, 0x42, v2
	v_or_b32_e32 v16, 0x44, v2
	v_or_b32_e32 v17, 0x46, v2
	v_or_b32_e32 v18, 0x48, v2
	v_or_b32_e32 v3, 0x4a, v2
	v_or_b32_e32 v4, 0x4c, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v47, 0, v75
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0x4e, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v43, v[23:26] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[27:30] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v43, v[19:22]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[31:34] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v43, v[35:38] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v43, v[39:42] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v19, 0x430, v1
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v71, 6, v19
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr63
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr66
                                        ; implicit-def: $vgpr64
.LBB0_3:                                ; %Flow161
	s_load_b64 s[28:29], s[0:1], 0x20
	v_or_b32_e32 v19, s33, v44
	v_or_b32_e32 v20, s33, v46
	s_ashr_i32 s35, s6, 6
	v_or_b32_e32 v60, s30, v2
	v_or_b32_e32 v59, s30, v6
	v_mul_lo_u32 v61, v19, s35
	v_mul_lo_u32 v62, v20, s35
	v_or_b32_e32 v58, s30, v7
	v_or_b32_e32 v57, s30, v8
	v_or_b32_e32 v56, s30, v10
	v_or_b32_e32 v55, s30, v11
	v_or_b32_e32 v54, s30, v12
	v_or_b32_e32 v53, s30, v13
	v_or_b32_e32 v52, s30, v14
	v_or_b32_e32 v51, s30, v15
	v_or_b32_e32 v50, s30, v16
	v_or_b32_e32 v49, s30, v17
	v_or_b32_e32 v47, s30, v18
	v_or_b32_e32 v48, s30, v3
	v_or_b32_e32 v18, s30, v4
	v_or_b32_e32 v19, s30, v5
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v20, 0 :: v_dual_and_b32 v1, 0x430, v1
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v71, 6, v1
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_xor_b32_e32 v65, 16, v63
	v_xor_b32_e32 v66, 32, v63
	v_xor_b32_e32 v64, 48, v63
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_max_i32 s44, s35, 3
	s_add_i32 s27, s34, 64
	s_and_b32 s37, s25, 0xffff
	s_mov_b32 s36, s24
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_add_i32 s44, s44, -3
	s_mov_b32 s45, 1
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s7, s4
	s_mov_b32 s4, s1
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s1, s5, 6
	s_mov_b32 s6, s26
	s_mov_b32 s26, s0
	s_mov_b32 s0, s14
	s_mov_b32 s14, s34
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s27, s1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v81, s34, v69
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v77, s6, v63
	v_add_nc_u32_e32 v78, s6, v65
	v_add_nc_u32_e32 v79, s6, v66
	v_add_nc_u32_e32 v80, s6, v64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s6, s34, s31
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v82, s34, v68
	v_or_b32_e32 v83, s34, v70
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s6, s6, s30
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v84, s34, v74
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v85, s6, v9
	v_add_nc_u32_e32 v86, s6, v73
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s6, s0, 6
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s15, v81
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s15, v82
	v_cmp_gt_i32_e64 s1, s15, v83
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s6, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v82, v61, s6, 1
	v_add_lshl_u32 v83, v62, s6, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s6, s6, s31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v81, 0x80000000, v84, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v87, v59, s6, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v84, v60, s6, 1
	v_add_lshl_u32 v89, v57, s6, 1
	v_add_lshl_u32 v88, v58, s6, 1
	v_add_lshl_u32 v90, v56, s6, 1
	v_add_lshl_u32 v91, v55, s6, 1
	v_add_lshl_u32 v96, v54, s6, 1
	v_add_lshl_u32 v97, v53, s6, 1
	v_add_lshl_u32 v98, v52, s6, 1
	v_add_lshl_u32 v99, v51, s6, 1
	v_add_lshl_u32 v100, v50, s6, 1
	v_add_lshl_u32 v101, v49, s6, 1
	v_add_lshl_u32 v102, v47, s6, 1
	v_add_lshl_u32 v103, v48, s6, 1
	v_add_lshl_u32 v104, v18, s6, 1
	v_add_lshl_u32 v105, v19, s6, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v84, 0x80000000, v84 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_cndmask_b32_e32 v90, 0x80000000, v90, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[108:111], v81, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v188, v82, s[36:39], 0 offen
	buffer_load_u16 v189, v83, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v190, v87, s[40:43], 0 offen
	buffer_load_u16 v191, v84, s[40:43], 0 offen
	buffer_load_u16 v192, v89, s[40:43], 0 offen
	buffer_load_u16 v193, v88, s[40:43], 0 offen
	buffer_load_u16 v194, v91, s[40:43], 0 offen
	buffer_load_u16 v195, v90, s[40:43], 0 offen
	buffer_load_u16 v196, v97, s[40:43], 0 offen
	buffer_load_u16 v197, v96, s[40:43], 0 offen
	buffer_load_u16 v198, v99, s[40:43], 0 offen
	buffer_load_u16 v199, v98, s[40:43], 0 offen
	buffer_load_u16 v200, v101, s[40:43], 0 offen
	buffer_load_u16 v201, v100, s[40:43], 0 offen
	buffer_load_u16 v202, v103, s[40:43], 0 offen
	buffer_load_u16 v203, v102, s[40:43], 0 offen
	buffer_load_u16 v204, v105, s[40:43], 0 offen
	buffer_load_u16 v205, v104, s[40:43], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v85, 0x80000000, v85, s0
	v_cndmask_b32_e64 v86, 0x80000000, v86, s1
	s_clause 0x1
	buffer_load_b128 v[140:143], v85, s[16:19], 0 offen
	buffer_load_b128 v[144:147], v86, s[16:19], 0 offen
	v_add3_u32 v76, s7, v71, v72
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[92:95], v77
	ds_load_b128 v[112:115], v77 offset:2048
	ds_load_b128 v[116:119], v78
	ds_load_b128 v[120:123], v78 offset:2048
	ds_load_b128 v[124:127], v79
	ds_load_b128 v[128:131], v79 offset:2048
	ds_load_b128 v[132:135], v80
	ds_load_b128 v[136:139], v80 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v77, v76 offset:3712
	ds_load_u8 v78, v76 offset:3584
	ds_load_u8 v79, v76 offset:3968
	ds_load_u8 v80, v76 offset:7296
	ds_load_u8 v81, v76 offset:7168
	ds_load_u8 v106, v76 offset:7552
	ds_load_u8 v107, v76 offset:7424
	ds_load_u8 v148, v76 offset:6784
	ds_load_u8 v149, v76 offset:6656
	ds_load_u8 v150, v76 offset:7040
	ds_load_u8 v151, v76 offset:6912
	ds_load_u8 v152, v76 offset:6272
	ds_load_u8 v153, v76 offset:6144
	ds_load_u8 v154, v76 offset:6528
	ds_load_u8 v155, v76 offset:6400
	ds_load_u8 v156, v76 offset:1664
	ds_load_u8 v157, v76 offset:1536
	ds_load_u8 v158, v76 offset:1920
	ds_load_u8 v159, v76 offset:1792
	ds_load_u8 v160, v76 offset:1984
	ds_load_u8 v161, v76 offset:1856
	ds_load_u8 v162, v76 offset:1728
	ds_load_u8 v163, v76 offset:1600
	ds_load_u8 v164, v76 offset:1152
	ds_load_u8 v165, v76 offset:1024
	ds_load_u8 v166, v76 offset:1408
	ds_load_u8 v167, v76 offset:1280
	ds_load_u8 v168, v76 offset:1472
	ds_load_u8 v169, v76 offset:1344
	ds_load_u8 v170, v76 offset:1216
	ds_load_u8 v171, v76 offset:1088
	ds_load_u8 v172, v76 offset:640
	ds_load_u8 v173, v76 offset:512
	ds_load_u8 v174, v76 offset:896
	ds_load_u8 v175, v76 offset:768
	ds_load_u8 v176, v76 offset:960
	ds_load_u8 v177, v76 offset:832
	ds_load_u8 v178, v76 offset:704
	ds_load_u8 v179, v76 offset:576
	ds_load_u8 v180, v76 offset:128
	ds_load_u8 v181, v76
	ds_load_u8 v182, v76 offset:384
	ds_load_u8 v183, v76 offset:256
	ds_load_u8 v184, v76 offset:448
	ds_load_u8 v185, v76 offset:320
	ds_load_u8 v186, v76 offset:192
	ds_load_u8 v187, v76 offset:64
	ds_load_u8 v82, v76 offset:3840
	ds_load_u8 v83, v76 offset:4032
	ds_load_u8 v84, v76 offset:3904
	ds_load_u8 v87, v76 offset:3776
	ds_load_u8 v88, v76 offset:3648
	ds_load_u8 v89, v76 offset:3200
	ds_load_u8 v90, v76 offset:3072
	ds_load_u8 v91, v76 offset:3456
	ds_load_u8 v96, v76 offset:3328
	ds_load_u8 v97, v76 offset:3520
	ds_load_u8 v98, v76 offset:3392
	ds_load_u8 v99, v76 offset:3264
	ds_load_u8 v85, v76 offset:3136
	ds_load_u8 v86, v76 offset:2688
	ds_load_u8 v100, v76 offset:2560
	ds_load_u8 v101, v76 offset:2944
	ds_load_u8 v102, v76 offset:2816
	ds_load_u8 v103, v76 offset:3008
	ds_load_u8 v104, v76 offset:2880
	ds_load_u8 v105, v76 offset:2752
	ds_load_u8 v206, v76 offset:2624
	ds_load_u8 v207, v76 offset:2176
	ds_load_u8 v208, v76 offset:2048
	ds_load_u8 v209, v76 offset:2432
	ds_load_u8 v210, v76 offset:2304
	ds_load_u8 v211, v76 offset:2496
	ds_load_u8 v212, v76 offset:2368
	ds_load_u8 v213, v76 offset:2240
	ds_load_u8 v214, v76 offset:2112
	ds_load_u8 v215, v76 offset:5760
	ds_load_u8 v216, v76 offset:5632
	ds_load_u8 v217, v76 offset:6016
	ds_load_u8 v218, v76 offset:5888
	ds_load_u8 v219, v76 offset:6080
	ds_load_u8 v220, v76 offset:5952
	ds_load_u8 v221, v76 offset:5824
	ds_load_u8 v222, v76 offset:5696
	ds_load_u8 v223, v76 offset:5248
	ds_load_u8 v224, v76 offset:5120
	ds_load_u8 v225, v76 offset:5504
	ds_load_u8 v226, v76 offset:5376
	ds_load_u8 v227, v76 offset:5568
	ds_load_u8 v228, v76 offset:5440
	ds_load_u8 v229, v76 offset:5312
	ds_load_u8 v230, v76 offset:5184
	ds_load_u8 v231, v76 offset:4736
	ds_load_u8 v232, v76 offset:4608
	ds_load_u8 v233, v76 offset:4992
	ds_load_u8 v234, v76 offset:4864
	ds_load_u8 v235, v76 offset:5056
	ds_load_u8 v236, v76 offset:4928
	ds_load_u8 v237, v76 offset:4800
	ds_load_u8 v238, v76 offset:4672
	ds_load_u8 v239, v76 offset:4224
	ds_load_u8 v240, v76 offset:4096
	ds_load_u8 v241, v76 offset:4480
	ds_load_u8 v242, v76 offset:4352
	ds_load_u8 v243, v76 offset:4544
	ds_load_u8 v244, v76 offset:4416
	ds_load_u8 v245, v76 offset:4288
	ds_load_u8 v246, v76 offset:4160
	ds_load_u8 v247, v76 offset:7808
	ds_load_u8 v248, v76 offset:7680
	ds_load_u8 v249, v76 offset:8064
	ds_load_u8 v250, v76 offset:7936
	ds_load_u8 v251, v76 offset:8128
	ds_load_u8 v252, v76 offset:8000
	ds_load_u8 v253, v76 offset:7872
	ds_load_u8 v254, v76 offset:7744
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v76 offset:7616
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v76 offset:7488
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v76 offset:7360
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v76 offset:7232
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v76 offset:7104
	v_perm_b32 v174, v175, v174, 0xc0c0004
	ds_load_u8 v175, v76 offset:6976
	v_perm_b32 v180, v181, v180, 0xc0c0004
	ds_load_u8 v181, v76 offset:6848
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v76 offset:6720
	v_perm_b32 v77, v78, v77, 0xc0c0004
	ds_load_u8 v78, v76 offset:6592
	v_perm_b32 v79, v82, v79, 0xc0c0004
	ds_load_u8 v82, v76 offset:6464
	v_perm_b32 v89, v90, v89, 0xc0c0004
	ds_load_u8 v90, v76 offset:6336
	ds_load_u8 v76, v76 offset:6208
	v_perm_b32 v162, v163, v162, 0xc0c0004
	v_perm_b32 v160, v161, v160, 0xc0c0004
	v_perm_b32 v161, v171, v170, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	v_perm_b32 v169, v179, v178, 0xc0c0004
	v_perm_b32 v170, v177, v176, 0xc0c0004
	v_perm_b32 v171, v187, v186, 0xc0c0004
	v_perm_b32 v176, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v91, v96, v91, 0xc0c0004
	v_perm_b32 v86, v100, v86, 0xc0c0004
	v_perm_b32 v96, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v207, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v208, v210, v209, 0xc0c0004
	v_perm_b32 v80, v81, v80, 0xc0c0004
	v_perm_b32 v81, v107, v106, 0xc0c0004
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v83, v84, v83, 0xc0c0004
	v_perm_b32 v84, v85, v99, 0xc0c0004
	v_perm_b32 v85, v98, v97, 0xc0c0004
	v_perm_b32 v88, v206, v105, 0xc0c0004
	v_perm_b32 v97, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v98, v214, v213, 0xc0c0004
	v_perm_b32 v99, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v90, 0xc0c0004
	v_perm_b32 v78, v82, v78, 0xc0c0004
	v_lshl_or_b32 v103, v158, 16, v156
	v_lshl_or_b32 v102, v166, 16, v164
	v_lshl_or_b32 v101, v174, 16, v172
	v_lshl_or_b32 v100, v182, 16, v180
	v_lshl_or_b32 v163, v160, 16, v162
	v_lshl_or_b32 v162, v168, 16, v161
	v_lshl_or_b32 v161, v170, 16, v169
	v_lshl_or_b32 v160, v176, 16, v171
	v_perm_b32 v209, v216, v215, 0xc0c0004
	v_perm_b32 v210, v218, v217, 0xc0c0004
	v_perm_b32 v215, v224, v223, 0xc0c0004
	v_perm_b32 v216, v226, v225, 0xc0c0004
	v_perm_b32 v217, v232, v231, 0xc0c0004
	v_perm_b32 v218, v234, v233, 0xc0c0004
	v_perm_b32 v223, v240, v239, 0xc0c0004
	v_perm_b32 v224, v242, v241, 0xc0c0004
	v_perm_b32 v106, v149, v148, 0xc0c0004
	v_perm_b32 v107, v151, v150, 0xc0c0004
	v_perm_b32 v104, v222, v221, 0xc0c0004
	v_perm_b32 v105, v220, v219, 0xc0c0004
	v_perm_b32 v177, v230, v229, 0xc0c0004
	v_perm_b32 v178, v228, v227, 0xc0c0004
	v_perm_b32 v179, v238, v237, 0xc0c0004
	v_perm_b32 v184, v236, v235, 0xc0c0004
	v_perm_b32 v185, v246, v245, 0xc0c0004
	v_perm_b32 v186, v244, v243, 0xc0c0004
	v_perm_b32 v211, v167, v165, 0xc0c0004
	v_lshl_or_b32 v151, v79, 16, v77
	v_lshl_or_b32 v150, v91, 16, v89
	v_lshl_or_b32 v149, v96, 16, v86
	v_lshl_or_b32 v148, v208, 16, v207
	v_lshl_or_b32 v158, v81, 16, v80
	v_lshl_or_b32 v167, v83, 16, v87
	v_lshl_or_b32 v166, v85, 16, v84
	v_lshl_or_b32 v165, v97, 16, v88
	v_lshl_or_b32 v164, v99, 16, v98
	v_lshl_or_b32 v172, v78, 16, v76
	v_wmma_i32_16x16x16_iu8 v[76:83], v[100:103], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[160:163], v[92:95], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v231, v153, v152, 0xc0c0004
	v_perm_b32 v232, v155, v154, 0xc0c0004
	v_perm_b32 v212, v159, v157, 0xc0c0004
	v_lshl_or_b32 v155, v210, 16, v209
	v_lshl_or_b32 v154, v216, 16, v215
	v_lshl_or_b32 v153, v218, 16, v217
	v_lshl_or_b32 v152, v224, 16, v223
	v_lshl_or_b32 v157, v107, 16, v106
	v_lshl_or_b32 v171, v105, 16, v104
	v_lshl_or_b32 v170, v178, 16, v177
	v_lshl_or_b32 v169, v184, 16, v179
	v_lshl_or_b32 v168, v186, 16, v185
	v_wmma_i32_16x16x16_iu8 v[92:99], v[100:103], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[160:163], v[112:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[148:151], v[116:119], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[164:167], v[116:119], v[84:91] neg_lo:[1,1,0]
	v_perm_b32 v225, v248, v247, 0xc0c0004
	v_perm_b32 v226, v250, v249, 0xc0c0004
	v_perm_b32 v187, v254, v253, 0xc0c0004
	v_perm_b32 v206, v252, v251, 0xc0c0004
	v_perm_b32 v181, v183, v181, 0xc0c0004
	v_perm_b32 v173, v175, v173, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[92:99], v[148:151], v[120:123], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[164:167], v[120:123], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[76:83], v[152:155], v[124:127], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[168:171], v[124:127], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v159, v226, 16, v225
	v_lshl_or_b32 v156, v232, 16, v231
	v_lshl_or_b32 v175, v206, 16, v187
	v_lshl_or_b32 v174, v212, 16, v211
	v_lshl_or_b32 v173, v173, 16, v181
	v_wmma_i32_16x16x16_iu8 v[92:99], v[152:155], v[128:131], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[128:131], v[100:107] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s45, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[76:83], v[156:159], v[132:135], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[84:91], v[172:175], v[132:135], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[156:159], v[136:139], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[172:175], v[136:139], v[100:107] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s6, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s6, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v76, v76
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s45, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v79, v79
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s7, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
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
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v106, v106
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s6, s5, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s7, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s5, s44
	s_mov_b32 s5, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v112, 16, v188
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v125, 16, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v148, v125, v112 :: v_dual_lshlrev_b32 v123, 16, v199
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v122, 16, v198
	v_lshlrev_b32_e32 v121, 16, v197
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v113, 16, v189
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v138, v123, v112 :: v_dual_lshlrev_b32 v119, 16, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v136, v121, v112 :: v_dual_add_nc_u32 v45, s1, v67
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v123, v113, v123 :: v_dual_lshlrev_b32 v126, 16, v202
	v_dual_mul_f32 v139, v122, v112 :: v_dual_mul_f32 v122, v113, v122
	v_dual_mul_f32 v121, v113, v121 :: v_dual_lshlrev_b32 v120, 16, v196
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v117, 16, v193
	v_lshlrev_b32_e32 v118, 16, v194
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v127, 16, v203
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v137, v120, v112
	v_mul_f32_e32 v120, v113, v120
	v_dual_mul_f32 v151, v126, v112 :: v_dual_lshlrev_b32 v114, 16, v190
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v126, v113, v126 :: v_dual_lshlrev_b32 v129, 16, v205
	v_dual_mul_f32 v150, v127, v112 :: v_dual_lshlrev_b32 v115, 16, v191
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v116, 16, v192
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v125, v113, v125 :: v_dual_lshlrev_b32 v124, 16, v200
	v_dual_mul_f32 v127, v113, v127 :: v_dual_lshlrev_b32 v128, 16, v204
	v_mul_f32_e32 v132, v117, v112
	v_mul_f32_e32 v117, v113, v117
	v_mul_f32_e32 v131, v114, v112
	v_mul_f32_e32 v152, v129, v112
	v_mul_f32_e32 v114, v113, v114
	v_mul_f32_e32 v134, v119, v112
	v_dual_mul_f32 v135, v118, v112 :: v_dual_mul_f32 v118, v113, v118
	v_dual_mul_f32 v130, v115, v112 :: v_dual_mul_f32 v115, v113, v115
	v_mul_f32_e32 v119, v113, v119
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v255, s7, v75
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v133, v116, v112
	v_dual_mul_f32 v116, v113, v116 :: v_dual_fmac_f32 v43, v131, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v12, v152, v90
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v149, v124, v112 :: v_dual_fmac_f32 v16, v151, v89
	v_mul_f32_e32 v124, v113, v124
	v_mul_f32_e32 v112, v128, v112
	v_dual_mul_f32 v128, v113, v128 :: v_dual_fmac_f32 v39, v132, v78
	v_dual_mul_f32 v113, v113, v129 :: v_dual_fmac_f32 v20, v130, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v41, v133, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v35, v134, v80 :: v_dual_fmac_f32 v10, v112, v91
	v_dual_fmac_f32 v37, v135, v81 :: v_dual_fmac_f32 v38, v117, v94
	v_dual_fmac_f32 v31, v136, v82 :: v_dual_fmac_f32 v42, v115, v92
	v_dual_fmac_f32 v33, v137, v83 :: v_dual_fmac_f32 v40, v114, v93
	v_dual_fmac_f32 v27, v138, v84 :: v_dual_fmac_f32 v36, v116, v95
	v_dual_fmac_f32 v29, v139, v85 :: v_dual_fmac_f32 v30, v121, v98
	v_dual_fmac_f32 v23, v148, v86 :: v_dual_fmac_f32 v34, v119, v96
	v_dual_fmac_f32 v25, v149, v87 :: v_dual_fmac_f32 v32, v118, v97
	v_dual_fmac_f32 v17, v150, v88 :: v_dual_fmac_f32 v28, v120, v99
	v_dual_fmac_f32 v26, v123, v100 :: v_dual_fmac_f32 v21, v124, v103
	v_dual_fmac_f32 v24, v122, v101 :: v_dual_fmac_f32 v15, v127, v104
	v_dual_fmac_f32 v22, v125, v102 :: v_dual_fmac_f32 v11, v128, v107
	v_dual_fmac_f32 v14, v126, v105 :: v_dual_fmac_f32 v13, v113, v106
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b128 v255, v[108:111] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[140:143]
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[144:147] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_lshrrev_b32_e32 v238, 1, v0
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v20, 0
	s_add_i32 s26, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v115, v72, v71
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v45, s4, v115
	s_mov_b32 s4, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v75, v45 offset:1664
	ds_load_u8 v76, v45 offset:1536
	ds_load_u8 v77, v45 offset:1920
	ds_load_u8 v78, v45 offset:1792
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v5, s26, v66
	v_add_nc_u32_e32 v71, s26, v65
	ds_load_b128 v[1:4], v5 offset:2048
	ds_load_b128 v[5:8], v5
	ds_load_b128 v[67:70], v71 offset:2048
	ds_load_b128 v[71:74], v71
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v81, v45 offset:1152
	ds_load_u8 v82, v45 offset:1024
	ds_load_u8 v83, v45 offset:1408
	ds_load_u8 v84, v45 offset:1280
	ds_load_u8 v85, v45 offset:640
	ds_load_u8 v86, v45 offset:512
	ds_load_u8 v87, v45 offset:896
	ds_load_u8 v88, v45 offset:768
	ds_load_u8 v100, v45 offset:1984
	ds_load_u8 v101, v45 offset:1856
	ds_load_u8 v102, v45 offset:1728
	ds_load_u8 v103, v45 offset:1600
	ds_load_u8 v94, v45 offset:128
	ds_load_u8 v95, v45
	ds_load_u8 v96, v45 offset:384
	ds_load_u8 v97, v45 offset:256
	ds_load_u8 v104, v45 offset:1472
	ds_load_u8 v105, v45 offset:1344
	ds_load_u8 v106, v45 offset:1216
	ds_load_u8 v107, v45 offset:1088
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v80, s26, v63
	v_add_nc_u32_e32 v79, s26, v64
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v92, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v93, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v81, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v82, v84, v83, 0xc0c0004
	v_lshl_or_b32 v111, v93, 16, v92
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v83, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v84, v88, v87, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[75:78], v80 offset:2048
	ds_load_b128 v[88:91], v80
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v110, v82, 16, v81
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v80, v95, v94, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v97, v96, 0xc0c0004
	v_mov_b32_e32 v99, s11
	v_lshl_or_b32 v109, v84, 16, v83
	v_mov_b32_e32 v98, s10
	ds_load_u8 v82, v45 offset:3712
	ds_load_u8 v83, v45 offset:3584
	ds_load_u8 v84, v45 offset:3968
	ds_load_u8 v85, v45 offset:3840
	v_lshl_or_b32 v108, v81, 16, v80
	ds_load_u8 v80, v45 offset:3200
	ds_load_u8 v81, v45 offset:3072
	ds_load_u8 v86, v45 offset:3456
	ds_load_u8 v87, v45 offset:3328
	ds_load_u8 v121, v45 offset:2688
	ds_load_u8 v122, v45 offset:2560
	ds_load_u8 v123, v45 offset:2944
	ds_load_u8 v124, v45 offset:2816
	ds_load_u8 v125, v45 offset:2176
	ds_load_u8 v126, v45 offset:2048
	ds_load_u8 v127, v45 offset:2432
	ds_load_u8 v128, v45 offset:2304
	ds_load_u8 v140, v45 offset:4032
	ds_load_u8 v141, v45 offset:3904
	ds_load_u8 v142, v45 offset:3776
	ds_load_u8 v148, v45 offset:3648
	ds_load_u8 v133, v45 offset:5760
	ds_load_u8 v134, v45 offset:5632
	ds_load_u8 v135, v45 offset:6016
	ds_load_u8 v136, v45 offset:5888
	ds_load_u8 v112, v45 offset:960
	ds_load_u8 v113, v45 offset:832
	ds_load_u8 v114, v45 offset:704
	ds_load_u8 v116, v45 offset:576
	ds_load_u8 v117, v45 offset:448
	ds_load_u8 v118, v45 offset:320
	ds_load_u8 v119, v45 offset:192
	ds_load_u8 v120, v45 offset:64
	v_mov_b32_e32 v92, s4
	ds_load_u8 v149, v45 offset:3520
	ds_load_u8 v150, v45 offset:3392
	ds_load_u8 v151, v45 offset:3264
	ds_load_u8 v152, v45 offset:3136
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v131, v81, v80, 0xc0c0004
	ds_load_u8 v153, v45 offset:3008
	ds_load_u8 v154, v45 offset:2880
	ds_load_u8 v155, v45 offset:2752
	ds_load_u8 v156, v45 offset:2624
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v132, v87, v86, 0xc0c0004
	ds_load_u8 v168, v45 offset:5056
	ds_load_u8 v169, v45 offset:4928
	ds_load_u8 v170, v45 offset:4800
	ds_load_u8 v171, v45 offset:4672
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v184, v45 offset:7616
	ds_load_u8 v185, v45 offset:7488
	ds_load_u8 v186, v45 offset:7360
	ds_load_u8 v187, v45 offset:7232
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v122, v124, v123, 0xc0c0004
	ds_load_u8 v123, v45 offset:2496
	ds_load_u8 v157, v45 offset:2368
	ds_load_u8 v158, v45 offset:2240
	ds_load_u8 v159, v45 offset:2112
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v124, v126, v125, 0xc0c0004
	v_lshl_or_b32 v126, v132, 16, v131
	v_perm_b32 v129, v83, v82, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v128, v128, v127, 0xc0c0004
	v_perm_b32 v130, v85, v84, 0xc0c0004
	v_lshl_or_b32 v125, v122, 16, v121
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v134, v136, v135, 0xc0c0004
	v_lshl_or_b32 v124, v128, 16, v124
	v_lshl_or_b32 v127, v130, 16, v129
	ds_load_u8 v121, v45 offset:5248
	ds_load_u8 v122, v45 offset:5120
	ds_load_u8 v128, v45 offset:5504
	ds_load_u8 v129, v45 offset:5376
	ds_load_u8 v130, v45 offset:4736
	ds_load_u8 v131, v45 offset:4608
	ds_load_u8 v132, v45 offset:4992
	ds_load_u8 v137, v45 offset:4864
	ds_load_u8 v160, v45 offset:6080
	ds_load_u8 v161, v45 offset:5952
	ds_load_u8 v162, v45 offset:5824
	ds_load_u8 v163, v45 offset:5696
	ds_load_u8 v135, v45 offset:4224
	ds_load_u8 v136, v45 offset:4096
	ds_load_u8 v138, v45 offset:4480
	ds_load_u8 v139, v45 offset:4352
	ds_load_u8 v164, v45 offset:5568
	ds_load_u8 v165, v45 offset:5440
	ds_load_u8 v166, v45 offset:5312
	ds_load_u8 v167, v45 offset:5184
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_perm_b32 v101, v107, v106, 0xc0c0004
	v_perm_b32 v103, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v104, v116, v114, 0xc0c0004
	v_perm_b32 v105, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v106, v120, v119, 0xc0c0004
	v_perm_b32 v107, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_mov_b32_e32 v97, s9
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v122, v129, v128, 0xc0c0004
	v_mov_b32_e32 v96, s8
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v128, v131, v130, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v129, v137, v132, 0xc0c0004
	ds_load_u8 v132, v45 offset:7808
	ds_load_u8 v137, v45 offset:7680
	ds_load_u8 v143, v45 offset:8064
	ds_load_u8 v144, v45 offset:7936
	ds_load_u8 v172, v45 offset:4544
	ds_load_u8 v173, v45 offset:4416
	ds_load_u8 v174, v45 offset:4288
	ds_load_u8 v175, v45 offset:4160
	v_lshl_or_b32 v130, v122, 16, v121
	ds_load_u8 v121, v45 offset:7296
	ds_load_u8 v122, v45 offset:7168
	ds_load_u8 v145, v45 offset:7552
	ds_load_u8 v146, v45 offset:7424
	ds_load_u8 v176, v45 offset:8128
	ds_load_u8 v177, v45 offset:8000
	ds_load_u8 v178, v45 offset:7872
	ds_load_u8 v179, v45 offset:7744
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v136, v139, v138, 0xc0c0004
	v_lshl_or_b32 v131, v134, 16, v133
	v_lshl_or_b32 v129, v129, 16, v128
	v_dual_mov_b32 v95, s7 :: v_dual_mov_b32 v94, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v128, v136, 16, v135
	v_mov_b32_e32 v93, s5
	v_perm_b32 v113, v148, v142, 0xc0c0004
	v_perm_b32 v114, v141, v140, 0xc0c0004
	v_perm_b32 v116, v152, v151, 0xc0c0004
	v_perm_b32 v117, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v147, v137, v132, 0xc0c0004
	v_perm_b32 v118, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	ds_load_u8 v144, v45 offset:6784
	ds_load_u8 v180, v45 offset:6656
	ds_load_u8 v181, v45 offset:7040
	ds_load_u8 v182, v45 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[132:135], v79 offset:2048
	ds_load_b128 v[136:139], v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v122, v146, v145, 0xc0c0004
	ds_load_u8 v145, v45 offset:6528
	ds_load_u8 v146, v45 offset:6400
	ds_load_u8 v188, v45 offset:7104
	ds_load_u8 v189, v45 offset:6976
	ds_load_u8 v190, v45 offset:6848
	ds_load_u8 v191, v45 offset:6720
	ds_load_u8 v79, v45 offset:6272
	ds_load_u8 v183, v45 offset:6144
	v_lshl_or_b32 v143, v143, 16, v147
	v_lshl_or_b32 v147, v100, 16, v102
	v_perm_b32 v119, v154, v153, 0xc0c0004
	v_perm_b32 v120, v159, v158, 0xc0c0004
	v_perm_b32 v123, v157, v123, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[80:87], v[108:111], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v122, 16, v121
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[80:87], v[124:127], v[71:74], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v180, v180, v144, 0xc0c0004
	v_lshl_or_b32 v144, v107, 16, v106
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	ds_load_u8 v182, v45 offset:6592
	ds_load_u8 v192, v45 offset:6464
	ds_load_u8 v193, v45 offset:6336
	ds_load_u8 v45, v45 offset:6208
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v146, v145, 0xc0c0004
	v_lshl_or_b32 v146, v103, 16, v101
	v_lshl_or_b32 v145, v105, 16, v104
	v_wmma_i32_16x16x16_iu8 v[80:87], v[128:131], v[5:8], v[80:87] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v79, v183, v79, 0xc0c0004
	v_lshl_or_b32 v141, v181, 16, v180
	v_wmma_i32_16x16x16_iu8 v[100:107], v[144:147], v[88:91], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v91, v114, 16, v113
	v_lshl_or_b32 v90, v117, 16, v116
	v_lshl_or_b32 v89, v119, 16, v118
	v_lshl_or_b32 v88, v123, 16, v120
	v_perm_b32 v113, v163, v162, 0xc0c0004
	v_perm_b32 v114, v161, v160, 0xc0c0004
	v_perm_b32 v116, v167, v166, 0xc0c0004
	v_perm_b32 v117, v165, v164, 0xc0c0004
	v_perm_b32 v118, v171, v170, 0xc0c0004
	v_perm_b32 v119, v169, v168, 0xc0c0004
	v_perm_b32 v120, v175, v174, 0xc0c0004
	v_perm_b32 v123, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[100:107], v[88:91], v[71:74], v[100:107] neg_lo:[1,1,0]
	v_lshl_or_b32 v74, v114, 16, v113
	v_lshl_or_b32 v73, v117, 16, v116
	v_lshl_or_b32 v72, v119, 16, v118
	v_lshl_or_b32 v71, v123, 16, v120
	v_wmma_i32_16x16x16_iu8 v[116:123], v[108:111], v[75:78], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[144:147], v[75:78], v[92:99] neg_lo:[1,1,0]
	v_perm_b32 v113, v179, v178, 0xc0c0004
	v_perm_b32 v114, v177, v176, 0xc0c0004
	v_lshl_or_b32 v140, v112, 16, v79
	v_wmma_i32_16x16x16_iu8 v[100:107], v[71:74], v[5:8], v[100:107] neg_lo:[1,1,0]
	v_perm_b32 v5, v187, v186, 0xc0c0004
	v_perm_b32 v6, v185, v184, 0xc0c0004
	v_perm_b32 v79, v191, v190, 0xc0c0004
	v_perm_b32 v75, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v45, v193, 0xc0c0004
	v_perm_b32 v76, v192, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[116:123], v[124:127], v[67:70], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[88:91], v[67:70], v[92:99] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v114, 16, v113
	v_lshl_or_b32 v7, v6, 16, v5
	v_lshl_or_b32 v6, v75, 16, v79
	v_lshl_or_b32 v5, v76, 16, v45
	v_wmma_i32_16x16x16_iu8 v[116:123], v[128:131], v[1:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[92:99], v[71:74], v[1:4], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[80:87], v[140:143], v[136:139], v[80:87] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[5:8], v[136:139], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[140:143], v[132:135], v[116:123] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[92:99], v[5:8], v[132:135], v[92:99] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v74, v81
	v_cvt_f32_i32_e32 v69, v82
	v_cvt_f32_i32_e32 v75, v83
	v_cvt_f32_i32_e32 v70, v84
	v_cvt_f32_i32_e32 v76, v85
	v_cvt_f32_i32_e32 v71, v86
	v_cvt_f32_i32_e32 v77, v87
	v_cvt_f32_i32_e32 v72, v100
	v_cvt_f32_i32_e32 v78, v101
	v_cvt_f32_i32_e32 v73, v102
	v_cvt_f32_i32_e32 v79, v103
	v_cvt_f32_i32_e32 v6, v104
	v_cvt_f32_i32_e32 v5, v105
	v_cvt_f32_i32_e32 v2, v106
	v_cvt_f32_i32_e32 v1, v107
	v_cvt_f32_i32_e32 v82, v116
	v_cvt_f32_i32_e32 v88, v117
	v_cvt_f32_i32_e32 v86, v118
	v_cvt_f32_i32_e32 v91, v119
	v_cvt_f32_i32_e32 v81, v120
	v_cvt_f32_i32_e32 v85, v121
	v_cvt_f32_i32_e32 v83, v122
	v_cvt_f32_i32_e32 v89, v123
	v_cvt_f32_i32_e32 v84, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v87, v94
	v_cvt_f32_i32_e32 v92, v95
	v_cvt_f32_i32_e32 v8, v96
	v_cvt_f32_i32_e32 v7, v97
	v_cvt_f32_i32_e32 v4, v98
	v_cvt_f32_i32_e32 v3, v99
	v_cvt_f32_i32_e32 v80, v80
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s14, 31
	s_mov_b32 s27, 0x31027000
	s_lshr_b32 s4, s4, 26
	s_mov_b32 s26, 0x7ffffffe
	s_add_i32 s4, s14, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v45, v61, s4, 1
	v_add_lshl_u32 v67, v62, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v94, v56, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v68, v60, s4, 1
	v_add_lshl_u32 v93, v59, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	s_and_b32 s25, s25, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v94, 0x80000000, v94, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v113, v45, s[24:27], 0 offen
	buffer_load_u16 v114, v67, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v45, v58, s4, 1
	v_add_lshl_u32 v102, v50, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v68 :: v_dual_cndmask_b32 v68, 0x80000000, v93
	v_add_lshl_u32 v93, v57, s4, 1
	v_add_lshl_u32 v95, v55, s4, 1
	v_add_lshl_u32 v96, v54, s4, 1
	v_add_lshl_u32 v97, v53, s4, 1
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	v_add_lshl_u32 v98, v52, s4, 1
	s_and_b32 s13, s13, 0xffff
	v_cndmask_b32_e32 v93, 0x80000000, v93, vcc_lo
	v_add_lshl_u32 v101, v51, s4, 1
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_mov_b32 v118, 0
	s_clause 0x7
	buffer_load_u16 v116, v67, s[12:15], 0 offen
	buffer_load_u16 v117, v68, s[12:15], 0 offen
	buffer_load_u16 v110, v45, s[12:15], 0 offen
	buffer_load_u16 v112, v93, s[12:15], 0 offen
	buffer_load_u16 v105, v94, s[12:15], 0 offen
	buffer_load_u16 v106, v95, s[12:15], 0 offen
	buffer_load_u16 v99, v96, s[12:15], 0 offen
	buffer_load_u16 v100, v97, s[12:15], 0 offen
	v_add_lshl_u32 v93, v49, s4, 1
	v_add_lshl_u32 v94, v47, s4, 1
	v_dual_cndmask_b32 v45, 0x80000000, v98 :: v_dual_mov_b32 v124, 0
	v_add_lshl_u32 v95, v48, s4, 1
	v_add_lshl_u32 v96, v18, s4, 1
	v_add_lshl_u32 v97, v19, s4, 1
	v_dual_cndmask_b32 v67, 0x80000000, v101 :: v_dual_mov_b32 v120, 0
	v_dual_cndmask_b32 v68, 0x80000000, v102 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	v_mov_b32_e32 v126, 0
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v101, 0x80000000, v95
	v_mov_b32_e32 v122, 0
	v_dual_cndmask_b32 v102, 0x80000000, v96 :: v_dual_cndmask_b32 v103, 0x80000000, v97
	v_mov_b32_e32 v128, 0
	s_clause 0x7
	buffer_load_u16 v97, v45, s[12:15], 0 offen
	buffer_load_u16 v98, v67, s[12:15], 0 offen
	buffer_load_u16 v95, v68, s[12:15], 0 offen
	buffer_load_u16 v96, v93, s[12:15], 0 offen
	buffer_load_u16 v93, v94, s[12:15], 0 offen
	buffer_load_u16 v94, v101, s[12:15], 0 offen
	buffer_load_u16 v68, v102, s[12:15], 0 offen
	buffer_load_u16 v67, v103, s[12:15], 0 offen
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v104, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v103, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s1, v115
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v147, s11 :: v_dual_add_nc_u32 v130, s0, v64
	v_mov_b32_e32 v146, s10
	ds_load_u8 v108, v9 offset:1664
	ds_load_u8 v109, v9 offset:1536
	ds_load_u8 v111, v9 offset:1920
	ds_load_u8 v115, v9 offset:1792
	v_dual_mov_b32 v144, s8 :: v_dual_add_nc_u32 v45, s0, v66
	v_dual_mov_b32 v142, s6 :: v_dual_add_nc_u32 v107, s0, v65
	v_dual_mov_b32 v145, s9 :: v_dual_add_nc_u32 v122, s0, v63
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[63:66], v45 offset:2048
	ds_load_b128 v[101:104], v45
	ds_load_b128 v[118:121], v107 offset:2048
	ds_load_b128 v[148:151], v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v45, v9 offset:1152
	ds_load_u8 v107, v9 offset:1024
	ds_load_u8 v123, v9 offset:1408
	ds_load_u8 v124, v9 offset:1280
	ds_load_u8 v125, v9 offset:640
	ds_load_u8 v126, v9 offset:512
	ds_load_u8 v127, v9 offset:896
	ds_load_u8 v128, v9 offset:768
	ds_load_u8 v131, v9 offset:1984
	ds_load_u8 v132, v9 offset:1856
	ds_load_u8 v133, v9 offset:1728
	ds_load_u8 v134, v9 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[156:159], v122 offset:2048
	ds_load_b128 v[152:155], v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v9 offset:5760
	ds_load_u8 v173, v9 offset:5632
	ds_load_u8 v174, v9 offset:6016
	ds_load_u8 v175, v9 offset:5888
	ds_load_u8 v180, v9 offset:960
	ds_load_u8 v181, v9 offset:832
	ds_load_u8 v182, v9 offset:704
	ds_load_u8 v184, v9 offset:576
	ds_load_u8 v192, v9 offset:3520
	ds_load_u8 v193, v9 offset:3392
	ds_load_u8 v194, v9 offset:3264
	ds_load_u8 v195, v9 offset:3136
	ds_load_u8 v196, v9 offset:3008
	ds_load_u8 v197, v9 offset:2880
	ds_load_u8 v198, v9 offset:2752
	ds_load_u8 v199, v9 offset:2624
	ds_load_u8 v200, v9 offset:2496
	ds_load_u8 v201, v9 offset:2368
	ds_load_u8 v202, v9 offset:2240
	ds_load_u8 v203, v9 offset:2112
	ds_load_u8 v212, v9 offset:5056
	ds_load_u8 v213, v9 offset:4928
	ds_load_u8 v214, v9 offset:4800
	ds_load_u8 v215, v9 offset:4672
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v45, v107, v45, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v107, v124, v123, 0xc0c0004
	v_perm_b32 v109, v115, v111, 0xc0c0004
	ds_load_u8 v111, v9 offset:128
	ds_load_u8 v115, v9
	ds_load_u8 v129, v9 offset:384
	ds_load_u8 v135, v9 offset:256
	ds_load_u8 v136, v9 offset:1472
	ds_load_u8 v137, v9 offset:1344
	ds_load_u8 v138, v9 offset:1216
	ds_load_u8 v139, v9 offset:1088
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v123, v126, v125, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v124, v128, v127, 0xc0c0004
	v_lshl_or_b32 v162, v107, 16, v45
	v_lshl_or_b32 v163, v109, 16, v108
	ds_load_u8 v45, v9 offset:448
	ds_load_u8 v107, v9 offset:320
	ds_load_u8 v108, v9 offset:192
	ds_load_u8 v109, v9 offset:64
	ds_load_u8 v228, v9 offset:7616
	ds_load_u8 v229, v9 offset:7488
	ds_load_u8 v230, v9 offset:7360
	ds_load_u8 v231, v9 offset:7232
	v_lshl_or_b32 v161, v124, 16, v123
	ds_load_u8 v122, v9 offset:3712
	ds_load_u8 v123, v9 offset:3584
	ds_load_u8 v124, v9 offset:3968
	ds_load_u8 v125, v9 offset:3840
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v173, v175, v174, 0xc0c0004
	ds_load_u8 v174, v9 offset:4224
	ds_load_u8 v175, v9 offset:4096
	ds_load_u8 v177, v9 offset:4480
	ds_load_u8 v178, v9 offset:4352
	ds_load_u8 v208, v9 offset:5568
	ds_load_u8 v209, v9 offset:5440
	ds_load_u8 v210, v9 offset:5312
	ds_load_u8 v211, v9 offset:5184
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_dual_mov_b32 v143, s7 :: v_dual_mov_b32 v140, s4
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v115, v135, v129, 0xc0c0004
	v_mov_b32_e32 v141, s5
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v132, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v160, v115, 16, v111
	ds_load_u8 v111, v9 offset:3200
	ds_load_u8 v115, v9 offset:3072
	ds_load_u8 v126, v9 offset:3456
	ds_load_u8 v127, v9 offset:3328
	ds_load_u8 v128, v9 offset:2688
	ds_load_u8 v129, v9 offset:2560
	ds_load_u8 v135, v9 offset:2944
	ds_load_u8 v164, v9 offset:2816
	ds_load_u8 v165, v9 offset:2176
	ds_load_u8 v166, v9 offset:2048
	ds_load_u8 v167, v9 offset:2432
	ds_load_u8 v168, v9 offset:2304
	ds_load_u8 v188, v9 offset:4032
	ds_load_u8 v189, v9 offset:3904
	ds_load_u8 v190, v9 offset:3776
	ds_load_u8 v191, v9 offset:3648
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v45, v107, v45, 0xc0c0004
	v_perm_b32 v138, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	v_perm_b32 v169, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v175, v178, v177, 0xc0c0004
	v_perm_b32 v170, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v127, v126, 0xc0c0004
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v171, v129, v128, 0xc0c0004
	v_perm_b32 v109, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v135, v164, v135, 0xc0c0004
	v_perm_b32 v139, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v164, v166, v165, 0xc0c0004
	v_lshl_or_b32 v166, v115, 16, v111
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v168, v167, 0xc0c0004
	v_lshl_or_b32 v167, v170, 16, v169
	v_lshl_or_b32 v165, v135, 16, v171
	v_wmma_i32_16x16x16_iu8 v[122:129], v[160:163], v[152:155], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v164, v168, 16, v164
	ds_load_u8 v111, v9 offset:5248
	ds_load_u8 v115, v9 offset:5120
	ds_load_u8 v135, v9 offset:5504
	ds_load_u8 v168, v9 offset:5376
	ds_load_u8 v169, v9 offset:4736
	ds_load_u8 v170, v9 offset:4608
	ds_load_u8 v171, v9 offset:4992
	ds_load_u8 v176, v9 offset:4864
	ds_load_u8 v204, v9 offset:6080
	ds_load_u8 v205, v9 offset:5952
	ds_load_u8 v206, v9 offset:5824
	ds_load_u8 v207, v9 offset:5696
	v_wmma_i32_16x16x16_iu8 v[122:129], v[164:167], v[148:151], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v115, v168, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v135, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v168, v176, v171, 0xc0c0004
	ds_load_u8 v176, v9 offset:7808
	ds_load_u8 v179, v9 offset:7680
	ds_load_u8 v183, v9 offset:8064
	ds_load_u8 v185, v9 offset:7936
	ds_load_u8 v216, v9 offset:4544
	ds_load_u8 v217, v9 offset:4416
	ds_load_u8 v218, v9 offset:4288
	ds_load_u8 v219, v9 offset:4160
	v_lshl_or_b32 v170, v115, 16, v111
	v_lshl_or_b32 v171, v173, 16, v172
	v_lshl_or_b32 v169, v168, 16, v135
	ds_load_u8 v111, v9 offset:7296
	ds_load_u8 v115, v9 offset:7168
	ds_load_u8 v135, v9 offset:7552
	ds_load_u8 v186, v9 offset:7424
	ds_load_u8 v220, v9 offset:8128
	ds_load_u8 v221, v9 offset:8000
	ds_load_u8 v222, v9 offset:7872
	ds_load_u8 v223, v9 offset:7744
	v_lshl_or_b32 v168, v175, 16, v174
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[122:129], v[168:171], v[101:104], v[122:129] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v187, v179, v176, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v183, v185, v183, 0xc0c0004
	ds_load_u8 v185, v9 offset:6784
	ds_load_u8 v224, v9 offset:6656
	ds_load_u8 v225, v9 offset:7040
	ds_load_u8 v226, v9 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[172:175], v130 offset:2048
	ds_load_b128 v[176:179], v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v130, v9 offset:6272
	ds_load_u8 v227, v9 offset:6144
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v115, v186, v135, 0xc0c0004
	ds_load_u8 v135, v9 offset:6528
	ds_load_u8 v186, v9 offset:6400
	ds_load_u8 v232, v9 offset:7104
	ds_load_u8 v233, v9 offset:6976
	ds_load_u8 v234, v9 offset:6848
	ds_load_u8 v235, v9 offset:6720
	v_lshl_or_b32 v183, v183, 16, v187
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v224, v224, v185, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v225, v226, v225, 0xc0c0004
	ds_load_u8 v226, v9 offset:6592
	ds_load_u8 v236, v9 offset:6464
	ds_load_u8 v237, v9 offset:6336
	ds_load_u8 v9, v9 offset:6208
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v227, v227, v130, 0xc0c0004
	v_perm_b32 v130, v134, v133, 0xc0c0004
	v_perm_b32 v133, v137, v136, 0xc0c0004
	v_perm_b32 v134, v184, v182, 0xc0c0004
	v_perm_b32 v136, v181, v180, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v186, v135, 0xc0c0004
	v_lshl_or_b32 v187, v131, 16, v130
	v_lshl_or_b32 v186, v133, 16, v132
	v_lshl_or_b32 v184, v45, 16, v108
	v_lshl_or_b32 v185, v136, 16, v134
	v_perm_b32 v45, v191, v190, 0xc0c0004
	v_perm_b32 v108, v189, v188, 0xc0c0004
	v_perm_b32 v180, v197, v196, 0xc0c0004
	v_perm_b32 v181, v203, v202, 0xc0c0004
	v_perm_b32 v182, v201, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[184:187], v[152:155], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v108, 16, v45
	v_lshl_or_b32 v190, v138, 16, v109
	v_lshl_or_b32 v189, v180, 16, v139
	v_lshl_or_b32 v188, v182, 16, v181
	v_perm_b32 v45, v207, v206, 0xc0c0004
	v_perm_b32 v108, v205, v204, 0xc0c0004
	v_perm_b32 v109, v211, v210, 0xc0c0004
	v_perm_b32 v138, v209, v208, 0xc0c0004
	v_perm_b32 v139, v215, v214, 0xc0c0004
	v_perm_b32 v152, v213, v212, 0xc0c0004
	v_perm_b32 v153, v219, v218, 0xc0c0004
	v_perm_b32 v154, v217, v216, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[130:137], v[188:191], v[148:151], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v195, v108, 16, v45
	v_lshl_or_b32 v194, v138, 16, v109
	v_lshl_or_b32 v193, v152, 16, v139
	v_lshl_or_b32 v192, v154, 16, v153
	v_perm_b32 v45, v223, v222, 0xc0c0004
	v_perm_b32 v108, v221, v220, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[148:155], v[160:163], v[156:159], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[184:187], v[156:159], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v180, v107, 16, v227
	v_wmma_i32_16x16x16_iu8 v[130:137], v[192:195], v[101:104], v[130:137] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v108, 16, v45
	v_perm_b32 v45, v231, v230, 0xc0c0004
	v_perm_b32 v101, v229, v228, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v102, v235, v234, 0xc0c0004
	v_perm_b32 v107, v233, v232, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v9, v237, 0xc0c0004
	v_perm_b32 v108, v236, v226, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[148:155], v[164:167], v[118:121], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[188:191], v[118:121], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v182, v115, 16, v111
	v_lshl_or_b32 v181, v225, 16, v224
	v_lshl_or_b32 v103, v101, 16, v45
	v_lshl_or_b32 v102, v107, 16, v102
	v_lshl_or_b32 v101, v108, 16, v9
	v_wmma_i32_16x16x16_iu8 v[148:155], v[168:171], v[63:66], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[192:195], v[63:66], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[122:129], v[180:183], v[176:179], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[130:137], v[101:104], v[176:179], v[130:137] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[180:183], v[172:175], v[148:155] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[101:104], v[172:175], v[140:147] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v9, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v118, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v119, v126
	v_cvt_f32_i32_e32 v125, v127
	v_cvt_f32_i32_e32 v120, v128
	v_cvt_f32_i32_e32 v126, v129
	v_cvt_f32_i32_e32 v121, v130
	v_cvt_f32_i32_e32 v127, v131
	v_cvt_f32_i32_e32 v122, v132
	v_cvt_f32_i32_e32 v128, v133
	v_cvt_f32_i32_e32 v107, v134
	v_cvt_f32_i32_e32 v108, v135
	v_cvt_f32_i32_e32 v102, v136
	v_cvt_f32_i32_e32 v101, v137
	v_cvt_f32_i32_e32 v130, v148
	v_cvt_f32_i32_e32 v136, v149
	v_cvt_f32_i32_e32 v134, v150
	v_cvt_f32_i32_e32 v139, v151
	v_cvt_f32_i32_e32 v129, v152
	v_cvt_f32_i32_e32 v133, v153
	v_cvt_f32_i32_e32 v131, v154
	v_cvt_f32_i32_e32 v137, v155
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v138, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v140, v143
	v_cvt_f32_i32_e32 v109, v144
	v_cvt_f32_i32_e32 v111, v145
	v_cvt_f32_i32_e32 v103, v146
	v_cvt_f32_i32_e32 v104, v147
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s14, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s15, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v66.h, v116.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v94.h, v110.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s35
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v45, v61, s0, 1
	v_add_lshl_u32 v61, v62, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v60, v60, s0, 1
	v_add_lshl_u32 v59, v59, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v56, v56, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v61, 0x80000000, v61 :: v_dual_cndmask_b32 v62, 0x80000000, v60
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v54, v54, s0, 1
	v_dual_cndmask_b32 v63, 0x80000000, v59 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v59, v45, s[24:27], 0 offen
	buffer_load_u16 v60, v61, s[24:27], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v57, v57, s0, 1
	v_add_lshl_u32 v45, v58, s0, 1
	v_add_lshl_u32 v55, v55, s0, 1
	v_add_lshl_u32 v53, v53, s0, 1
	v_add_lshl_u32 v52, v52, s0, 1
	v_add_lshl_u32 v51, v51, s0, 1
	v_add_lshl_u32 v50, v50, s0, 1
	v_add_lshl_u32 v49, v49, s0, 1
	v_add_lshl_u32 v18, v18, s0, 1
	v_cndmask_b32_e32 v57, 0x80000000, v57, vcc_lo
	v_dual_cndmask_b32 v45, 0x80000000, v45 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	v_cndmask_b32_e32 v53, 0x80000000, v53, vcc_lo
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	s_clause 0xb
	buffer_load_u16 v58, v63, s[12:15], 0 offen
	buffer_load_u16 v61, v62, s[12:15], 0 offen
	buffer_load_u16 v57, v57, s[12:15], 0 offen
	buffer_load_u16 v62, v45, s[12:15], 0 offen
	buffer_load_u16 v55, v55, s[12:15], 0 offen
	buffer_load_u16 v56, v56, s[12:15], 0 offen
	buffer_load_u16 v53, v53, s[12:15], 0 offen
	buffer_load_u16 v54, v54, s[12:15], 0 offen
	buffer_load_u16 v51, v51, s[12:15], 0 offen
	buffer_load_u16 v52, v52, s[12:15], 0 offen
	buffer_load_u16 v63, v49, s[12:15], 0 offen
	buffer_load_u16 v64, v50, s[12:15], 0 offen
	v_add_lshl_u32 v45, v47, s0, 1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v47.l, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v49, v48, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v47.h, v114.l
	v_mov_b16_e32 v48.h, v113.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v110.h, v94.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v48.l, v47.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v66.l, v47.l
	v_cndmask_b32_e32 v45, 0x80000000, v45, vcc_lo
	v_cndmask_b32_e32 v50, 0x80000000, v49, vcc_lo
	v_mov_b16_e32 v94.l, v47.l
	v_add_lshl_u32 v19, v19, s0, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v47, v66
	v_mul_f32_e32 v66, v66, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x2
	buffer_load_u16 v49, v45, s[12:15], 0 offen
	buffer_load_u16 v50, v50, s[12:15], 0 offen
	buffer_load_u16 v152, v18, s[12:15], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v150, v47, v94 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v96.h, v105.l
	v_mov_b16_e32 v105.h, v96.l
	v_mov_b16_e32 v96.l, v47.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v94, v94, v48 :: v_dual_and_b32 v65, 56, v238
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v19, v19, s[12:15], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v45, s31, v44
	v_mul_lo_u32 v44, s31, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v46.h, v117.l
	v_mov_b16_e32 v46.l, v47.l
	v_mov_b16_e32 v93.h, v112.l
	v_mov_b16_e32 v95.h, v106.l
	v_mov_b16_e32 v106.h, v95.l
	v_mov_b16_e32 v112.h, v93.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v149, v47, v46 :: v_dual_mul_f32 v46, v46, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v93.l, v47.l
	v_mov_b16_e32 v95.l, v47.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s33, s31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v97.h, v100.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v74, v43
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s1, s1, s30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v98.h, v99.l
	v_mov_b16_e32 v99.h, v98.l
	v_mov_b16_e32 v100.h, v97.l
	v_mov_b16_e32 v98.l, v47.l
	v_mov_b16_e32 v100.l, v47.l
	v_mov_b16_e32 v106.l, v47.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v47, v93
	v_dual_mul_f32 v93, v93, v48 :: v_dual_mul_f32 v154, v47, v95
	v_mul_f32_e32 v153, v47, v96
	v_mul_f32_e32 v95, v95, v48
	v_mul_f32_e32 v96, v96, v48
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v162, s1, v65
	v_add3_u32 v18, s1, v65, 64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v149, v88, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v46, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v99.l, v47.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v155, v47, v98 :: v_dual_mul_f32 v98, v98, v48
	v_mul_f32_e32 v157, v47, v100
	v_dual_mul_f32 v159, v47, v106 :: v_dual_mul_f32 v106, v106, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v80, v20
	v_fma_f32 v74, v151, v91, v36
	v_fma_f32 v69, v94, v69, v39
	v_fma_f32 v70, v96, v70, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v40, v65, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v97.l, v47.l
	v_mov_b16_e32 v105.l, v47.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v158, v47, v99
	v_mul_f32_e32 v99, v99, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v106, v73, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v66, s2
	v_cndmask_b32_e64 v36, v36, v74, s2
	v_cndmask_b32_e64 v39, v39, v69, s2
	v_cndmask_b32_e64 v35, v35, v70, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v156, v47, v97 :: v_dual_mul_f32 v97, v97, v48
	v_mul_f32_e32 v100, v100, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v23, v73, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v93, v75, v41
	v_fma_f32 v83, v155, v83, v30
	v_fma_f32 v77, v97, v77, v33
	v_fma_f32 v71, v98, v71, v31
	v_fma_f32 v72, v100, v72, v27
	v_fma_f32 v80, v150, v86, v38
	v_fma_f32 v86, v156, v89, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v113.h, v47.l
	v_mov_b16_e32 v115.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v75, s2
	v_cndmask_b32_e64 v30, v30, v83, s2
	v_cndmask_b32_e64 v33, v33, v77, s2
	v_cndmask_b32_e64 v31, v31, v71, s2
	v_cndmask_b32_e64 v27, v27, v72, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v142.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v86, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v112.l, v47.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v160, v47, v105 :: v_dual_mul_f32 v105, v105, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v88, v158, v90, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v80, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v144.h, v47.l
	v_mov_b16_e64 v145.h, v47.l
	v_mov_b16_e64 v143.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v24, v88, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v110.l, v47.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v85, v154, v85, v32
	v_fma_f32 v87, v159, v87, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v116.h, v47.l
	v_mov_b16_e32 v117.h, v47.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v148, v82, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v85, s2
	v_cndmask_b32_e64 v22, v22, v87, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v141.h, v47.l
	v_mov_b16_e64 v147.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v82, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v105, v79, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v161, v112, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v89, v160, v92, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v114.h, v47.l
	v_mov_b16_e64 v146.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v79, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v161, v6, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v89, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v17, v6, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v46, 16, v59
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v59, 16, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v81, v153, v81, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v81, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v58, 16, v58
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v60, 16, v61
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v84, v157, v84, v26
	v_fma_f32 v76, v95, v76, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v65, v58, v46 :: v_dual_lshlrev_b32 v56, 16, v56
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v61, 16, v62
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v70, v56, v46 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v62, 16, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v72, v54, v46 :: v_dual_lshlrev_b32 v63, 16, v64
	v_dual_mul_f32 v64, v60, v46 :: v_dual_lshlrev_b32 v55, 16, v55
	v_mul_f32_e32 v58, v59, v58
	v_mul_f32_e32 v60, v59, v60
	v_dual_mul_f32 v69, v57, v46 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v57, v59, v57
	v_dual_mul_f32 v56, v59, v56 :: v_dual_lshlrev_b32 v53, 16, v53
	v_mul_f32_e32 v66, v61, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v26, v84, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v52, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v52, v59, v52 :: v_dual_mul_f32 v73, v53, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v64, v9, v20
	v_fma_f32 v64, v65, v123, v43
	v_fma_f32 v58, v58, v136, v40
	v_fma_f32 v65, v66, v118, v39
	v_fma_f32 v57, v57, v139, v36
	v_fma_f32 v52, v52, v132, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v20, v9, s3
	v_cndmask_b32_e64 v40, v40, v58, s3
	v_cndmask_b32_e64 v39, v39, v65, s3
	v_cndmask_b32_e64 v36, v36, v57, s3
	v_cndmask_b32_e64 v37, v37, v76, s2
	v_cndmask_b32_e64 v20, v43, v64, s3
	v_cndmask_b32_e64 v26, v26, v52, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v43, v9, 16, 1
	v_mov_b16_e32 v113.l, v40.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v59, v54
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v52, v39, 16, 1
	v_mov_b16_e32 v115.l, v36.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v71, v55, v46
	v_mul_f32_e32 v53, v59, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v69, v124, v41
	v_fma_f32 v69, v70, v119, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s5, v39, v39
	v_add3_u32 v9, v9, v43, 0x7fff
	v_and_b32_e32 v43, 1, v113
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v54, v54, v131, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v39, v39, v52, 0x7fff
	v_and_b32_e32 v52, 1, v115
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v71, v125, v37
	v_fma_f32 v71, v72, v120, v31
	v_fma_f32 v72, v73, v126, v33
	v_fma_f32 v53, v53, v137, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v59, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v54, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v51, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v72, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v56, v56, v129, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v31, v71, s3
	v_cndmask_b32_e64 v28, v28, v53, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v145.l, v26.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v59, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v134, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v57, v33, 16, 1
	v_mov_b16_e64 v143.l, v30.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v74, v121, v27
	v_fma_f32 v51, v51, v138, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v34, v56, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v56, v31, 16, 1
	v_mov_b16_e64 v142.l, v28.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v61, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s14, v33, v33
	v_add3_u32 v33, v33, v57, 0x7fff
	v_and_b32_e32 v57, 1, v143
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v99, v78, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v27, v73, s3
	v_cndmask_b32_e64 v24, v24, v51, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s13, v31, v31
	v_add3_u32 v31, v31, v56, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v55, v59, v55 :: v_dual_and_b32 v56, 1, v142
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v116.l, v38.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v63, v46
	v_mul_f32_e32 v63, v59, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s16, v30, v30
	v_add3_u32 v30, v30, v57, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v78, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s15, v28, v28
	v_bfe_u32 v58, v27, 16, 1
	v_mov_b16_e64 v144.l, v24.h
	v_add3_u32 v28, v28, v56, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v133, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v70, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v30.h, s16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v110, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v63, v63, v135, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s17, v27, v27
	v_add3_u32 v27, v27, v58, 0x7fff
	v_and_b32_e32 v58, 1, v144
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v75, v127, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v32, v55, s3
	v_cndmask_b32_e64 v22, v22, v63, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v55, v37, 16, 1
	v_mov_b16_e64 v141.l, v34.h
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v60, v60, v130, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v29, v74, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v37, v37
	v_mov_b16_e64 v147.l, v22.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v62, v46
	v_mul_f32_e32 v62, v59, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v37, v37, v55, 0x7fff
	v_and_b32_e32 v55, 1, v141
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v60, s3
	v_cndmask_b32_e64 v41, v41, v66, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v60, v29, 16, 1
	v_cmp_o_f32_e64 s12, v34, v34
	v_add3_u32 v34, v34, v55, 0x7fff
	v_cmp_o_f32_e64 s18, v29, v29
	v_bfe_u32 v53, v41, 16, 1
	v_add3_u32 v29, v29, v60, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s14
	v_cndmask_b16 v29.l, 0x7fff, v34.h, s12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v33, v47, v112 :: v_dual_lshlrev_b32 v34, 16, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v41, v41
	v_add3_u32 v41, v41, v53, 0x7fff
	v_and_b32_e32 v53, 1, v116
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v76, v122, v23
	v_fma_f32 v76, v77, v128, v25
	v_fma_f32 v5, v30, v5, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v30, 16, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v51, v20, 16, 1
	v_mov_b16_e32 v114.l, v42.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v34, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v140, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v25, v76, s3
	v_cndmask_b32_e64 v5, v16, v5, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v30, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v20, v20
	v_add3_u32 v20, v20, v51, 0x7fff
	v_and_b32_e32 v51, 1, v114
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v107, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v21, v62, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v62, v25, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v16, v16, v108, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v42, v42
	v_cmp_o_f32_e64 s7, v36, v36
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v20.h, s0
	v_add3_u32 v20, v42, v51, 0x7fff
	v_add3_u32 v36, v36, v52, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v17, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s22, v25, v25
	v_add3_u32 v25, v25, v62, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v5, v16, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v25.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v36.h, s7
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v36, v47, v110
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v16, v6, 16, 1
	v_bfe_u32 v17, v5, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v69, s3
	v_cndmask_b32_e64 v23, v23, v75, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v36, v7, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v6, v16, 0x7fff
	v_cmp_o_f32_e64 s0, v6, v6
	v_add3_u32 v6, v5, v17, 0x7fff
	v_bfe_u32 v54, v35, 16, 1
	v_mov_b16_e32 v117.l, v32.h
	v_bfe_u32 v61, v23, 16, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v33, v8, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v14, v7, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.l, 0x7fff, v16.h, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v16.l, v47.l
	v_mov_b16_e32 v16.h, v67.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v59, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s9, v35, v35
	v_cmp_o_f32_e64 s21, v23, v23
	v_mov_b16_e64 v146.l, v21.h
	v_add3_u32 v35, v35, v54, 0x7fff
	v_and_b32_e32 v54, 1, v117
	v_add3_u32 v23, v23, v61, 0x7fff
	v_add3_u32 v40, v40, v43, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v15, v8, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v59, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v14, v14, v111, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s11, v32, v32
	v_and_b32_e32 v60, 1, v145
	v_and_b32_e32 v61, 1, v146
	v_add3_u32 v32, v32, v54, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s21
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s22
	v_cndmask_b16 v25.h, 0x7fff, v40.h, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v109, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v5, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v7, v14, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s20, v26, v26
	v_and_b32_e32 v62, 1, v147
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s17
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s18
	v_add3_u32 v26, v26, v60, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v32.h, s11
	v_add3_u32 v32, v21, v61, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v8, v15, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v8.l, v5.h
	v_mov_b16_e32 v8.h, v47.l
	v_cmp_o_f32_e64 s19, v24, v24
	v_add3_u32 v24, v24, v58, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s20
	v_add3_u32 v26, v22, v62, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v14.l, v7.h
	v_mov_b16_e32 v14.h, v47.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v15.l, v47.l
	v_mov_b16_e32 v15.h, v68.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v8
	v_cndmask_b16 v21.l, 0x7fff, v26.h, vcc_lo
	v_and_b32_e32 v14, 1, v14
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v47, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v5, v8, 0x7fff
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v47, v16
	v_mul_f32_e32 v15, v15, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v17, v4, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v5, v3, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v16, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v13, v4, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v2, v15, v2, v12
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v13, 16, v152
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v5, v1, v10
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s5
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v11, v3, s2
	v_cndmask_b32_e64 v2, v12, v2, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v13, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v59, v5
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v7, v14, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v5, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v102, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v10, v104, v3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v47.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v101, v1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v11, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v8.l, 0x7fff, v14.h, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v47.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v1, v5, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v5, v2, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_mov_b16_e32 v10.l, v3.h
	v_cmp_o_f32_e64 s1, v3, v3
	v_bfe_u32 v11, v1, 16, 1
	v_add3_u32 v5, v2, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	v_and_b32_e32 v2, 1, v10
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s19
	v_add3_u32 v10, v1, v11, 0x7fff
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v53, 0x7fff
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_mov_b32_e32 v10, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s1
	v_dual_mov_b32 v11, 0x7632 :: v_dual_cndmask_b32 v2, v9, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v59, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_cndmask_b32 v5, v39, v31 :: v_dual_cndmask_b32 v10, 0x1054, v10
	v_cndmask_b32_e32 v16, v8, v24, vcc_lo
	v_cndmask_b32_e32 v8, v24, v8, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v12, v12, v103, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.l, 0x7fff, v38.h, s8
	v_lshl_or_b32 v10, v10, 8, v10
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s15
	s_mov_b32 s0, 0x76543210
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v12, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e32 v12, v29, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v15, v20, v28 :: v_dual_and_b32 v10, 0x540054, v10
	v_cndmask_b32_e32 v14, v28, v20, vcc_lo
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v10, v10, 4, v10
	v_cndmask_b32_e32 v13, v25, v29, vcc_lo
	v_permlanex16_b32 v2, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 1, v7
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v20, 0x5040504, v10
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v4, v7, 0x7fff
	v_dual_cndmask_b32 v7, v6, v27 :: v_dual_cndmask_b32 v6, v27, v6
	v_cndmask_b32_e32 v4, v31, v39, vcc_lo
	v_cndmask_b16 v0.l, 0x7fff, v1.h, s2
	v_cndmask_b32_e32 v1, v35, v9, vcc_lo
	v_cndmask_b32_e32 v9, v3, v23, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_cndmask_b32_e32 v3, v23, v3, vcc_lo
	v_dual_cndmask_b32 v17, v0, v21 :: v_dual_cndmask_b32 v0, v21, v0
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v11, 8, v11
	v_permlanex16_b32 v19, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v1, v20
	v_and_b32_e32 v11, 0x760076, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v11, v11, 4, v11
	v_and_b32_e32 v21, 0x7060706, v11
	v_permlanex16_b32 v11, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v8, v13, v12, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v1, v2, v1, v21
	v_perm_b32 v2, v5, v4, v20
	v_perm_b32 v3, v5, v4, v21
	v_perm_b32 v4, v6, v7, v20
	v_perm_b32 v5, v6, v7, v21
	v_perm_b32 v6, v19, v9, v20
	v_perm_b32 v7, v19, v9, v21
	v_perm_b32 v9, v13, v12, v21
	v_perm_b32 v12, v15, v16, v20
	v_perm_b32 v13, v15, v16, v21
	v_add_lshl_u32 v16, v162, v45, 1
	v_perm_b32 v10, v11, v14, v20
	v_perm_b32 v11, v11, v14, v21
	v_perm_b32 v14, v22, v17, v20
	v_perm_b32 v15, v22, v17, v21
	v_add_lshl_u32 v17, v18, v45, 1
	v_add_lshl_u32 v19, v162, v44, 1
	v_add_lshl_u32 v18, v18, v44, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[28:31], 0 offen
	buffer_store_b128 v[4:7], v17, s[28:31], 0 offen
	buffer_store_b128 v[8:11], v19, s[28:31], 0 offen
	buffer_store_b128 v[12:15], v18, s[28:31], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15060
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc64_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
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
