	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v61, 4, v0
	v_lshrrev_b32_e32 v3, 2, v0
	v_lshrrev_b32_e32 v54, 3, v0
	v_and_b32_e32 v56, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v53, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v2, 48, v61
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v30, 0, v61
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s28, 63
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
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s27, s23
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s26, s22
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
	s_sub_i32 s6, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s9, s6, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s6, s6, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s5, s8, s9
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s6
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s10, s5, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s2
	s_abs_i32 s8, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s5, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v61
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s7, s5, 0x4f7ffffe
	s_load_b32 s5, s[0:1], 0x38
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[4:5], null, s29, v54, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s11, s11, s7
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v5, s29, 5, v4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_hi_u32 s4, s7, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s4
	s_mul_hi_u32 s4, s6, s7
	s_xor_b32 s7, s2, s10
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s12, s6, s8
	s_cmp_ge_u32 s6, s8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v6, s5, v3
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s8
	s_cselect_b32 s4, s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s8, s4, s7
	s_sub_i32 s4, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s10
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s14, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s5, 63
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s15, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s9, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s15, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, v6, v2, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s29, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s14, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s30, s29, 6
	v_add_nc_u32_e32 v8, s4, v4
	v_add_nc_u32_e32 v9, s4, v5
	s_add_i32 s4, s4, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, s6, 64, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s4, v4
	v_add_nc_u32_e32 v10, s4, v5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v11, 0x80000000, v8, s3
	v_cndmask_b32_e64 v13, 0x80000000, v9, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v17, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v25, 0x80000000, v10, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[5:8], v7, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[9:12], v11, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v13, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[17:20], v17, s[20:23], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[21:24], v4, s[24:27], 0 offen
	buffer_load_b128 v[25:28], v25, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v4, 1, v0
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0xbf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v4, 48, v4
	v_xor_b32_e32 v62, v61, v4
	v_lshlrev_b32_e32 v4, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v29, 0, v62
	s_waitcnt vmcnt(5)
	ds_store_b128 v29, v[5:8] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v30, v[9:12]
	s_waitcnt vmcnt(3)
	ds_store_b128 v30, v[13:16] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v29, v[17:20] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v30, v[21:24] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v30, v[25:28] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 0x430, v4
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v56, 6, v5
	v_xor_b32_e32 v59, 16, v57
	v_xor_b32_e32 v60, 32, v57
	v_xor_b32_e32 v58, 48, v57
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr58
.LBB0_3:                                ; %Flow45
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_and_b32_e32 v55, 48, v53
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v5, s6, v54
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s9, 6
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s8, 7
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_and_b32_e32 v4, 0x430, v4
	v_add_nc_u32_e32 v3, s15, v3
	s_lshl_b32 s7, s7, 7
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v57, v56, 6, v4
	v_mad_u64_u32 v[3:4], null, s5, v3, s[6:7]
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_add_nc_u32_e32 v6, 0xa0, v5
	v_add_nc_u32_e32 v5, 0x80, v5
	v_xor_b32_e32 v59, 16, v57
	v_xor_b32_e32 v60, 32, v57
	v_add3_u32 v63, v3, v2, 0x80
	v_mul_lo_u32 v6, s29, v6
	v_mul_lo_u32 v5, s29, v5
	v_xor_b32_e32 v58, 48, v57
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_add3_u32 v4, v6, s1, v1
	v_add3_u32 v1, v5, s1, v1
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v64, s7, v4
	v_subrev_nc_u32_e32 v65, s7, v1
	s_mov_b32 s7, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v21, 0
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s31, s0, -2
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v63, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v65, s[24:27], 0 offen
	buffer_load_b128 v[17:20], v64, s[24:27], 0 offen
	s_mov_b32 s6, s28
	s_mov_b32 s28, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v66, s6, v57
	s_mov_b32 s0, s4
	v_add_nc_u32_e32 v67, s6, v59
	v_add_nc_u32_e32 v68, s6, v60
	v_add_nc_u32_e32 v69, s6, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v70, s0, v56, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[82:85], v66
	ds_load_b128 v[98:101], v66 offset:2048
	ds_load_b128 v[102:105], v67
	ds_load_b128 v[106:109], v67 offset:2048
	ds_load_b128 v[110:113], v68
	ds_load_b128 v[114:117], v68 offset:2048
	ds_load_b128 v[118:121], v69
	ds_load_b128 v[122:125], v69 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v66, v70 offset:1664
	ds_load_u8 v67, v70 offset:1536
	ds_load_u8 v68, v70 offset:1920
	ds_load_u8 v69, v70 offset:1792
	ds_load_u8 v71, v70 offset:1984
	ds_load_u8 v72, v70 offset:1856
	ds_load_u8 v73, v70 offset:1728
	ds_load_u8 v74, v70 offset:1600
	ds_load_u8 v75, v70 offset:1152
	ds_load_u8 v76, v70 offset:1024
	ds_load_u8 v77, v70 offset:1408
	ds_load_u8 v78, v70 offset:1280
	ds_load_u8 v79, v70 offset:1472
	ds_load_u8 v80, v70 offset:1344
	ds_load_u8 v81, v70 offset:1216
	ds_load_u8 v86, v70 offset:1088
	ds_load_u8 v87, v70 offset:640
	ds_load_u8 v88, v70 offset:512
	ds_load_u8 v89, v70 offset:896
	ds_load_u8 v90, v70 offset:768
	ds_load_u8 v91, v70 offset:960
	ds_load_u8 v92, v70 offset:832
	ds_load_u8 v93, v70 offset:704
	ds_load_u8 v94, v70 offset:576
	ds_load_u8 v95, v70 offset:128
	ds_load_u8 v96, v70
	ds_load_u8 v97, v70 offset:384
	ds_load_u8 v126, v70 offset:256
	ds_load_u8 v127, v70 offset:448
	ds_load_u8 v128, v70 offset:320
	ds_load_u8 v129, v70 offset:192
	ds_load_u8 v130, v70 offset:64
	ds_load_u8 v131, v70 offset:3712
	ds_load_u8 v132, v70 offset:3584
	ds_load_u8 v133, v70 offset:3968
	ds_load_u8 v134, v70 offset:3840
	ds_load_u8 v135, v70 offset:4032
	ds_load_u8 v136, v70 offset:3904
	ds_load_u8 v137, v70 offset:3776
	ds_load_u8 v138, v70 offset:3648
	ds_load_u8 v139, v70 offset:3200
	ds_load_u8 v140, v70 offset:3072
	ds_load_u8 v141, v70 offset:3456
	ds_load_u8 v142, v70 offset:3328
	ds_load_u8 v143, v70 offset:3520
	ds_load_u8 v144, v70 offset:3392
	ds_load_u8 v145, v70 offset:3264
	ds_load_u8 v146, v70 offset:3136
	ds_load_u8 v147, v70 offset:2688
	ds_load_u8 v148, v70 offset:2560
	ds_load_u8 v149, v70 offset:2944
	ds_load_u8 v150, v70 offset:2816
	ds_load_u8 v151, v70 offset:3008
	ds_load_u8 v152, v70 offset:2880
	ds_load_u8 v153, v70 offset:2752
	ds_load_u8 v154, v70 offset:2624
	ds_load_u8 v155, v70 offset:2176
	ds_load_u8 v156, v70 offset:2048
	ds_load_u8 v157, v70 offset:2432
	ds_load_u8 v158, v70 offset:2304
	ds_load_u8 v159, v70 offset:2496
	ds_load_u8 v160, v70 offset:2368
	ds_load_u8 v161, v70 offset:2240
	ds_load_u8 v162, v70 offset:2112
	ds_load_u8 v163, v70 offset:5760
	ds_load_u8 v164, v70 offset:5632
	ds_load_u8 v165, v70 offset:6016
	ds_load_u8 v166, v70 offset:5888
	ds_load_u8 v167, v70 offset:6080
	ds_load_u8 v168, v70 offset:5952
	ds_load_u8 v169, v70 offset:5824
	ds_load_u8 v170, v70 offset:5696
	ds_load_u8 v171, v70 offset:5248
	ds_load_u8 v172, v70 offset:5120
	ds_load_u8 v173, v70 offset:5504
	ds_load_u8 v174, v70 offset:5376
	ds_load_u8 v175, v70 offset:5568
	ds_load_u8 v176, v70 offset:5440
	ds_load_u8 v177, v70 offset:5312
	ds_load_u8 v178, v70 offset:5184
	ds_load_u8 v179, v70 offset:4736
	ds_load_u8 v180, v70 offset:4608
	ds_load_u8 v181, v70 offset:4992
	ds_load_u8 v182, v70 offset:4864
	ds_load_u8 v183, v70 offset:5056
	ds_load_u8 v184, v70 offset:4928
	ds_load_u8 v185, v70 offset:4800
	ds_load_u8 v186, v70 offset:4672
	ds_load_u8 v187, v70 offset:4224
	ds_load_u8 v188, v70 offset:4096
	ds_load_u8 v189, v70 offset:4480
	ds_load_u8 v190, v70 offset:4352
	ds_load_u8 v191, v70 offset:4544
	ds_load_u8 v192, v70 offset:4416
	ds_load_u8 v193, v70 offset:4288
	ds_load_u8 v194, v70 offset:4160
	ds_load_u8 v195, v70 offset:7808
	ds_load_u8 v196, v70 offset:7680
	ds_load_u8 v197, v70 offset:8064
	ds_load_u8 v198, v70 offset:7936
	ds_load_u8 v199, v70 offset:8128
	ds_load_u8 v200, v70 offset:8000
	ds_load_u8 v201, v70 offset:7872
	ds_load_u8 v202, v70 offset:7744
	ds_load_u8 v203, v70 offset:7296
	ds_load_u8 v204, v70 offset:7168
	ds_load_u8 v205, v70 offset:7552
	ds_load_u8 v206, v70 offset:7424
	ds_load_u8 v207, v70 offset:7616
	ds_load_u8 v208, v70 offset:7488
	ds_load_u8 v209, v70 offset:7360
	ds_load_u8 v210, v70 offset:7232
	ds_load_u8 v211, v70 offset:6784
	ds_load_u8 v212, v70 offset:6656
	ds_load_u8 v213, v70 offset:7040
	ds_load_u8 v214, v70 offset:6912
	ds_load_u8 v215, v70 offset:7104
	ds_load_u8 v216, v70 offset:6976
	ds_load_u8 v217, v70 offset:6848
	ds_load_u8 v218, v70 offset:6720
	ds_load_u8 v219, v70 offset:6272
	ds_load_u8 v220, v70 offset:6144
	ds_load_u8 v221, v70 offset:6528
	ds_load_u8 v222, v70 offset:6400
	ds_load_u8 v223, v70 offset:6592
	ds_load_u8 v224, v70 offset:6464
	ds_load_u8 v225, v70 offset:6336
	ds_load_u8 v70, v70 offset:6208
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	v_perm_b32 v67, v69, v68, 0xc0c0004
	v_perm_b32 v68, v76, v75, 0xc0c0004
	v_perm_b32 v69, v78, v77, 0xc0c0004
	v_perm_b32 v75, v88, v87, 0xc0c0004
	v_perm_b32 v76, v90, v89, 0xc0c0004
	v_perm_b32 v77, v96, v95, 0xc0c0004
	v_perm_b32 v78, v126, v97, 0xc0c0004
	v_perm_b32 v87, v132, v131, 0xc0c0004
	v_perm_b32 v88, v134, v133, 0xc0c0004
	v_perm_b32 v89, v140, v139, 0xc0c0004
	v_perm_b32 v95, v142, v141, 0xc0c0004
	v_perm_b32 v126, v156, v155, 0xc0c0004
	v_perm_b32 v131, v158, v157, 0xc0c0004
	v_perm_b32 v132, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v133, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v134, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v139, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v140, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v141, v182, v181, 0xc0c0004
	v_perm_b32 v73, v74, v73, 0xc0c0004
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_perm_b32 v72, v86, v81, 0xc0c0004
	v_perm_b32 v74, v80, v79, 0xc0c0004
	v_perm_b32 v79, v94, v93, 0xc0c0004
	v_perm_b32 v80, v92, v91, 0xc0c0004
	v_perm_b32 v81, v130, v129, 0xc0c0004
	v_perm_b32 v86, v128, v127, 0xc0c0004
	v_perm_b32 v96, v148, v147, 0xc0c0004
	v_perm_b32 v97, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v142, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v147, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v150, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v155, v206, v205, 0xc0c0004
	v_perm_b32 v94, v138, v137, 0xc0c0004
	v_perm_b32 v164, v136, v135, 0xc0c0004
	v_perm_b32 v146, v146, v145, 0xc0c0004
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v152, v162, v161, 0xc0c0004
	v_perm_b32 v154, v160, v159, 0xc0c0004
	v_perm_b32 v162, v176, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v225, 0xc0c0004
	v_perm_b32 v175, v224, v223, 0xc0c0004
	v_lshl_or_b32 v93, v67, 16, v66
	v_lshl_or_b32 v92, v69, 16, v68
	v_lshl_or_b32 v91, v76, 16, v75
	v_lshl_or_b32 v90, v78, 16, v77
	v_lshl_or_b32 v126, v131, 16, v126
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v132, v139, 16, v134
	v_lshl_or_b32 v131, v141, 16, v140
	v_lshl_or_b32 v141, v71, 16, v73
	v_lshl_or_b32 v140, v74, 16, v72
	v_lshl_or_b32 v139, v80, 16, v79
	v_lshl_or_b32 v138, v86, 16, v81
	v_perm_b32 v148, v196, v195, 0xc0c0004
	v_perm_b32 v149, v198, v197, 0xc0c0004
	v_perm_b32 v159, v170, v169, 0xc0c0004
	v_perm_b32 v160, v168, v167, 0xc0c0004
	v_perm_b32 v161, v178, v177, 0xc0c0004
	v_perm_b32 v165, v186, v185, 0xc0c0004
	v_perm_b32 v166, v184, v183, 0xc0c0004
	v_perm_b32 v167, v194, v193, 0xc0c0004
	v_perm_b32 v168, v192, v191, 0xc0c0004
	v_lshl_or_b32 v129, v88, 16, v87
	v_lshl_or_b32 v128, v95, 16, v89
	v_lshl_or_b32 v127, v97, 16, v96
	v_lshl_or_b32 v130, v147, 16, v142
	v_lshl_or_b32 v136, v155, 16, v150
	v_lshl_or_b32 v145, v164, 16, v94
	v_lshl_or_b32 v144, v143, 16, v146
	v_lshl_or_b32 v143, v151, 16, v153
	v_lshl_or_b32 v142, v154, 16, v152
	v_lshl_or_b32 v150, v175, 16, v70
	v_wmma_i32_16x16x16_iu8 v[66:73], v[90:93], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[138:141], v[82:85], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[90:93], v[98:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[138:141], v[98:101], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v156, v212, v211, 0xc0c0004
	v_perm_b32 v157, v214, v213, 0xc0c0004
	v_perm_b32 v158, v220, v219, 0xc0c0004
	v_perm_b32 v163, v222, v221, 0xc0c0004
	v_perm_b32 v169, v202, v201, 0xc0c0004
	v_perm_b32 v170, v200, v199, 0xc0c0004
	v_perm_b32 v171, v210, v209, 0xc0c0004
	v_perm_b32 v172, v208, v207, 0xc0c0004
	v_perm_b32 v173, v218, v217, 0xc0c0004
	v_perm_b32 v174, v216, v215, 0xc0c0004
	v_lshl_or_b32 v137, v149, 16, v148
	v_lshl_or_b32 v149, v160, 16, v159
	v_lshl_or_b32 v148, v162, 16, v161
	v_lshl_or_b32 v147, v166, 16, v165
	v_lshl_or_b32 v146, v168, 16, v167
	v_wmma_i32_16x16x16_iu8 v[66:73], v[126:129], v[102:105], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[142:145], v[102:105], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[126:129], v[106:109], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[142:145], v[106:109], v[90:97] neg_lo:[1,1,0]
	v_lshl_or_b32 v135, v157, 16, v156
	v_lshl_or_b32 v134, v163, 16, v158
	v_lshl_or_b32 v153, v170, 16, v169
	v_lshl_or_b32 v152, v172, 16, v171
	v_lshl_or_b32 v151, v174, 16, v173
	v_wmma_i32_16x16x16_iu8 v[66:73], v[130:133], v[110:113], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[74:81], v[146:149], v[110:113], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[130:133], v[114:117], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[146:149], v[114:117], v[90:97] neg_lo:[1,1,0]
	s_mov_b32 s4, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s5, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[66:73], v[134:137], v[118:121], v[66:73] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s1, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[74:81], v[150:153], v[118:121], v[74:81] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[82:89], v[134:137], v[122:125], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[90:97], v[150:153], v[122:125], v[90:97] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s1, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v66
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s5, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
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
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s6, s1, 0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v49, v49, v70 :: v_dual_add_nc_u32 v64, s30, v64
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s1, s6, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v42, v42, v66 :: v_dual_add_nc_u32 v65, s30, v65
	v_dual_add_f32 v50, v50, v69 :: v_dual_add_nc_u32 v63, 64, v63
	v_dual_add_f32 v47, v47, v72 :: v_dual_add_nc_u32 v226, s6, v62
	v_dual_add_f32 v48, v48, v71 :: v_dual_add_nc_u32 v227, s1, v61
	v_dual_add_f32 v52, v52, v67 :: v_dual_add_f32 v51, v51, v68
	v_dual_add_f32 v46, v46, v73 :: v_dual_add_f32 v45, v45, v74
	v_dual_add_f32 v44, v44, v75 :: v_dual_add_f32 v43, v43, v76
	v_dual_add_f32 v41, v41, v77 :: v_dual_add_f32 v40, v40, v78
	v_dual_add_f32 v39, v39, v79 :: v_dual_add_f32 v38, v38, v80
	v_dual_add_f32 v37, v37, v81 :: v_dual_add_f32 v36, v36, v82
	v_dual_add_f32 v35, v35, v83 :: v_dual_add_f32 v34, v34, v84
	v_dual_add_f32 v33, v33, v85 :: v_dual_add_f32 v32, v32, v86
	v_dual_add_f32 v31, v31, v87 :: v_dual_add_f32 v30, v30, v88
	v_dual_add_f32 v29, v29, v89 :: v_dual_add_f32 v28, v28, v90
	v_dual_add_f32 v27, v27, v91 :: v_dual_add_f32 v26, v26, v92
	v_dual_add_f32 v25, v25, v93 :: v_dual_add_f32 v24, v24, v94
	v_dual_add_f32 v23, v23, v95 :: v_dual_add_f32 v22, v22, v96
	v_add_f32_e32 v21, v21, v97
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s31, s31, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s0, s6, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s31, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v226, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v227, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v227, v[17:20] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	s_add_i32 s28, 0, 0x4000
	s_add_i32 s0, 0, 0x5000
	s_add_i32 s1, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v55, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v18, s4, v1
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
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s28, v60
	ds_load_b128 v[77:80], v2 offset:2048
	ds_load_b128 v[69:72], v2
	v_add_nc_u32_e32 v2, s28, v57
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v18 offset:1664
	ds_load_u8 v4, v18 offset:1536
	ds_load_u8 v5, v18 offset:1920
	ds_load_u8 v6, v18 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[81:84], v2 offset:2048
	ds_load_b128 v[73:76], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v18 offset:1152
	ds_load_u8 v7, v18 offset:1024
	ds_load_u8 v8, v18 offset:1408
	ds_load_u8 v9, v18 offset:1280
	ds_load_u8 v11, v18 offset:640
	ds_load_u8 v12, v18 offset:512
	ds_load_u8 v13, v18 offset:896
	ds_load_u8 v14, v18 offset:768
	ds_load_u8 v15, v18 offset:128
	ds_load_u8 v16, v18
	ds_load_u8 v17, v18 offset:384
	ds_load_u8 v20, v18 offset:256
	ds_load_u8 v61, v18 offset:1984
	ds_load_u8 v62, v18 offset:1856
	ds_load_u8 v63, v18 offset:1728
	ds_load_u8 v64, v18 offset:1600
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v19, s28, v58
	v_add_nc_u32_e32 v10, s28, v59
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v7, v2, 0xc0c0004
	v_lshl_or_b32 v88, v4, 16, v3
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v14, v13, 0xc0c0004
	v_lshl_or_b32 v87, v5, 16, v2
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v8, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v20, v17, 0xc0c0004
	v_lshl_or_b32 v86, v7, 16, v6
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v85, v9, 16, v8
	v_dual_mov_b32 v2, s4 :: v_dual_mov_b32 v5, s7
	ds_load_u8 v20, v18 offset:3712
	ds_load_u8 v97, v18 offset:3584
	v_mov_b32_e32 v7, s9
	ds_load_u8 v98, v18 offset:3968
	ds_load_u8 v99, v18 offset:3840
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[89:92], v10 offset:2048
	ds_load_b128 v[93:96], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v100, v18 offset:3200
	ds_load_u8 v101, v18 offset:3072
	ds_load_u8 v102, v18 offset:3456
	ds_load_u8 v103, v18 offset:3328
	ds_load_u8 v104, v18 offset:2688
	ds_load_u8 v105, v18 offset:2560
	ds_load_u8 v106, v18 offset:2944
	ds_load_u8 v107, v18 offset:2816
	ds_load_u8 v120, v18 offset:4032
	ds_load_u8 v121, v18 offset:3904
	ds_load_u8 v122, v18 offset:3776
	ds_load_u8 v123, v18 offset:3648
	ds_load_u8 v65, v18 offset:1472
	ds_load_u8 v66, v18 offset:1344
	ds_load_u8 v67, v18 offset:1216
	ds_load_u8 v68, v18 offset:1088
	ds_load_u8 v109, v18 offset:960
	ds_load_u8 v113, v18 offset:832
	ds_load_u8 v114, v18 offset:704
	ds_load_u8 v115, v18 offset:576
	ds_load_u8 v116, v18 offset:448
	ds_load_u8 v117, v18 offset:320
	ds_load_u8 v118, v18 offset:192
	ds_load_u8 v119, v18 offset:64
	ds_load_u8 v128, v18 offset:3008
	ds_load_u8 v129, v18 offset:2880
	ds_load_u8 v130, v18 offset:2752
	ds_load_u8 v131, v18 offset:2624
	ds_load_u8 v132, v18 offset:2496
	ds_load_u8 v133, v18 offset:2368
	ds_load_u8 v134, v18 offset:2240
	ds_load_u8 v135, v18 offset:2112
	ds_load_u8 v146, v18 offset:5056
	ds_load_u8 v147, v18 offset:4928
	ds_load_u8 v148, v18 offset:4800
	ds_load_u8 v149, v18 offset:4672
	ds_load_u8 v150, v18 offset:4544
	ds_load_u8 v151, v18 offset:4416
	ds_load_u8 v152, v18 offset:4288
	ds_load_u8 v153, v18 offset:4160
	v_dual_mov_b32 v3, s5 :: v_dual_mov_b32 v4, s6
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v101, v101, v100, 0xc0c0004
	v_mov_b32_e32 v6, s8
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_mov_b32_e32 v8, s10
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v103, v105, v104, 0xc0c0004
	v_mov_b32_e32 v9, s11
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v104, v107, v106, 0xc0c0004
	v_perm_b32 v20, v97, v20, 0xc0c0004
	ds_load_u8 v97, v18 offset:2176
	ds_load_u8 v108, v18 offset:2048
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v18 offset:2432
	ds_load_u8 v110, v18 offset:2304
	ds_load_u8 v124, v18 offset:3520
	ds_load_u8 v125, v18 offset:3392
	ds_load_u8 v126, v18 offset:3264
	ds_load_u8 v127, v18 offset:3136
	ds_load_u8 v105, v18 offset:5760
	ds_load_u8 v106, v18 offset:5632
	v_wmma_i32_16x16x16_iu8 v[10:17], v[85:88], v[73:76], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v98, 16, v20
	v_lshl_or_b32 v98, v104, 16, v103
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v62, v68, v67, 0xc0c0004
	v_perm_b32 v64, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v65, v115, v114, 0xc0c0004
	v_perm_b32 v66, v113, v109, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v67, v119, v118, 0xc0c0004
	v_perm_b32 v68, v117, v116, 0xc0c0004
	v_lshl_or_b32 v116, v61, 16, v63
	v_lshl_or_b32 v115, v64, 16, v62
	v_lshl_or_b32 v114, v66, 16, v65
	v_perm_b32 v117, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v107, v110, v99, 0xc0c0004
	v_lshl_or_b32 v99, v102, 16, v101
	v_perm_b32 v97, v108, v97, 0xc0c0004
	ds_load_u8 v108, v18 offset:6016
	ds_load_u8 v110, v18 offset:5888
	v_lshl_or_b32 v113, v68, 16, v67
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v18 offset:4224
	ds_load_u8 v140, v18 offset:4096
	v_lshl_or_b32 v97, v107, 16, v97
	ds_load_u8 v20, v18 offset:5248
	ds_load_u8 v101, v18 offset:5120
	ds_load_u8 v102, v18 offset:5504
	ds_load_u8 v103, v18 offset:5376
	ds_load_u8 v104, v18 offset:4736
	ds_load_u8 v107, v18 offset:4608
	ds_load_u8 v111, v18 offset:4992
	ds_load_u8 v112, v18 offset:4864
	ds_load_u8 v136, v18 offset:6080
	ds_load_u8 v137, v18 offset:5952
	ds_load_u8 v138, v18 offset:5824
	ds_load_u8 v139, v18 offset:5696
	v_perm_b32 v118, v121, v120, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v121, v125, v124, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[97:100], v[93:96], v[10:17] neg_lo:[1,1,0]
	v_perm_b32 v122, v131, v130, 0xc0c0004
	v_perm_b32 v123, v129, v128, 0xc0c0004
	v_perm_b32 v124, v135, v134, 0xc0c0004
	v_perm_b32 v125, v133, v132, 0xc0c0004
	ds_load_u8 v167, v18 offset:7104
	ds_load_u8 v168, v18 offset:6976
	ds_load_u8 v169, v18 offset:6848
	ds_load_u8 v170, v18 offset:6720
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v101, v20, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[113:116], v[73:76], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v101, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v102, v107, v104, 0xc0c0004
	v_perm_b32 v108, v110, v108, 0xc0c0004
	ds_load_u8 v110, v18 offset:4480
	ds_load_u8 v141, v18 offset:4352
	ds_load_u8 v142, v18 offset:5568
	ds_load_u8 v143, v18 offset:5440
	ds_load_u8 v144, v18 offset:5312
	ds_load_u8 v145, v18 offset:5184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v107, v112, v111, 0xc0c0004
	v_perm_b32 v106, v140, v106, 0xc0c0004
	ds_load_u8 v111, v18 offset:7808
	ds_load_u8 v112, v18 offset:7680
	ds_load_u8 v140, v18 offset:8064
	ds_load_u8 v154, v18 offset:7936
	v_lshl_or_b32 v104, v108, 16, v105
	v_lshl_or_b32 v103, v101, 16, v20
	v_lshl_or_b32 v102, v107, 16, v102
	v_lshl_or_b32 v120, v118, 16, v117
	v_lshl_or_b32 v119, v121, 16, v119
	v_lshl_or_b32 v118, v123, 16, v122
	v_lshl_or_b32 v117, v125, 16, v124
	v_perm_b32 v121, v149, v148, 0xc0c0004
	v_perm_b32 v122, v147, v146, 0xc0c0004
	v_perm_b32 v123, v153, v152, 0xc0c0004
	v_perm_b32 v124, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[61:68], v[117:120], v[93:96], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v141, v110, 0xc0c0004
	v_lshl_or_b32 v94, v122, 16, v121
	v_perm_b32 v73, v139, v138, 0xc0c0004
	v_lshl_or_b32 v93, v124, 16, v123
	v_perm_b32 v74, v137, v136, 0xc0c0004
	v_lshl_or_b32 v101, v110, 16, v106
	ds_load_u8 v20, v18 offset:7296
	ds_load_u8 v105, v18 offset:7168
	ds_load_u8 v106, v18 offset:7552
	ds_load_u8 v107, v18 offset:7424
	ds_load_u8 v108, v18 offset:6784
	ds_load_u8 v110, v18 offset:6656
	ds_load_u8 v141, v18 offset:7040
	ds_load_u8 v155, v18 offset:6912
	ds_load_u8 v156, v18 offset:8128
	ds_load_u8 v157, v18 offset:8000
	ds_load_u8 v158, v18 offset:7872
	ds_load_u8 v159, v18 offset:7744
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v112, v154, v140, 0xc0c0004
	ds_load_u8 v140, v18 offset:6272
	ds_load_u8 v154, v18 offset:6144
	ds_load_u8 v160, v18 offset:6528
	ds_load_u8 v161, v18 offset:6400
	ds_load_u8 v162, v18 offset:7616
	ds_load_u8 v163, v18 offset:7488
	ds_load_u8 v164, v18 offset:7360
	ds_load_u8 v165, v18 offset:7232
	v_wmma_i32_16x16x16_iu8 v[10:17], v[101:104], v[69:72], v[10:17] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[121:124], v19 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v75, v145, v144, 0xc0c0004
	v_lshl_or_b32 v112, v112, 16, v111
	v_perm_b32 v76, v143, v142, 0xc0c0004
	v_lshl_or_b32 v96, v74, 16, v73
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v20, v105, v20, 0xc0c0004
	v_perm_b32 v126, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v166, v107, v106, 0xc0c0004
	v_lshl_or_b32 v95, v76, 16, v75
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v110, v110, v108, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[105:108], v19
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v141, v155, v141, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v154, v140, 0xc0c0004
	v_lshl_or_b32 v111, v166, 16, v20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v154, v161, v160, 0xc0c0004
	v_perm_b32 v73, v159, v158, 0xc0c0004
	v_lshl_or_b32 v110, v141, 16, v110
	ds_load_u8 v20, v18 offset:6592
	ds_load_u8 v141, v18 offset:6464
	ds_load_u8 v155, v18 offset:6336
	ds_load_u8 v18, v18 offset:6208
	v_perm_b32 v74, v157, v156, 0xc0c0004
	v_lshl_or_b32 v109, v154, 16, v140
	v_wmma_i32_16x16x16_iu8 v[61:68], v[93:96], v[69:72], v[61:68] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v19, v165, v164, 0xc0c0004
	v_perm_b32 v125, v163, v162, 0xc0c0004
	v_lshl_or_b32 v128, v74, 16, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v125, 16, v19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[109:112], v[105:108], v[10:17] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v12, v12
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v141, v20, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v18, v155, 0xc0c0004
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	v_lshl_or_b32 v125, v20, 16, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v52, v52, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v49, v49, v12
	v_add_f32_e32 v47, v47, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[69:76], v[85:88], v[81:84], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[113:116], v[81:84], v[2:9] neg_lo:[1,1,0]
	v_perm_b32 v81, v168, v167, 0xc0c0004
	v_cvt_f32_i32_e32 v13, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[97:100], v[89:92], v[69:76] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v15, v17
	v_wmma_i32_16x16x16_iu8 v[2:9], v[117:120], v[89:92], v[2:9] neg_lo:[1,1,0]
	v_lshl_or_b32 v126, v81, 16, v126
	v_wmma_i32_16x16x16_iu8 v[69:76], v[101:104], v[77:80], v[69:76] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[93:96], v[77:80], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[61:68], v[125:128], v[105:108], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[109:112], v[121:124], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[125:128], v[121:124], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v62
	v_cvt_f32_i32_e32 v14, v64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v41, v41, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v45, v45, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v44, v44, v12 :: v_dual_add_f32 v43, v43, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v67
	v_cvt_f32_i32_e32 v13, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v46, v46, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v11 :: v_dual_add_f32 v38, v38, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v37, v37, v13 :: v_dual_add_f32 v40, v40, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v70
	v_cvt_f32_i32_e32 v11, v71
	v_cvt_f32_i32_e32 v13, v73
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v75
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v34, v34, v11
	v_dual_add_f32 v32, v32, v13 :: v_dual_add_f32 v27, v27, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v30, v30, v15 :: v_dual_add_f32 v25, v25, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v74
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v26, v26, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v6, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v33, v33, v12
	v_add_f32_e32 v31, v31, v14
	v_dual_add_f32 v29, v29, v11 :: v_dual_add_f32 v24, v24, v2
	v_dual_add_f32 v23, v23, v3 :: v_dual_add_f32 v22, v22, v4
	v_dual_add_f32 v21, v21, v5 :: v_dual_add_f32 v42, v42, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
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
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_11
; %bb.10:
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
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v69, s1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v69 offset:1664
	ds_load_u8 v4, v69 offset:1536
	ds_load_u8 v5, v69 offset:1920
	ds_load_u8 v6, v69 offset:1792
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s0, v60
	v_add_nc_u32_e32 v2, s0, v59
	v_add_nc_u32_e32 v70, s0, v58
	v_add_nc_u32_e32 v7, s0, v57
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[57:60], v1
	ds_load_b128 v[61:64], v2 offset:2048
	ds_load_b128 v[65:68], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v69 offset:1152
	ds_load_u8 v2, v69 offset:1024
	ds_load_u8 v8, v69 offset:1408
	ds_load_u8 v9, v69 offset:1280
	ds_load_u8 v10, v69 offset:640
	ds_load_u8 v11, v69 offset:512
	ds_load_u8 v12, v69 offset:896
	ds_load_u8 v13, v69 offset:768
	ds_load_u8 v71, v69 offset:1984
	ds_load_u8 v72, v69 offset:1856
	ds_load_u8 v73, v69 offset:1728
	ds_load_u8 v74, v69 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[85:88], v7 offset:2048
	ds_load_b128 v[77:80], v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v9, v8, 0xc0c0004
	v_perm_b32 v4, v6, v5, 0xc0c0004
	ds_load_u8 v5, v69 offset:128
	ds_load_u8 v6, v69
	ds_load_u8 v14, v69 offset:384
	ds_load_u8 v15, v69 offset:256
	ds_load_u8 v75, v69 offset:1472
	ds_load_u8 v76, v69 offset:1344
	ds_load_u8 v81, v69 offset:1216
	ds_load_u8 v82, v69 offset:1088
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v8, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	v_lshl_or_b32 v91, v2, 16, v1
	v_lshl_or_b32 v92, v4, 16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v90, v9, 16, v8
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v15, v14, 0xc0c0004
	v_lshl_or_b32 v89, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	ds_load_u8 v13, v69 offset:3200
	ds_load_u8 v14, v69 offset:3072
	ds_load_u8 v15, v69 offset:3456
	ds_load_u8 v16, v69 offset:3328
	ds_load_u8 v93, v69 offset:2688
	ds_load_u8 v94, v69 offset:2560
	ds_load_u8 v95, v69 offset:2944
	ds_load_u8 v96, v69 offset:2816
	ds_load_u8 v97, v69 offset:2176
	ds_load_u8 v98, v69 offset:2048
	ds_load_u8 v99, v69 offset:2432
	ds_load_u8 v100, v69 offset:2304
	ds_load_u8 v117, v69 offset:4032
	ds_load_u8 v118, v69 offset:3904
	ds_load_u8 v119, v69 offset:3776
	ds_load_u8 v120, v69 offset:3648
	ds_load_u8 v9, v69 offset:3712
	ds_load_u8 v10, v69 offset:3584
	ds_load_u8 v11, v69 offset:3968
	ds_load_u8 v12, v69 offset:3840
	ds_load_u8 v83, v69 offset:960
	ds_load_u8 v84, v69 offset:832
	ds_load_u8 v109, v69 offset:704
	ds_load_u8 v110, v69 offset:576
	ds_load_u8 v111, v69 offset:448
	ds_load_u8 v113, v69 offset:320
	ds_load_u8 v114, v69 offset:192
	ds_load_u8 v115, v69 offset:64
	ds_load_u8 v121, v69 offset:3520
	ds_load_u8 v122, v69 offset:3392
	ds_load_u8 v123, v69 offset:3264
	ds_load_u8 v124, v69 offset:3136
	ds_load_u8 v125, v69 offset:3008
	ds_load_u8 v126, v69 offset:2880
	ds_load_u8 v127, v69 offset:2752
	ds_load_u8 v128, v69 offset:2624
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v103, v14, v13, 0xc0c0004
	ds_load_u8 v129, v69 offset:2496
	ds_load_u8 v130, v69 offset:2368
	ds_load_u8 v131, v69 offset:2240
	ds_load_u8 v132, v69 offset:2112
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v104, v16, v15, 0xc0c0004
	ds_load_u8 v141, v69 offset:5056
	ds_load_u8 v142, v69 offset:4928
	ds_load_u8 v143, v69 offset:4800
	ds_load_u8 v144, v69 offset:4672
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_mov_b32_e32 v3, s6
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v94, v96, v95, 0xc0c0004
	v_lshl_or_b32 v95, v104, 16, v103
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v98, v100, v99, 0xc0c0004
	ds_load_u8 v99, v69 offset:5760
	ds_load_u8 v100, v69 offset:5632
	ds_load_u8 v105, v69 offset:6016
	ds_load_u8 v106, v69 offset:5888
	v_lshl_or_b32 v94, v94, 16, v93
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v101, v10, v9, 0xc0c0004
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v8, s11
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v102, v12, v11, 0xc0c0004
	v_lshl_or_b32 v93, v98, 16, v97
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v96, v102, 16, v101
	ds_load_u8 v97, v69 offset:5248
	ds_load_u8 v98, v69 offset:5120
	ds_load_u8 v101, v69 offset:5504
	ds_load_u8 v102, v69 offset:5376
	ds_load_u8 v103, v69 offset:4736
	ds_load_u8 v104, v69 offset:4608
	ds_load_u8 v107, v69 offset:4992
	ds_load_u8 v108, v69 offset:4864
	ds_load_u8 v133, v69 offset:6080
	ds_load_u8 v134, v69 offset:5952
	ds_load_u8 v135, v69 offset:5824
	ds_load_u8 v136, v69 offset:5696
	v_wmma_i32_16x16x16_iu8 v[9:16], v[89:92], v[77:80], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[93:96], v[65:68], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v100, v106, v105, 0xc0c0004
	ds_load_u8 v105, v69 offset:4224
	ds_load_u8 v106, v69 offset:4096
	ds_load_u8 v112, v69 offset:4480
	ds_load_u8 v116, v69 offset:4352
	ds_load_u8 v137, v69 offset:5568
	ds_load_u8 v138, v69 offset:5440
	ds_load_u8 v139, v69 offset:5312
	ds_load_u8 v140, v69 offset:5184
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v104, v103, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v99
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v108, v107, 0xc0c0004
	ds_load_u8 v103, v69 offset:7808
	ds_load_u8 v104, v69 offset:7680
	ds_load_u8 v107, v69 offset:8064
	ds_load_u8 v108, v69 offset:7936
	ds_load_u8 v145, v69 offset:4544
	ds_load_u8 v146, v69 offset:4416
	ds_load_u8 v147, v69 offset:4288
	ds_load_u8 v148, v69 offset:4160
	v_lshl_or_b32 v99, v98, 16, v97
	v_lshl_or_b32 v98, v102, 16, v101
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v106, v116, v112, 0xc0c0004
	ds_load_u8 v116, v69 offset:7296
	ds_load_u8 v149, v69 offset:7168
	ds_load_u8 v150, v69 offset:7552
	ds_load_u8 v151, v69 offset:7424
	ds_load_u8 v152, v69 offset:8128
	ds_load_u8 v153, v69 offset:8000
	ds_load_u8 v154, v69 offset:7872
	ds_load_u8 v155, v69 offset:7744
	v_lshl_or_b32 v97, v106, 16, v105
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v112, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v156, v108, v107, 0xc0c0004
	ds_load_u8 v157, v69 offset:6784
	ds_load_u8 v158, v69 offset:6656
	ds_load_u8 v159, v69 offset:7040
	ds_load_u8 v160, v69 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[101:104], v70 offset:2048
	ds_load_b128 v[105:108], v70
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v70, v69 offset:6272
	ds_load_u8 v161, v69 offset:6144
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[57:60], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v112, v156, 16, v112
	ds_load_u8 v156, v69 offset:7616
	ds_load_u8 v162, v69 offset:7488
	ds_load_u8 v163, v69 offset:7360
	ds_load_u8 v164, v69 offset:7232
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v149, v149, v116, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v116, v69 offset:6528
	ds_load_u8 v151, v69 offset:6400
	ds_load_u8 v165, v69 offset:7104
	ds_load_u8 v166, v69 offset:6976
	ds_load_u8 v167, v69 offset:6848
	ds_load_u8 v168, v69 offset:6720
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	ds_load_u8 v159, v69 offset:6592
	ds_load_u8 v160, v69 offset:6464
	ds_load_u8 v169, v69 offset:6336
	ds_load_u8 v170, v69 offset:6208
	v_perm_b32 v69, v74, v73, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v161, v70, 0xc0c0004
	v_perm_b32 v70, v72, v71, 0xc0c0004
	v_perm_b32 v71, v82, v81, 0xc0c0004
	v_perm_b32 v72, v76, v75, 0xc0c0004
	v_perm_b32 v73, v110, v109, 0xc0c0004
	v_perm_b32 v74, v84, v83, 0xc0c0004
	v_perm_b32 v75, v115, v114, 0xc0c0004
	v_perm_b32 v76, v113, v111, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v81, v151, v116, 0xc0c0004
	v_lshl_or_b32 v116, v70, 16, v69
	v_lshl_or_b32 v115, v72, 16, v71
	v_lshl_or_b32 v114, v74, 16, v73
	v_lshl_or_b32 v113, v76, 16, v75
	v_perm_b32 v82, v120, v119, 0xc0c0004
	v_perm_b32 v83, v118, v117, 0xc0c0004
	v_perm_b32 v84, v124, v123, 0xc0c0004
	v_perm_b32 v109, v122, v121, 0xc0c0004
	v_perm_b32 v110, v128, v127, 0xc0c0004
	v_perm_b32 v111, v126, v125, 0xc0c0004
	v_perm_b32 v117, v132, v131, 0xc0c0004
	v_perm_b32 v121, v130, v129, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[113:116], v[77:80], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v120, v83, 16, v82
	v_lshl_or_b32 v119, v109, 16, v84
	v_lshl_or_b32 v118, v111, 16, v110
	v_lshl_or_b32 v117, v121, 16, v117
	v_perm_b32 v77, v136, v135, 0xc0c0004
	v_perm_b32 v78, v134, v133, 0xc0c0004
	v_perm_b32 v79, v140, v139, 0xc0c0004
	v_perm_b32 v80, v138, v137, 0xc0c0004
	v_perm_b32 v82, v144, v143, 0xc0c0004
	v_perm_b32 v83, v142, v141, 0xc0c0004
	v_perm_b32 v84, v148, v147, 0xc0c0004
	v_perm_b32 v109, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[117:120], v[65:68], v[69:76] neg_lo:[1,1,0]
	v_lshl_or_b32 v68, v78, 16, v77
	v_lshl_or_b32 v67, v80, 16, v79
	v_lshl_or_b32 v66, v83, 16, v82
	v_lshl_or_b32 v65, v109, 16, v84
	v_perm_b32 v77, v155, v154, 0xc0c0004
	v_perm_b32 v78, v153, v152, 0xc0c0004
	v_lshl_or_b32 v109, v81, 16, v161
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v121, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[69:76], v[65:68], v[57:60], v[69:76] neg_lo:[1,1,0]
	v_perm_b32 v57, v164, v163, 0xc0c0004
	v_lshl_or_b32 v60, v78, 16, v77
	v_wmma_i32_16x16x16_iu8 v[77:84], v[89:92], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[113:116], v[85:88], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v58, v162, v156, 0xc0c0004
	v_perm_b32 v85, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v170, v169, 0xc0c0004
	v_perm_b32 v87, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[77:84], v[93:96], v[61:64], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[117:120], v[61:64], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v150, 16, v149
	v_lshl_or_b32 v110, v158, 16, v157
	v_lshl_or_b32 v59, v58, 16, v57
	v_lshl_or_b32 v58, v85, 16, v121
	v_lshl_or_b32 v57, v87, 16, v86
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[17:20], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[65:68], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[109:112], v[105:108], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[69:76], v[57:60], v[105:108], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[77:84], v[109:112], v[101:104], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[57:60], v[101:104], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v61, v9
	v_cvt_f32_i32_e32 v62, v10
	v_cvt_f32_i32_e32 v63, v11
	v_cvt_f32_i32_e32 v64, v12
	v_cvt_f32_i32_e32 v65, v13
	v_cvt_f32_i32_e32 v66, v14
	v_cvt_f32_i32_e32 v67, v15
	v_cvt_f32_i32_e32 v68, v16
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
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
	v_cvt_f32_i32_e32 v85, v1
	v_cvt_f32_i32_e32 v86, v2
	v_cvt_f32_i32_e32 v87, v3
	v_cvt_f32_i32_e32 v88, v4
	v_cvt_f32_i32_e32 v89, v5
	v_cvt_f32_i32_e32 v90, v6
	v_cvt_f32_i32_e32 v91, v7
	v_cvt_f32_i32_e32 v92, v8
.LBB0_11:
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v3, v54, 16, v56
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v1, v0, 4, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v2, 32, v3
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v4, s15, v3
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or3_b32 v1, v1, v55, s14
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v60, v48, v66 :: v_dual_and_b32 v53, 56, v53
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or_b32_e32 v5, s15, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v55, v42, v61 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_add_f32 v56, v52, v62 :: v_dual_lshlrev_b32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v58, v50, v64 :: v_dual_lshlrev_b32 v5, 1, v5
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s1, s15, s29
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v4, v4, s[4:7], 0 offen
	buffer_load_u16 v5, v5, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v7, 4, v1
	v_or_b32_e32 v8, 8, v1
	v_or_b32_e32 v14, 0x80, v1
	v_or_b32_e32 v9, 12, v1
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	v_or_b32_e32 v15, 0x84, v1
	v_or_b32_e32 v10, 16, v1
	v_or_b32_e32 v11, 20, v1
	v_or_b32_e32 v12, 24, v1
	v_or_b32_e32 v13, 28, v1
	v_or_b32_e32 v16, 0x88, v1
	s_clause 0x7
	buffer_load_u16 v6, v1, s[4:7], 0 offen
	buffer_load_u16 v7, v7, s[4:7], 0 offen
	buffer_load_u16 v8, v8, s[4:7], 0 offen
	buffer_load_u16 v9, v9, s[4:7], 0 offen
	buffer_load_u16 v10, v10, s[4:7], 0 offen
	buffer_load_u16 v11, v11, s[4:7], 0 offen
	buffer_load_u16 v12, v12, s[4:7], 0 offen
	buffer_load_u16 v13, v13, s[4:7], 0 offen
	v_or_b32_e32 v17, 0x8c, v1
	v_or_b32_e32 v18, 0x90, v1
	v_or_b32_e32 v19, 0x94, v1
	v_or_b32_e32 v20, 0x98, v1
	v_or_b32_e32 v1, 0x9c, v1
	s_clause 0x7
	buffer_load_u16 v14, v14, s[4:7], 0 offen
	buffer_load_u16 v15, v15, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	buffer_load_u16 v17, v17, s[4:7], 0 offen
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	buffer_load_u16 v54, v1, s[4:7], 0 offen
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v3, s29, v3
	s_add_i32 s1, s1, s14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v61, v47, v67 :: v_dual_add_f32 v66, v41, v72
	v_dual_add_f32 v67, v40, v73 :: v_dual_add_f32 v72, v35, v78
	v_dual_add_f32 v73, v34, v79 :: v_dual_add_f32 v78, v29, v84
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v42, v55, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v55, s1, v53
	v_add3_u32 v53, s1, v53, 64
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v57, v51, v63 :: v_dual_add_f32 v62, v46, v68
	v_dual_add_f32 v63, v45, v69 :: v_dual_add_f32 v68, v39, v74
	v_dual_add_f32 v69, v38, v75 :: v_dual_add_f32 v74, v33, v80
	v_dual_add_f32 v75, v32, v81 :: v_dual_add_f32 v80, v27, v86
	v_dual_add_f32 v81, v26, v87 :: v_dual_add_f32 v86, v21, v92
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v87, 0x5410
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v35, v72, s2
	v_cndmask_b32_e64 v34, v34, v73, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add_lshl_u32 v72, v55, v3, 1
	v_add_lshl_u32 v73, v53, v3, 1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v59, v49, v65 :: v_dual_add_f32 v64, v44, v70
	v_dual_add_f32 v65, v43, v71 :: v_dual_add_f32 v70, v37, v76
	v_dual_add_f32 v71, v36, v77 :: v_dual_add_f32 v76, v31, v82
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v74, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v77, v30, v83 :: v_dual_add_f32 v82, v25, v88
	v_dual_add_f32 v79, v28, v85 :: v_dual_add_f32 v84, v23, v90
	v_dual_add_f32 v83, v24, v89 :: v_dual_and_b32 v0, 16, v0
	v_dual_add_f32 v85, v22, v91 :: v_dual_mov_b32 v88, 0x7632
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v56, s2
	v_cndmask_b32_e64 v51, v51, v57, s2
	v_cndmask_b32_e64 v32, v32, v75, s2
	v_cndmask_b32_e64 v31, v31, v76, s2
	v_cndmask_b32_e64 v21, v21, v86, s2
	v_cndmask_b32_e64 v50, v50, v58, s2
	v_cndmask_b32_e64 v49, v49, v59, s2
	v_cndmask_b32_e64 v47, v47, v61, s2
	v_cndmask_b32_e64 v46, v46, v62, s2
	v_cndmask_b32_e64 v45, v45, v63, s2
	v_cndmask_b32_e64 v43, v43, v65, s2
	v_cndmask_b32_e64 v41, v41, v66, s2
	v_cndmask_b32_e64 v40, v40, v67, s2
	v_cndmask_b32_e64 v39, v39, v68, s2
	v_cndmask_b32_e64 v38, v38, v69, s2
	v_cndmask_b32_e64 v30, v30, v77, s2
	v_cndmask_b32_e64 v29, v29, v78, s2
	v_cndmask_b32_e64 v28, v28, v79, s2
	v_cndmask_b32_e64 v27, v27, v80, s2
	v_cndmask_b32_e64 v26, v26, v81, s2
	v_cndmask_b32_e64 v25, v25, v82, s2
	v_cndmask_b32_e64 v24, v24, v83, s2
	v_cndmask_b32_e64 v23, v23, v84, s2
	v_cndmask_b32_e64 v22, v22, v85, s2
	v_cndmask_b32_e64 v48, v48, v60, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.h, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v70, s2
	v_cndmask_b32_e64 v36, v36, v71, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v67, s29, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v64, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v2.h, v1.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	s_mov_b32 s0, 0x76543210
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	v_mov_b16_e32 v70.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_add_lshl_u32 v55, v55, v67, 1
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v3, 16, v4
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v4, 16, v5
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v5, 16, v6
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v6, 16, v7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v3, v6
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v6, v4, v6 :: v_dual_lshlrev_b32 v7, 16, v8
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v8, 16, v9
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v9, 16, v10
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v10, 16, v11
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v11, 16, v12
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v12, 16, v13
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v13, 16, v14
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v14, 16, v15
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v15, 16, v16
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v16, 16, v17
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v17, 16, v18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v18, 16, v19
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v76, v3, v8
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v6, v35, v6
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v86, v3, v18
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v89, v3, v19 :: v_dual_lshlrev_b32 v20, 16, v54
	v_mul_f32_e32 v54, v3, v5
	v_mul_f32_e32 v75, v3, v7
	v_mul_f32_e32 v5, v4, v5
	v_mul_f32_e32 v7, v4, v7
	v_dual_mul_f32 v8, v4, v8 :: v_dual_mul_f32 v85, v3, v17
	v_mul_f32_e32 v82, v3, v14
	v_mul_f32_e32 v83, v3, v15
	v_mul_f32_e32 v84, v3, v16
	v_mul_f32_e32 v81, v3, v13
	v_mul_f32_e32 v78, v3, v10
	v_mul_f32_e32 v79, v3, v11
	v_mul_f32_e32 v80, v3, v12
	v_mul_f32_e32 v77, v3, v9
	v_mul_f32_e32 v3, v3, v20
	v_dual_mul_f32 v9, v4, v9 :: v_dual_mul_f32 v50, v50, v76
	v_dual_mul_f32 v10, v4, v10 :: v_dual_mul_f32 v51, v51, v75
	v_dual_mul_f32 v11, v4, v11 :: v_dual_mul_f32 v46, v46, v80
	v_dual_mul_f32 v12, v4, v12 :: v_dual_mul_f32 v49, v49, v77
	v_mul_f32_e32 v13, v4, v13
	v_dual_mul_f32 v14, v4, v14 :: v_dual_mul_f32 v47, v47, v79
	v_dual_mul_f32 v15, v4, v15 :: v_dual_mul_f32 v38, v38, v89
	v_dual_mul_f32 v16, v4, v16 :: v_dual_mul_f32 v45, v45, v81
	v_dual_mul_f32 v17, v4, v17 :: v_dual_mul_f32 v8, v33, v8
	v_dual_mul_f32 v18, v4, v18 :: v_dual_mul_f32 v43, v43, v83
	v_dual_mul_f32 v19, v4, v19 :: v_dual_mul_f32 v10, v31, v10
	v_dual_mul_f32 v4, v4, v20 :: v_dual_mul_f32 v39, v39, v86
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v20, v42, v54
	v_dual_mul_f32 v42, v52, v74 :: v_dual_mul_f32 v41, v41, v84
	v_dual_mul_f32 v40, v40, v85 :: v_dual_mul_f32 v11, v30, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v17, v24, v17 :: v_dual_mul_f32 v4, v21, v4
	v_dual_mul_f32 v19, v22, v19 :: v_dual_max_f32 v20, 0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 387 15 is_stmt 1              ; generate_amdgcn.py:387:15
	v_dual_max_f32 v21, 0, v42 :: v_dual_max_f32 v22, 0, v51
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v48, v48, v78 :: v_dual_mul_f32 v3, v37, v3
	v_dual_mul_f32 v9, v32, v9 :: v_dual_mul_f32 v14, v27, v14
	v_dual_mul_f32 v15, v26, v15 :: v_dual_mul_f32 v18, v23, v18
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v23, 0, v50 :: v_dual_max_f32 v24, 0, v49
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v19, 0, v19 :: v_dual_mul_f32 v20, v20, v20
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v21, v21, v21 :: v_dual_mul_f32 v22, v22, v22
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v13, v28, v13 :: v_dual_mul_f32 v16, v25, v16
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v25, 0, v48 :: v_dual_max_f32 v26, 0, v47
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v4, 0, v4
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v23, v23, v23 :: v_dual_mul_f32 v24, v24, v24
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v14, v14, v14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, v20.h
	v_mov_b16_e32 v56.l, v21.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v36, v5 :: v_dual_mul_f32 v12, v29, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v26, v26, v26
	v_mul_f32_e32 v17, v17, v17
	v_dual_mul_f32 v19, v19, v19 :: v_dual_and_b32 v36, 1, v1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v58.l, v24.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v35, v4, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v2.l, v11.h
	v_and_b32_e32 v4, 1, v56
	v_mov_b16_e32 v1.l, v23.h
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v44, v44, v82 :: v_dual_mul_f32 v7, v34, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v4, v21, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v25.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v27, 0, v46 :: v_dual_max_f32 v28, 0, v45
	v_dual_max_f32 v33, 0, v39 :: v_dual_max_f32 v34, 0, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 1, v58
	v_add3_u32 v11, v11, v2, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v29, 0, v44 :: v_dual_and_b32 v2, 1, v1
	v_max_f32_e32 v30, 0, v43
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v27, v27, v27 :: v_dual_mul_f32 v28, v28, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v57.l, v22.h
	v_add3_u32 v20, v20, v36, 0x7fff
	v_add3_u32 v24, v24, v38, 0x7fff
	v_add3_u32 v2, v25, v2, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v31, 0, v41 :: v_dual_max_f32 v32, 0, v40
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v29, v29, v29 :: v_dual_mul_f32 v30, v30, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v59.l, v26.h
	v_mov_b16_e32 v1.l, v27.h
	v_mov_b16_e32 v4.l, v20.h
	v_mov_b16_e32 v2.l, v24.h
	v_and_b32_e32 v37, 1, v57
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v12, 0, v12
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v31, v31, v31 :: v_dual_mul_f32 v32, v32, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v39, 1, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, v22, v37, 0x7fff
	v_add3_u32 v20, v23, v21, 0x7fff
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v29.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v33, v33, v33 :: v_dual_mul_f32 v34, v34, v34
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v61.l, v30.h
	v_mov_b16_e32 v62.l, v32.h
	v_mov_b16_e32 v20.l, v22.h
	v_add3_u32 v0, v27, v21, 0x7fff
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v31.h
	v_cndmask_b32_e32 v22, v2, v4, vcc_lo
	v_cndmask_b32_e32 v2, v4, v2, vcc_lo
	v_add3_u32 v26, v26, v39, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v63.l, v34.h
	v_mov_b16_e32 v66.l, v9.h
	v_dual_cndmask_b32 v4, 0x1054, v87 :: v_dual_and_b32 v41, 1, v61
	v_dual_cndmask_b32 v23, 0x3276, v88 :: v_dual_and_b32 v42, 1, v62
	v_mov_b16_e32 v0.l, v26.h
	v_and_b32_e32 v24, 1, v1
	v_mov_b16_e32 v1.l, v33.h
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v3, v3, v3 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v63
	v_dual_cndmask_b32 v25, v0, v20 :: v_dual_and_b32 v46, 1, v66
	v_cndmask_b32_e32 v0, v20, v0, vcc_lo
	v_permlanex16_b32 v20, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v4, 8, v4
	v_lshl_or_b32 v4, v23, 8, v23
	v_add3_u32 v23, v31, v24, 0x7fff
	v_and_b32_e32 v24, 1, v1
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v60.l, v28.h
	v_add3_u32 v32, v32, v42, 0x7fff
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v24, v33, v24, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v21, v29, v21, 0x7fff
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v6.h
	v_mov_b16_e32 v24.l, v32.h
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v15, 0, v15 :: v_dual_and_b32 v40, 1, v60
	v_dual_max_f32 v18, 0, v18 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_mul_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v28, v28, v40, 0x7fff
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v4, 0x760076, v4
	v_add3_u32 v3, v3, v26, 0x7fff
	v_and_b32_e32 v26, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_mov_b16_e32 v64.l, v5.h
	v_add3_u32 v30, v30, v41, 0x7fff
	v_add3_u32 v34, v34, v43, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v18, v18, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v21.l, v28.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v4, v4, 4, v4
	v_add3_u32 v26, v6, v26, 0x7fff
	v_and_b32_e32 v6, 1, v1
	v_mov_b16_e32 v1.l, v10.h
	v_mov_b16_e32 v23.l, v30.h
	v_mov_b16_e32 v3.l, v34.h
	v_and_b32_e32 v44, 1, v64
	v_mov_b16_e32 v69.l, v15.h
	v_cndmask_b32_e32 v27, v24, v21, vcc_lo
	v_dual_cndmask_b32 v21, v21, v24 :: v_dual_and_b32 v24, 0x5040504, v2
	v_and_b32_e32 v28, 0x7060706, v4
	v_and_b32_e32 v30, 1, v1
	v_mov_b16_e32 v1.l, v12.h
	v_mov_b16_e32 v65.l, v7.h
	v_add3_u32 v9, v9, v46, 0x7fff
	v_cndmask_b32_e32 v29, v3, v23, vcc_lo
	v_add3_u32 v5, v5, v44, 0x7fff
	v_dual_cndmask_b32 v23, v23, v3 :: v_dual_and_b32 v48, 1, v69
	v_perm_b32 v2, v20, v22, v24
	v_perm_b32 v3, v20, v22, v28
	v_and_b32_e32 v20, 1, v1
	v_add3_u32 v10, v10, v30, 0x7fff
	.loc	1 387 15                        ; generate_amdgcn.py:387:15
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v16, 0, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v19.h
	v_mov_b16_e32 v26.l, v5.h
	v_mov_b16_e32 v10.l, v9.h
	v_and_b32_e32 v45, 1, v65
	v_permlanex16_b32 v0, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v12, v12, v20, 0x7fff
	.loc	1 388 15                        ; generate_amdgcn.py:388:15
	v_dual_mul_f32 v13, v13, v13 :: v_dual_mul_f32 v16, v16, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v50, 1, v71
	v_permlanex16_b32 v21, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v1.l, v14.h
	v_mov_b16_e32 v12.l, v11.h
	v_cndmask_b32_e32 v11, v10, v26, vcc_lo
	v_cndmask_b32_e32 v10, v26, v10, vcc_lo
	v_add3_u32 v7, v7, v45, 0x7fff
	v_perm_b32 v4, v0, v25, v24
	v_perm_b32 v5, v0, v25, v28
	v_add3_u32 v0, v8, v6, 0x7fff
	v_permlanex16_b32 v22, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v0.l, v7.h
	v_perm_b32 v6, v21, v27, v24
	v_perm_b32 v7, v21, v27, v28
	v_and_b32_e32 v21, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	v_mov_b16_e32 v70.l, v17.h
	v_perm_b32 v8, v22, v29, v24
	v_perm_b32 v9, v22, v29, v28
	v_add3_u32 v15, v15, v48, 0x7fff
	v_and_b32_e32 v22, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	v_and_b32_e32 v49, 1, v70
	v_mov_b16_e32 v68.l, v13.h
	v_add3_u32 v14, v14, v21, 0x7fff
	v_add3_u32 v16, v16, v22, 0x7fff
	v_and_b32_e32 v20, 1, v1
	v_add3_u32 v17, v17, v49, 0x7fff
	v_mov_b16_e32 v1.l, v35.h
	v_mov_b16_e32 v16.l, v15.h
	v_add3_u32 v19, v19, v50, 0x7fff
	v_add3_u32 v15, v18, v20, 0x7fff
	v_mov_b16_e32 v15.l, v17.h
	v_and_b32_e32 v47, 1, v68
	v_and_b32_e32 v1, 1, v1
	v_permlanex16_b32 v21, v10, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v13, v47, 0x7fff
	v_add3_u32 v1, v35, v1, 0x7fff
	v_mov_b16_e32 v1.l, v19.h
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v10, v21, v11, v24
	v_perm_b32 v11, v21, v11, v28
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e32 v13, v0, v12, vcc_lo
	v_cndmask_b32_e32 v0, v12, v0, vcc_lo
	v_cndmask_b32_e32 v17, v16, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v1, v1, v16 :: v_dual_cndmask_b32 v12, v14, v15
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e32 v15, v15, v14, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v17, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v12, v13, v0, v24
	v_perm_b32 v13, v13, v0, v28
	v_perm_b32 v16, v17, v1, v24
	v_perm_b32 v17, v17, v1, v28
	v_perm_b32 v14, v18, v15, v24
	v_perm_b32 v15, v18, v15, v28
	v_add_lshl_u32 v0, v53, v67, 1
	s_clause 0x3
	buffer_store_b128 v[2:5], v72, s[12:15], 0 offen
	buffer_store_b128 v[6:9], v73, s[12:15], 0 offen
	buffer_store_b128 v[10:13], v55, s[12:15], 0 offen
	buffer_store_b128 v[14:17], v0, s[12:15], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 228
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12384
; TotalNumSgprs: 34
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_relu2_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
