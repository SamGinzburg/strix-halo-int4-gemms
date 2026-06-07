	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v21, 4, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_lshrrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v55, 15, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v22, 0x60, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v3, 48, v21
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s24, 63
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
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v1, 0x70, v21
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s7, s5, 0x4f7ffffe
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x0
	s_load_b32 s5, s[0:1], 0x38
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[5:6], null, s25, v4, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s7
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
	v_mul_lo_u32 v7, s5, v2
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s6, s12, s6
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s6, s8
	s_mov_b64 s[20:21], s[18:19]
	s_cselect_b32 s4, s11, s4
	s_mov_b32 s19, 0x31027000
	s_xor_b32 s8, s4, s7
	s_mov_b32 s18, 0x7ffffffe
	s_sub_i32 s4, s8, s7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s22, s18
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s6, s4, s10
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s6, s3, 6
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s9
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s9, s5, 0x7f
.Ltmp13:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s27, s2, 6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s27, s5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, v7, v3, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s25, s6
	s_lshl_b32 s24, s25, 5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s26, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s24, v5
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0xff
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s6, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s31, s25, 7
	v_add_nc_u32_e32 v9, s4, v5
	s_add_i32 s10, s4, s31
	v_add_nc_u32_e32 v10, s4, v8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, 0x80, s6, v6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s10, v5
	v_add_nc_u32_e32 v11, s10, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v12, 0x80000000, v9, s3
	v_cndmask_b32_e64 v14, 0x80000000, v10, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v18, 0x80000000, v6, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s23, s19
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v19, 0x80000000, v11, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[6:9], v7, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[10:13], v12, s[20:23], 0 offen
	buffer_load_b128 v[14:17], v14, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[23:26], v18, s[16:19], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[27:30], v5, s[20:23], 0 offen
	buffer_load_b128 v[31:34], v19, s[20:23], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v19, 0, v21
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s9, 0x17f
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 48, v5
	v_xor_b32_e32 v61, v21, v5
	v_lshlrev_b32_e32 v5, 3, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v18, 0, v61
	s_waitcnt vmcnt(5)
	ds_store_b128 v18, v[6:9] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v19, v[10:13]
	s_waitcnt vmcnt(3)
	ds_store_b128 v19, v[14:17] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v18, v[23:26] offset:20480
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v19, v[27:30] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v19, v[31:34] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v6, 0x430, v5
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v55, 6, v6
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
.LBB0_3:                                ; %Flow229
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	v_lshrrev_b32_e32 v56, 1, v22
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
.Ltmp14:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s9, s9, 7
	s_mov_b32 s10, s4
.Ltmp15:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s33, s9, -2
	s_mov_b32 s9, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v4, s6, v4
	v_dual_mov_b32 v44, 0 :: v_dual_and_b32 v5, 0x430, v5
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v2, s27, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 0x120, v4
	v_add_nc_u32_e32 v4, 0x100, v4
	s_lshl_b32 s7, s7, 7
	s_lshl_b32 s8, s8, 7
	v_lshl_or_b32 v57, v55, 6, v5
	v_mul_lo_u32 v6, s25, v6
	v_mul_lo_u32 v7, s25, v4
	v_mad_u64_u32 v[4:5], null, s5, v2, s[6:7]
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	v_xor_b32_e32 v59, 16, v57
	v_xor_b32_e32 v60, 32, v57
	v_add3_u32 v2, v6, s8, v1
	v_add3_u32 v1, v7, s8, v1
	s_mov_b32 s8, s4
	v_add3_u32 v62, v4, v3, 0x100
	v_xor_b32_e32 v58, 48, v57
	v_subrev_nc_u32_e32 v63, s7, v2
	v_subrev_nc_u32_e32 v64, s7, v1
	s_mov_b32 s7, s4
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_mov_b32_e32 v51, 0
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_mov_b32_e32 v49, 0
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v24, 0
	s_add_i32 s30, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s29, 0, 0x2000
	s_mov_b32 s5, 1
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[9:12], v62, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[13:16], v64, s[20:23], 0 offen
	buffer_load_b128 v[17:20], v63, s[20:23], 0 offen
	s_mov_b32 s7, s30
	s_mov_b32 s6, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v65, s7, v57
	v_add_nc_u32_e32 v66, s7, v59
	v_add_nc_u32_e32 v67, s7, v60
	v_add_nc_u32_e32 v68, s7, v58
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add3_u32 v69, s6, v55, v56
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[81:84], v65
	ds_load_b128 v[97:100], v65 offset:2048
	ds_load_b128 v[101:104], v66
	ds_load_b128 v[105:108], v66 offset:2048
	ds_load_b128 v[109:112], v67
	ds_load_b128 v[113:116], v67 offset:2048
	ds_load_b128 v[117:120], v68
	ds_load_b128 v[121:124], v68 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v65, v69 offset:1664
	ds_load_u8 v66, v69 offset:1536
	ds_load_u8 v67, v69 offset:1920
	ds_load_u8 v68, v69 offset:1792
	ds_load_u8 v70, v69 offset:1984
	ds_load_u8 v71, v69 offset:1856
	ds_load_u8 v72, v69 offset:1728
	ds_load_u8 v73, v69 offset:1600
	ds_load_u8 v74, v69 offset:1152
	ds_load_u8 v75, v69 offset:1024
	ds_load_u8 v76, v69 offset:1408
	ds_load_u8 v77, v69 offset:1280
	ds_load_u8 v78, v69 offset:1472
	ds_load_u8 v79, v69 offset:1344
	ds_load_u8 v80, v69 offset:1216
	ds_load_u8 v85, v69 offset:1088
	ds_load_u8 v86, v69 offset:640
	ds_load_u8 v87, v69 offset:512
	ds_load_u8 v88, v69 offset:896
	ds_load_u8 v89, v69 offset:768
	ds_load_u8 v90, v69 offset:960
	ds_load_u8 v91, v69 offset:832
	ds_load_u8 v92, v69 offset:704
	ds_load_u8 v93, v69 offset:576
	ds_load_u8 v94, v69 offset:128
	ds_load_u8 v95, v69
	ds_load_u8 v96, v69 offset:384
	ds_load_u8 v125, v69 offset:256
	ds_load_u8 v126, v69 offset:448
	ds_load_u8 v127, v69 offset:320
	ds_load_u8 v128, v69 offset:192
	ds_load_u8 v129, v69 offset:64
	ds_load_u8 v130, v69 offset:3712
	ds_load_u8 v131, v69 offset:3584
	ds_load_u8 v132, v69 offset:3968
	ds_load_u8 v133, v69 offset:3840
	ds_load_u8 v134, v69 offset:4032
	ds_load_u8 v135, v69 offset:3904
	ds_load_u8 v136, v69 offset:3776
	ds_load_u8 v137, v69 offset:3648
	ds_load_u8 v138, v69 offset:3200
	ds_load_u8 v139, v69 offset:3072
	ds_load_u8 v140, v69 offset:3456
	ds_load_u8 v141, v69 offset:3328
	ds_load_u8 v142, v69 offset:3520
	ds_load_u8 v143, v69 offset:3392
	ds_load_u8 v144, v69 offset:3264
	ds_load_u8 v145, v69 offset:3136
	ds_load_u8 v146, v69 offset:2688
	ds_load_u8 v147, v69 offset:2560
	ds_load_u8 v148, v69 offset:2944
	ds_load_u8 v149, v69 offset:2816
	ds_load_u8 v150, v69 offset:3008
	ds_load_u8 v151, v69 offset:2880
	ds_load_u8 v152, v69 offset:2752
	ds_load_u8 v153, v69 offset:2624
	ds_load_u8 v154, v69 offset:2176
	ds_load_u8 v155, v69 offset:2048
	ds_load_u8 v156, v69 offset:2432
	ds_load_u8 v157, v69 offset:2304
	ds_load_u8 v158, v69 offset:2496
	ds_load_u8 v159, v69 offset:2368
	ds_load_u8 v160, v69 offset:2240
	ds_load_u8 v161, v69 offset:2112
	ds_load_u8 v162, v69 offset:5760
	ds_load_u8 v163, v69 offset:5632
	ds_load_u8 v164, v69 offset:6016
	ds_load_u8 v165, v69 offset:5888
	ds_load_u8 v166, v69 offset:6080
	ds_load_u8 v167, v69 offset:5952
	ds_load_u8 v168, v69 offset:5824
	ds_load_u8 v169, v69 offset:5696
	ds_load_u8 v170, v69 offset:5248
	ds_load_u8 v171, v69 offset:5120
	ds_load_u8 v172, v69 offset:5504
	ds_load_u8 v173, v69 offset:5376
	ds_load_u8 v174, v69 offset:5568
	ds_load_u8 v175, v69 offset:5440
	ds_load_u8 v176, v69 offset:5312
	ds_load_u8 v177, v69 offset:5184
	ds_load_u8 v178, v69 offset:4736
	ds_load_u8 v179, v69 offset:4608
	ds_load_u8 v180, v69 offset:4992
	ds_load_u8 v181, v69 offset:4864
	ds_load_u8 v182, v69 offset:5056
	ds_load_u8 v183, v69 offset:4928
	ds_load_u8 v184, v69 offset:4800
	ds_load_u8 v185, v69 offset:4672
	ds_load_u8 v186, v69 offset:4224
	ds_load_u8 v187, v69 offset:4096
	ds_load_u8 v188, v69 offset:4480
	ds_load_u8 v189, v69 offset:4352
	ds_load_u8 v190, v69 offset:4544
	ds_load_u8 v191, v69 offset:4416
	ds_load_u8 v192, v69 offset:4288
	ds_load_u8 v193, v69 offset:4160
	ds_load_u8 v194, v69 offset:7808
	ds_load_u8 v195, v69 offset:7680
	ds_load_u8 v196, v69 offset:8064
	ds_load_u8 v197, v69 offset:7936
	ds_load_u8 v198, v69 offset:8128
	ds_load_u8 v199, v69 offset:8000
	ds_load_u8 v200, v69 offset:7872
	ds_load_u8 v201, v69 offset:7744
	ds_load_u8 v202, v69 offset:7296
	ds_load_u8 v203, v69 offset:7168
	ds_load_u8 v204, v69 offset:7552
	ds_load_u8 v205, v69 offset:7424
	ds_load_u8 v206, v69 offset:7616
	ds_load_u8 v207, v69 offset:7488
	ds_load_u8 v208, v69 offset:7360
	ds_load_u8 v209, v69 offset:7232
	ds_load_u8 v210, v69 offset:6784
	ds_load_u8 v211, v69 offset:6656
	ds_load_u8 v212, v69 offset:7040
	ds_load_u8 v213, v69 offset:6912
	ds_load_u8 v214, v69 offset:7104
	ds_load_u8 v215, v69 offset:6976
	ds_load_u8 v216, v69 offset:6848
	ds_load_u8 v217, v69 offset:6720
	ds_load_u8 v218, v69 offset:6272
	ds_load_u8 v219, v69 offset:6144
	ds_load_u8 v220, v69 offset:6528
	ds_load_u8 v221, v69 offset:6400
	ds_load_u8 v222, v69 offset:6592
	ds_load_u8 v223, v69 offset:6464
	ds_load_u8 v224, v69 offset:6336
	ds_load_u8 v69, v69 offset:6208
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v75, v74, 0xc0c0004
	v_perm_b32 v68, v77, v76, 0xc0c0004
	v_perm_b32 v74, v87, v86, 0xc0c0004
	v_perm_b32 v75, v89, v88, 0xc0c0004
	v_perm_b32 v76, v95, v94, 0xc0c0004
	v_perm_b32 v77, v125, v96, 0xc0c0004
	v_perm_b32 v86, v131, v130, 0xc0c0004
	v_perm_b32 v87, v133, v132, 0xc0c0004
	v_perm_b32 v88, v139, v138, 0xc0c0004
	v_perm_b32 v94, v141, v140, 0xc0c0004
	v_perm_b32 v125, v155, v154, 0xc0c0004
	v_perm_b32 v130, v157, v156, 0xc0c0004
	v_perm_b32 v131, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v132, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v133, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v138, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v139, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v140, v181, v180, 0xc0c0004
	v_perm_b32 v72, v73, v72, 0xc0c0004
	v_perm_b32 v70, v71, v70, 0xc0c0004
	v_perm_b32 v71, v85, v80, 0xc0c0004
	v_perm_b32 v73, v79, v78, 0xc0c0004
	v_perm_b32 v78, v93, v92, 0xc0c0004
	v_perm_b32 v79, v91, v90, 0xc0c0004
	v_perm_b32 v80, v129, v128, 0xc0c0004
	v_perm_b32 v85, v127, v126, 0xc0c0004
	v_perm_b32 v95, v147, v146, 0xc0c0004
	v_perm_b32 v96, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v141, v187, v186, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v146, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v149, v203, v202, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v154, v205, v204, 0xc0c0004
	v_perm_b32 v93, v137, v136, 0xc0c0004
	v_perm_b32 v163, v135, v134, 0xc0c0004
	v_perm_b32 v145, v145, v144, 0xc0c0004
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v152, v153, v152, 0xc0c0004
	v_perm_b32 v150, v151, v150, 0xc0c0004
	v_perm_b32 v151, v161, v160, 0xc0c0004
	v_perm_b32 v153, v159, v158, 0xc0c0004
	v_perm_b32 v161, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v224, 0xc0c0004
	v_perm_b32 v174, v223, v222, 0xc0c0004
	v_lshl_or_b32 v92, v66, 16, v65
	v_lshl_or_b32 v91, v68, 16, v67
	v_lshl_or_b32 v90, v75, 16, v74
	v_lshl_or_b32 v89, v77, 16, v76
	v_lshl_or_b32 v125, v130, 16, v125
	v_lshl_or_b32 v132, v132, 16, v131
	v_lshl_or_b32 v131, v138, 16, v133
	v_lshl_or_b32 v130, v140, 16, v139
	v_lshl_or_b32 v140, v70, 16, v72
	v_lshl_or_b32 v139, v73, 16, v71
	v_lshl_or_b32 v138, v79, 16, v78
	v_lshl_or_b32 v137, v85, 16, v80
	v_perm_b32 v147, v195, v194, 0xc0c0004
	v_perm_b32 v148, v197, v196, 0xc0c0004
	v_perm_b32 v158, v169, v168, 0xc0c0004
	v_perm_b32 v159, v167, v166, 0xc0c0004
	v_perm_b32 v160, v177, v176, 0xc0c0004
	v_perm_b32 v164, v185, v184, 0xc0c0004
	v_perm_b32 v165, v183, v182, 0xc0c0004
	v_perm_b32 v166, v193, v192, 0xc0c0004
	v_perm_b32 v167, v191, v190, 0xc0c0004
	v_lshl_or_b32 v128, v87, 16, v86
	v_lshl_or_b32 v127, v94, 16, v88
	v_lshl_or_b32 v126, v96, 16, v95
	v_lshl_or_b32 v129, v146, 16, v141
	v_lshl_or_b32 v135, v154, 16, v149
	v_lshl_or_b32 v144, v163, 16, v93
	v_lshl_or_b32 v143, v142, 16, v145
	v_lshl_or_b32 v142, v150, 16, v152
	v_lshl_or_b32 v141, v153, 16, v151
	v_lshl_or_b32 v149, v174, 16, v69
	v_wmma_i32_16x16x16_iu8 v[65:72], v[89:92], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[137:140], v[81:84], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[89:92], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[137:140], v[97:100], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v155, v211, v210, 0xc0c0004
	v_perm_b32 v156, v213, v212, 0xc0c0004
	v_perm_b32 v157, v219, v218, 0xc0c0004
	v_perm_b32 v162, v221, v220, 0xc0c0004
	v_perm_b32 v168, v201, v200, 0xc0c0004
	v_perm_b32 v169, v199, v198, 0xc0c0004
	v_perm_b32 v170, v209, v208, 0xc0c0004
	v_perm_b32 v171, v207, v206, 0xc0c0004
	v_perm_b32 v172, v217, v216, 0xc0c0004
	v_perm_b32 v173, v215, v214, 0xc0c0004
	v_lshl_or_b32 v136, v148, 16, v147
	v_lshl_or_b32 v148, v159, 16, v158
	v_lshl_or_b32 v147, v161, 16, v160
	v_lshl_or_b32 v146, v165, 16, v164
	v_lshl_or_b32 v145, v167, 16, v166
	v_wmma_i32_16x16x16_iu8 v[65:72], v[125:128], v[101:104], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[141:144], v[101:104], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[125:128], v[105:108], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[105:108], v[89:96] neg_lo:[1,1,0]
	v_lshl_or_b32 v134, v156, 16, v155
	v_lshl_or_b32 v133, v162, 16, v157
	v_lshl_or_b32 v152, v169, 16, v168
	v_lshl_or_b32 v151, v171, 16, v170
	v_lshl_or_b32 v150, v173, 16, v172
	v_wmma_i32_16x16x16_iu8 v[65:72], v[129:132], v[109:112], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[73:80], v[145:148], v[109:112], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[129:132], v[113:116], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[145:148], v[113:116], v[89:96] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s5, s5, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[65:72], v[133:136], v[117:120], v[65:72] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s5, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[73:80], v[149:152], v[117:120], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[133:136], v[121:124], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[149:152], v[121:124], v[89:96] neg_lo:[1,1,0]
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s5, s5, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v65, v65
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s6, s5, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v66
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
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s7, s6, 0
	s_mov_b32 s4, s29
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s29, s7, s6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v44, v44, v65 :: v_dual_add_nc_u32 v63, s31, v63
	v_dual_add_f32 v53, v53, v67 :: v_dual_add_nc_u32 v64, s31, v64
	v_dual_add_f32 v51, v51, v69 :: v_dual_add_nc_u32 v62, 0x80, v62
	v_dual_add_f32 v52, v52, v68 :: v_dual_add_nc_u32 v225, s7, v61
	v_dual_add_f32 v45, v45, v75 :: v_dual_add_nc_u32 v226, s29, v21
	v_add_f32_e32 v54, v54, v66
	v_dual_add_f32 v50, v50, v70 :: v_dual_add_f32 v49, v49, v71
	v_dual_add_f32 v48, v48, v72 :: v_dual_add_f32 v41, v41, v78
	v_dual_add_f32 v47, v47, v73 :: v_dual_add_f32 v46, v46, v74
	v_dual_add_f32 v43, v43, v76 :: v_dual_add_f32 v42, v42, v77
	v_dual_add_f32 v39, v39, v80 :: v_dual_add_f32 v40, v40, v79
	v_dual_add_f32 v37, v37, v82 :: v_dual_add_f32 v38, v38, v81
	v_dual_add_f32 v35, v35, v84 :: v_dual_add_f32 v36, v36, v83
	v_dual_add_f32 v33, v33, v86 :: v_dual_add_f32 v34, v34, v85
	v_dual_add_f32 v31, v31, v88 :: v_dual_add_f32 v32, v32, v87
	v_dual_add_f32 v29, v29, v90 :: v_dual_add_f32 v30, v30, v89
	v_dual_add_f32 v27, v27, v92 :: v_dual_add_f32 v28, v28, v91
	v_dual_add_f32 v25, v25, v94 :: v_dual_add_f32 v26, v26, v93
	v_dual_add_f32 v23, v23, v96 :: v_dual_add_f32 v24, v24, v95
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s33, s33, -1
	s_mov_b32 s30, s28
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s28, s7, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s33, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b128 v225, v[9:12] offset:16384
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v226, v[13:16]
	s_waitcnt vmcnt(0)
	ds_store_b128 v226, v[17:20] offset:4096
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v44, 0
	s_add_i32 s30, 0, 0x4000
	s_add_i32 s28, 0, 0x5000
	s_add_i32 s29, 0, 0x2000
.LBB0_7:                                ; %._crit_edge
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_or_b32_e32 v1, v56, v55
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
	v_add_nc_u32_e32 v2, s30, v60
	ds_load_b128 v[77:80], v2 offset:2048
	ds_load_b128 v[69:72], v2
	v_add_nc_u32_e32 v2, s30, v57
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
	v_add_nc_u32_e32 v19, s30, v58
	v_add_nc_u32_e32 v10, s30, v59
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
	v_add_f32_e32 v53, v53, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v16
	v_lshl_or_b32 v125, v20, 16, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v54, v54, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v51, v51, v12
	v_add_f32_e32 v49, v49, v14
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
	v_add_f32_e32 v52, v52, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v50, v50, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v13, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v43, v43, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v47, v47, v11
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v66
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v46, v46, v12 :: v_dual_add_f32 v45, v45, v13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v67
	v_cvt_f32_i32_e32 v13, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v48, v48, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v41, v41, v11 :: v_dual_add_f32 v40, v40, v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v39, v39, v13 :: v_dual_add_f32 v42, v42, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v70
	v_cvt_f32_i32_e32 v11, v71
	v_cvt_f32_i32_e32 v13, v73
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v37, v37, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v15, v75
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v36, v36, v11
	v_dual_add_f32 v34, v34, v13 :: v_dual_add_f32 v29, v29, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v32, v32, v15 :: v_dual_add_f32 v27, v27, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v38, v38, v14
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v74
	v_cvt_f32_i32_e32 v3, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v30, v30, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v5, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v28, v28, v4
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v6, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_add_f32_e32 v35, v35, v12
	v_add_f32_e32 v33, v33, v14
	v_dual_add_f32 v31, v31, v11 :: v_dual_add_f32 v26, v26, v2
	v_dual_add_f32 v25, v25, v3 :: v_dual_add_f32 v24, v24, v4
	v_dual_add_f32 v23, v23, v5 :: v_dual_add_f32 v44, v44, v6
.LBB0_9:
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
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
	v_add_nc_u32_e32 v1, s29, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v73, s11 :: v_dual_add_nc_u32 v2, s28, v60
	v_mov_b32_e32 v72, s10
	ds_load_u8 v4, v1 offset:1664
	ds_load_u8 v5, v1 offset:1536
	ds_load_u8 v6, v1 offset:1920
	ds_load_u8 v7, v1 offset:1792
	v_dual_mov_b32 v70, s8 :: v_dual_add_nc_u32 v3, s28, v59
	v_dual_mov_b32 v71, s9 :: v_dual_add_nc_u32 v10, s28, v58
	v_dual_mov_b32 v69, s7 :: v_dual_add_nc_u32 v8, s28, v57
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[74:77], v2 offset:2048
	ds_load_b128 v[57:60], v2
	ds_load_b128 v[78:81], v3 offset:2048
	ds_load_b128 v[61:64], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v1 offset:1152
	ds_load_u8 v3, v1 offset:1024
	ds_load_u8 v9, v1 offset:1408
	ds_load_u8 v11, v1 offset:1280
	ds_load_u8 v12, v1 offset:640
	ds_load_u8 v13, v1 offset:512
	ds_load_u8 v14, v1 offset:896
	ds_load_u8 v15, v1 offset:768
	ds_load_u8 v16, v1 offset:1984
	ds_load_u8 v17, v1 offset:1856
	ds_load_u8 v18, v1 offset:1728
	ds_load_u8 v19, v1 offset:1600
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[82:85], v8 offset:2048
	ds_load_b128 v[86:89], v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v122, v1 offset:3520
	ds_load_u8 v123, v1 offset:3392
	ds_load_u8 v124, v1 offset:3264
	ds_load_u8 v125, v1 offset:3136
	ds_load_u8 v126, v1 offset:3008
	ds_load_u8 v127, v1 offset:2880
	ds_load_u8 v128, v1 offset:2752
	ds_load_u8 v129, v1 offset:2624
	ds_load_u8 v130, v1 offset:2496
	ds_load_u8 v131, v1 offset:2368
	ds_load_u8 v132, v1 offset:2240
	ds_load_u8 v133, v1 offset:2112
	ds_load_u8 v142, v1 offset:5056
	ds_load_u8 v143, v1 offset:4928
	ds_load_u8 v144, v1 offset:4800
	ds_load_u8 v145, v1 offset:4672
	v_dual_mov_b32 v68, s6 :: v_dual_mov_b32 v67, s5
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v3, v11, v9, 0xc0c0004
	v_perm_b32 v5, v7, v6, 0xc0c0004
	ds_load_u8 v6, v1 offset:128
	ds_load_u8 v7, v1
	ds_load_u8 v20, v1 offset:384
	ds_load_u8 v65, v1 offset:256
	ds_load_u8 v110, v1 offset:1472
	ds_load_u8 v111, v1 offset:1344
	ds_load_u8 v112, v1 offset:1216
	ds_load_u8 v114, v1 offset:1088
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v9, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v12, v15, v14, 0xc0c0004
	v_lshl_or_b32 v92, v3, 16, v2
	v_lshl_or_b32 v93, v5, 16, v4
	ds_load_u8 v11, v1 offset:960
	ds_load_u8 v115, v1 offset:832
	ds_load_u8 v116, v1 offset:704
	ds_load_u8 v117, v1 offset:576
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	v_lshl_or_b32 v91, v12, 16, v9
	ds_load_u8 v12, v1 offset:448
	ds_load_u8 v13, v1 offset:320
	ds_load_u8 v14, v1 offset:192
	ds_load_u8 v15, v1 offset:64
	v_mov_b32_e32 v66, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v2, v7, v6, 0xc0c0004
	ds_load_u8 v4, v1 offset:3712
	ds_load_u8 v5, v1 offset:3584
	ds_load_u8 v6, v1 offset:3968
	ds_load_u8 v7, v1 offset:3840
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v65, v20, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v114, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v90, v3, 16, v2
	ds_load_u8 v2, v1 offset:3200
	ds_load_u8 v3, v1 offset:3072
	ds_load_u8 v8, v1 offset:3456
	ds_load_u8 v9, v1 offset:3328
	ds_load_u8 v20, v1 offset:2688
	ds_load_u8 v65, v1 offset:2560
	ds_load_u8 v94, v1 offset:2944
	ds_load_u8 v95, v1 offset:2816
	ds_load_u8 v96, v1 offset:2176
	ds_load_u8 v97, v1 offset:2048
	ds_load_u8 v98, v1 offset:2432
	ds_load_u8 v99, v1 offset:2304
	ds_load_u8 v118, v1 offset:4032
	ds_load_u8 v119, v1 offset:3904
	ds_load_u8 v120, v1 offset:3776
	ds_load_u8 v121, v1 offset:3648
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v11, v115, v11, 0xc0c0004
	v_perm_b32 v112, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v12, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v102, v3, v2, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v103, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v65, v20, 0xc0c0004
	v_perm_b32 v100, v5, v4, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v95, v94, 0xc0c0004
	v_perm_b32 v101, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v94, v97, v96, 0xc0c0004
	v_lshl_or_b32 v96, v103, 16, v102
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v1 offset:5760
	ds_load_u8 v104, v1 offset:5632
	ds_load_u8 v105, v1 offset:6016
	ds_load_u8 v106, v1 offset:5888
	v_lshl_or_b32 v97, v101, 16, v100
	v_lshl_or_b32 v95, v65, 16, v20
	v_lshl_or_b32 v114, v12, 16, v14
	v_lshl_or_b32 v94, v98, 16, v94
	ds_load_u8 v20, v1 offset:5248
	ds_load_u8 v65, v1 offset:5120
	ds_load_u8 v98, v1 offset:5504
	ds_load_u8 v100, v1 offset:5376
	ds_load_u8 v101, v1 offset:4736
	ds_load_u8 v102, v1 offset:4608
	ds_load_u8 v103, v1 offset:4992
	ds_load_u8 v107, v1 offset:4864
	ds_load_u8 v134, v1 offset:6080
	ds_load_u8 v135, v1 offset:5952
	ds_load_u8 v136, v1 offset:5824
	ds_load_u8 v137, v1 offset:5696
	v_wmma_i32_16x16x16_iu8 v[2:9], v[90:93], v[86:89], v[66:73] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[2:9], v[94:97], v[61:64], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v65, v20, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v100, v98, 0xc0c0004
	v_perm_b32 v99, v104, v99, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	v_perm_b32 v104, v106, v105, 0xc0c0004
	ds_load_u8 v105, v1 offset:4224
	ds_load_u8 v106, v1 offset:4096
	ds_load_u8 v108, v1 offset:4480
	ds_load_u8 v109, v1 offset:4352
	ds_load_u8 v138, v1 offset:5568
	ds_load_u8 v139, v1 offset:5440
	ds_load_u8 v140, v1 offset:5312
	ds_load_u8 v141, v1 offset:5184
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v107, v103, 0xc0c0004
	ds_load_u8 v103, v1 offset:7808
	ds_load_u8 v107, v1 offset:7680
	ds_load_u8 v113, v1 offset:8064
	ds_load_u8 v146, v1 offset:7936
	ds_load_u8 v147, v1 offset:4544
	ds_load_u8 v148, v1 offset:4416
	ds_load_u8 v149, v1 offset:4288
	ds_load_u8 v150, v1 offset:4160
	v_lshl_or_b32 v100, v65, 16, v20
	v_lshl_or_b32 v101, v104, 16, v99
	ds_load_u8 v20, v1 offset:7296
	ds_load_u8 v65, v1 offset:7168
	ds_load_u8 v151, v1 offset:7552
	ds_load_u8 v152, v1 offset:7424
	ds_load_u8 v153, v1 offset:8128
	ds_load_u8 v154, v1 offset:8000
	ds_load_u8 v155, v1 offset:7872
	ds_load_u8 v156, v1 offset:7744
	v_lshl_or_b32 v99, v102, 16, v98
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v106, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v157, v107, v103, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v113, v146, v113, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v65, v20, 0xc0c0004
	v_perm_b32 v123, v148, v147, 0xc0c0004
	v_lshl_or_b32 v98, v106, 16, v105
	ds_load_u8 v146, v1 offset:6784
	ds_load_u8 v158, v1 offset:6656
	ds_load_u8 v159, v1 offset:7040
	ds_load_u8 v160, v1 offset:6912
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[102:105], v10 offset:2048
	ds_load_b128 v[106:109], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v1 offset:6272
	ds_load_u8 v161, v1 offset:6144
	v_lshl_or_b32 v113, v113, 16, v157
	ds_load_u8 v157, v1 offset:7616
	ds_load_u8 v162, v1 offset:7488
	ds_load_u8 v163, v1 offset:7360
	ds_load_u8 v164, v1 offset:7232
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v65, v152, v151, 0xc0c0004
	ds_load_u8 v151, v1 offset:6528
	ds_load_u8 v152, v1 offset:6400
	ds_load_u8 v165, v1 offset:7104
	ds_load_u8 v166, v1 offset:6976
	ds_load_u8 v167, v1 offset:6848
	ds_load_u8 v168, v1 offset:6720
	v_perm_b32 v122, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[2:9], v[98:101], v[57:60], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v146, v158, v146, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v158, v160, v159, 0xc0c0004
	ds_load_u8 v159, v1 offset:6592
	ds_load_u8 v160, v1 offset:6464
	ds_load_u8 v169, v1 offset:6336
	ds_load_u8 v1, v1 offset:6208
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v161, v161, v10, 0xc0c0004
	v_perm_b32 v10, v19, v18, 0xc0c0004
	v_perm_b32 v18, v111, v110, 0xc0c0004
	v_perm_b32 v19, v117, v116, 0xc0c0004
	v_perm_b32 v111, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v110, v152, v151, 0xc0c0004
	v_lshl_or_b32 v117, v16, 16, v10
	v_lshl_or_b32 v116, v18, 16, v17
	v_lshl_or_b32 v115, v11, 16, v19
	v_perm_b32 v18, v121, v120, 0xc0c0004
	v_perm_b32 v19, v119, v118, 0xc0c0004
	v_perm_b32 v118, v129, v128, 0xc0c0004
	v_perm_b32 v119, v127, v126, 0xc0c0004
	v_perm_b32 v120, v133, v132, 0xc0c0004
	v_perm_b32 v121, v131, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[114:117], v[86:89], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v89, v19, 16, v18
	v_lshl_or_b32 v88, v112, 16, v111
	v_lshl_or_b32 v87, v119, 16, v118
	v_lshl_or_b32 v86, v121, 16, v120
	v_perm_b32 v18, v137, v136, 0xc0c0004
	v_perm_b32 v19, v135, v134, 0xc0c0004
	v_perm_b32 v111, v141, v140, 0xc0c0004
	v_perm_b32 v112, v139, v138, 0xc0c0004
	v_perm_b32 v118, v145, v144, 0xc0c0004
	v_perm_b32 v119, v143, v142, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[86:89], v[61:64], v[10:17] neg_lo:[1,1,0]
	v_lshl_or_b32 v121, v19, 16, v18
	v_lshl_or_b32 v120, v112, 16, v111
	v_perm_b32 v18, v156, v155, 0xc0c0004
	v_lshl_or_b32 v119, v119, 16, v118
	v_lshl_or_b32 v118, v123, 16, v122
	v_perm_b32 v19, v154, v153, 0xc0c0004
	v_lshl_or_b32 v112, v65, 16, v20
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[10:17], v[118:121], v[57:60], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[90:93], v[82:85], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[114:117], v[82:85], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v125, v19, 16, v18
	v_perm_b32 v18, v164, v163, 0xc0c0004
	v_perm_b32 v19, v162, v157, 0xc0c0004
	v_perm_b32 v57, v166, v165, 0xc0c0004
	v_perm_b32 v82, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[58:65], v[94:97], v[78:81], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[86:89], v[78:81], v[66:73] neg_lo:[1,1,0]
	v_lshl_or_b32 v111, v158, 16, v146
	v_lshl_or_b32 v110, v110, 16, v161
	v_lshl_or_b32 v124, v19, 16, v18
	v_lshl_or_b32 v123, v57, 16, v20
	v_lshl_or_b32 v122, v82, 16, v1
	v_wmma_i32_16x16x16_iu8 v[58:65], v[98:101], v[74:77], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[66:73], v[118:121], v[74:77], v[66:73] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[110:113], v[106:109], v[2:9] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[10:17], v[122:125], v[106:109], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[110:113], v[102:105], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[66:73], v[122:125], v[102:105], v[66:73] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v58
	v_cvt_f32_i32_e32 v19, v59
	v_cvt_f32_i32_e32 v20, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v71, v71
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v73, v73
.LBB0_11:
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v2, v44, v2 :: v_dual_and_b32 v1, 0x80, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_bfe_u32 v57, v0, 4, 1
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s7, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v58, 3, v1
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 379 22                        ; generate_amdgcn.py:379:22
	v_or3_b32 v56, v57, v56, s26
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_mov_b32 s4, s12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v5, v52, v5 :: v_dual_and_b32 v86, 0x7f, v0
	.loc	1 378 22                        ; generate_amdgcn.py:378:22
	v_or3_b32 v55, v58, v55, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v3, v54, v3 :: v_dual_lshlrev_b32 v56, 1, v56
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v87, 7, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v4, v53, v4 :: v_dual_lshlrev_b32 v55, 1, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v57, 4, v56
	v_or_b32_e32 v79, 0x80, v56
	v_or_b32_e32 v58, 8, v56
	v_or_b32_e32 v80, 0x84, v56
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_or_b32_e32 v60, 64, v55
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_or_b32_e32 v59, 12, v56
	v_or_b32_e32 v81, 0x88, v56
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	s_clause 0x1
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v60, v60, s[4:7], 0 offen
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	v_or_b32_e32 v74, 16, v56
	v_or_b32_e32 v75, 20, v56
	v_or_b32_e32 v76, 24, v56
	v_or_b32_e32 v77, 28, v56
	v_or_b32_e32 v82, 0x8c, v56
	s_clause 0x7
	buffer_load_u16 v78, v56, s[4:7], 0 offen
	buffer_load_u16 v57, v57, s[4:7], 0 offen
	buffer_load_u16 v58, v58, s[4:7], 0 offen
	buffer_load_u16 v59, v59, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	v_or_b32_e32 v83, 0x90, v56
	v_or_b32_e32 v84, 0x94, v56
	v_or_b32_e32 v85, 0x98, v56
	v_or_b32_e32 v56, 0x9c, v56
	s_clause 0x7
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v56, v56, s[4:7], 0 offen
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v89, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v52, v52, v5, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v5, s25, v87
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v6, v51, v6 :: v_dual_add_f32 v7, v50, v7
	v_dual_add_f32 v10, v47, v10 :: v_dual_add_f32 v11, v46, v11
	v_dual_add_f32 v12, v45, v12 :: v_dual_add_f32 v13, v43, v13
	v_dual_add_f32 v14, v42, v14 :: v_dual_add_f32 v15, v41, v15
	v_dual_add_f32 v64, v32, v64 :: v_dual_add_f32 v65, v31, v65
	v_dual_add_f32 v66, v30, v66 :: v_dual_add_f32 v67, v29, v67
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v90, v0, 0, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v44, v2, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v2, 0x78, v89
	.loc	1 392 23 is_stmt 0              ; generate_amdgcn.py:392:23
	s_mul_i32 s3, s27, s25
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_dual_add_f32 v8, v49, v8 :: v_dual_add_f32 v9, v48, v9
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s3, s3, s26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v16, v40, v16 :: v_dual_add_f32 v17, v39, v17
	v_dual_add_f32 v62, v34, v62 :: v_dual_add_f32 v63, v33, v63
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v88, 14, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v50, v50, v7, s2
	v_cndmask_b32_e64 v46, v46, v11, s2
	v_cndmask_b32_e64 v12, v45, v12, s2
	v_cndmask_b32_e64 v14, v42, v14, s2
	v_cndmask_b32_e64 v42, v32, v64, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshl_or_b32 v2, v22, 3, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v30, v66, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v32, s3, v86, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v48, v9, s2
	v_cndmask_b32_e64 v41, v41, v15, s2
	v_cndmask_b32_e64 v16, v40, v16, s2
	v_cndmask_b32_e64 v40, v33, v63, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v18, v38, v18 :: v_dual_add_f32 v19, v37, v19
	v_dual_add_f32 v70, v26, v70 :: v_dual_add_f32 v71, v25, v71
	v_dual_add_f32 v20, v36, v20 :: v_dual_add_f32 v61, v35, v61
	v_dual_add_f32 v68, v28, v68 :: v_dual_add_f32 v69, v27, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v51, v6, s2
	v_cndmask_b32_e64 v8, v49, v8, s2
	v_cndmask_b32_e64 v18, v38, v18, s2
	v_cndmask_b32_e64 v38, v34, v62, s2
	v_cndmask_b32_e64 v49, v26, v70, s2
	v_cndmask_b32_e64 v51, v25, v71, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_add_f32 v72, v24, v72 :: v_dual_add_f32 v73, v23, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v47, v10, s2
	v_cndmask_b32_e64 v43, v43, v13, s2
	v_cndmask_b32_e64 v39, v39, v17, s2
	v_cndmask_b32_e64 v20, v36, v20, s2
	v_cndmask_b32_e64 v36, v35, v61, s2
	v_cndmask_b32_e64 v47, v28, v68, s2
	v_cndmask_b32_e64 v3, v54, v3, s2
	v_cndmask_b32_e64 v4, v53, v4, s2
	v_cndmask_b32_e64 v37, v37, v19, s2
	v_cndmask_b32_e64 v27, v27, v69, s2
	v_cndmask_b32_e64 v53, v24, v72, s2
	v_cndmask_b32_e64 v54, v23, v73, s2
	v_cndmask_b32_e64 v31, v31, v65, s2
	v_cndmask_b32_e64 v29, v29, v67, s2
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s2, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v15, 16, v75
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_lshlrev_b32_e32 v9, 11, v88
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v25, 16, v82
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v83
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v30, 16, v85
	v_lshlrev_b32_e32 v11, 16, v59
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v7, 0x840, v90
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v35, 16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v2, v2, v7
	v_or3_b32 v5, v2, v9, v1
	v_lshlrev_b64 v[1:2], 2, v[32:33]
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v9, 16, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v62, v5, 8, 0
	v_xad_u32 v63, v5, 16, 0
	v_add_co_u32 v33, vcc_lo, s0, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v34, null, s1, v2, vcc_lo
	.loc	1 378 14                        ; generate_amdgcn.py:378:14
	v_lshlrev_b32_e32 v2, 16, v60
	v_lshlrev_b32_e32 v1, 16, v55
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v64, v5, 24, 0
	v_xad_u32 v65, v5, 32, 0
	v_xad_u32 v66, v5, 40, 0
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v90, v2, v26
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v13, 16, v74
	v_lshlrev_b32_e32 v28, 16, v84
	v_lshlrev_b32_e32 v7, 16, v57
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v74, v1, v25
	v_mul_f32_e32 v57, v1, v9
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v17, 16, v76
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v92, v2, v30 :: v_dual_lshlrev_b32 v23, 16, v80
	v_dual_mul_f32 v82, v2, v11 :: v_dual_lshlrev_b32 v19, 16, v77
	v_mul_f32_e32 v77, v1, v30
	v_mul_f32_e32 v76, v1, v28
	v_dual_mul_f32 v80, v2, v7 :: v_dual_mul_f32 v69, v1, v17
	v_dual_mul_f32 v75, v1, v26 :: v_dual_lshlrev_b32 v24, 16, v81
	v_dual_mul_f32 v70, v1, v19 :: v_dual_add_nc_u32 v61, 0, v5
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xad_u32 v67, v5, 48, 0
	v_xad_u32 v68, v5, 56, 0
	.loc	1 379 14                        ; generate_amdgcn.py:379:14
	v_lshlrev_b32_e32 v5, 16, v78
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_dual_mul_f32 v73, v1, v24 :: v_dual_mul_f32 v86, v2, v19
	v_dual_mul_f32 v89, v2, v24 :: v_dual_mul_f32 v24, v43, v74
	v_mul_f32_e32 v78, v1, v35
	v_dual_mul_f32 v59, v1, v13 :: v_dual_lshlrev_b32 v22, 16, v79
	v_dual_mul_f32 v56, v1, v7 :: v_dual_mul_f32 v81, v2, v9
	v_mul_f32_e32 v58, v1, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v71, v1, v22
	v_dual_mul_f32 v87, v2, v22 :: v_dual_mul_f32 v30, v16, v77
	.loc	1 380 9 is_stmt 0               ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v22, v12, v73
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v84, v2, v15
	v_mul_f32_e32 v72, v1, v23
	v_mul_f32_e32 v55, v1, v5
	v_mul_f32_e32 v79, v2, v5
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_dual_mul_f32 v5, v4, v57 :: v_dual_mul_f32 v4, v37, v80
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v23, v2, v23
	v_mul_f32_e32 v25, v2, v25
	v_mul_f32_e32 v83, v2, v13
	v_mul_f32_e32 v93, v2, v35
	v_dual_mul_f32 v60, v1, v15 :: v_dual_mul_f32 v85, v2, v17
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v12, v40, v84
	.loc	1 380 16                        ; generate_amdgcn.py:380:16
	v_mul_f32_e32 v91, v2, v28
	.loc	1 380 9                         ; generate_amdgcn.py:380:9
	v_mul_f32_e32 v1, v44, v55
	v_dual_mul_f32 v17, v10, v71 :: v_dual_mul_f32 v28, v41, v76
	v_mul_f32_e32 v2, v18, v79
	v_dual_mul_f32 v18, v45, v87 :: v_dual_mul_f32 v3, v3, v56
	v_mul_f32_e32 v26, v14, v75
	v_mul_f32_e32 v9, v6, v59
	v_dual_mul_f32 v19, v46, v72 :: v_dual_mul_f32 v6, v20, v81
	v_mul_f32_e32 v20, v29, v23
	v_mul_f32_e32 v16, v31, v86
	v_mul_f32_e32 v23, v47, v89
	v_mul_f32_e32 v13, v8, v69
	v_mul_f32_e32 v8, v36, v82
	v_dual_mul_f32 v7, v52, v58 :: v_dual_mul_f32 v10, v38, v83
	v_mul_f32_e32 v25, v27, v25
	v_dual_mul_f32 v15, v48, v70 :: v_dual_mul_f32 v36, v54, v93
	v_mul_f32_e32 v27, v49, v90
	v_mul_f32_e32 v11, v50, v60
	v_dual_mul_f32 v35, v39, v78 :: v_dual_mul_f32 v14, v42, v85
	v_mul_f32_e32 v29, v51, v91
	v_mul_f32_e32 v31, v53, v92
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	ds_store_2addr_stride64_b64 v61, v[1:2], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v62, v[3:4], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v63, v[5:6], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v64, v[7:8], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v65, v[9:10], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v66, v[11:12], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v67, v[13:14], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v68, v[15:16], v[35:36] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v36, v[33:34], off
	v_and_b32_e32 v1, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_bfe_i32 v0, v0, 7, 1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v2, 0x700, v21
	v_lshlrev_b32_e32 v3, 2, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v1, 6, v1
	v_and_b32_e32 v0, 0x840, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v0, v1
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
	s_or_b32 s2, vcc_lo, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s2
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v33, s25, 1, v32
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
	v_lshl_add_u32 v33, s25, 2, v32
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
	v_mad_u64_u32 v[33:34], null, s25, 6, v[32:33]
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
	v_lshl_add_u32 v33, s25, 3, v32
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
	v_mad_u64_u32 v[33:34], null, s25, 10, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 12, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 14, v[32:33]
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
	v_lshl_add_u32 v33, s25, 4, v32
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
	v_mad_u64_u32 v[33:34], null, s25, 18, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 20, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 22, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 24, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 26, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 28, v[32:33]
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
	v_mad_u64_u32 v[33:34], null, s25, 30, v[32:33]
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
	v_add_nc_u32_e32 v33, s24, v32
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
	v_mad_u64_u32 v[28:29], null, s25, 34, v[32:33]
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
	v_mad_u64_u32 v[24:25], null, s25, 36, v[32:33]
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
	v_mad_u64_u32 v[20:21], null, s25, 38, v[32:33]
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
	v_mad_u64_u32 v[16:17], null, s25, 40, v[32:33]
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
	v_mad_u64_u32 v[12:13], null, s25, 42, v[32:33]
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
	v_mad_u64_u32 v[8:9], null, s25, 44, v[32:33]
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
	v_mad_u64_u32 v[4:5], null, s25, 46, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 48, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 50, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 52, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 54, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 56, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 58, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 60, v[32:33]
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
	v_mad_u64_u32 v[0:1], null, s25, 62, v[32:33]
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
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
		.amdhsa_next_free_sgpr 34
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 227
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14504
; TotalNumSgprs: 36
; NumVgprs: 227
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 36
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_pc_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     227
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
