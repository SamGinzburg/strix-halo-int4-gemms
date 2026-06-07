	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 374 0                         ; ragged.py:374:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x4c
	s_load_b32 s3, s[0:1], 0x54
.Ltmp0:
	.loc	1 402 25 prologue_end           ; ragged.py:402:25
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v89, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:400:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:400:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 402 25 is_stmt 1              ; ragged.py:402:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s13, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 404 33                        ; ragged.py:404:33
	s_sub_i32 s3, s3, s13
	.loc	1 405 24                        ; ragged.py:405:24
	s_mul_i32 s4, s13, s4
	.loc	1 404 22                        ; ragged.py:404:22
	s_min_i32 s3, s3, 1
	.loc	1 405 24                        ; ragged.py:405:24
	s_sub_i32 s2, s2, s4
	.loc	1 407 17                        ; ragged.py:407:17
	s_abs_i32 s12, s3
	s_cvt_f32_u32 s5, s12
	s_sub_i32 s6, 0, s12
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s25, s4, 31
	s_mul_i32 s5, s14, s12
	s_add_i32 s18, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s19, s15, s12
	s_cmp_ge_u32 s15, s12
	s_cselect_b32 s14, s18, s14
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s14, 1
	s_cmp_ge_u32 s15, s12
	s_cselect_b32 s12, s18, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s26, s12, s25
	s_sub_i32 s12, s26, s25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 34                        ; ragged.py:406:34
	s_mul_i32 s3, s12, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 406 20 is_stmt 0              ; ragged.py:406:20
	s_add_i32 s2, s2, s13
	.loc	1 409 20 is_stmt 1              ; ragged.py:409:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[14:15], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s14
	s_addc_u32 s3, s5, s15
	.loc	1 410 23                        ; ragged.py:410:23
	s_add_u32 s4, s6, s14
	s_addc_u32 s5, s7, s15
	.loc	1 409 20                        ; ragged.py:409:20
	s_load_b64 s[2:3], s[2:3], 0x0
	.loc	1 410 23                        ; ragged.py:410:23
	s_load_b64 s[18:19], s[4:5], 0x0
	.loc	1 411 24                        ; ragged.py:411:24
	s_add_u32 s6, s8, s14
	s_addc_u32 s7, s9, s15
	.loc	1 412 22                        ; ragged.py:412:22
	s_add_u32 s4, s10, s14
	s_addc_u32 s5, s11, s15
	.loc	1 424 19                        ; ragged.py:424:19
	s_cmp_gt_i32 s17, 0
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s3, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, s2 :: v_dual_lshlrev_b32 v3, 1, v0
	v_mov_b32_e32 v1, s18
	s_branch .LBB0_3
.LBB0_2:
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[20:21], s[6:7], 0x0
	s_load_b64 s[22:23], s[4:5], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v88, 15, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v87, 0xf0, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_lshl_b32 s24, s12, 8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 413 32 is_stmt 1              ; ragged.py:413:32
	v_lshrrev_b32_e32 v6, 2, v0
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 419 18                        ; ragged.py:419:18
	v_lshlrev_b32_e32 v8, 3, v0
	v_lshrrev_b32_e32 v9, 1, v0
	.loc	1 424 19                        ; ragged.py:424:19
	s_lshl_b32 s3, s26, 8
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v1, s0, s18, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s19, 0, s0
	.loc	1 424 19                        ; ragged.py:424:19
	s_lshl_b32 s4, s25, 8
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 415 21                        ; ragged.py:415:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e64 s0, s[20:21], v[1:2]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s1, s[22:23], v[1:2]
	.loc	1 413 18 is_stmt 1              ; ragged.py:413:18
	v_mov_b32_e32 v1, 0
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshlrev_b32_e32 v7, 4, v88
	.loc	1 419 18                        ; ragged.py:419:18
	v_lshrrev_b32_e32 v2, 4, v87
	v_and_b32_e32 v3, 24, v8
	v_add_nc_u32_e32 v6, s18, v6
	v_lshlrev_b32_e32 v13, 4, v0
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v4, s24, v7
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v4
	.loc	1 424 19                        ; ragged.py:424:19
	v_mad_u64_u32 v[4:5], null, s17, s2, v[2:3]
	v_and_b32_e32 v5, 24, v9
	v_and_b32_e32 v2, 24, v89
	v_dual_mov_b32 v20, v1 :: v_dual_and_b32 v9, 0x70, v9
	v_mov_b32_e32 v16, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v5, v8, v5
	v_add_nc_u32_e32 v10, 16, v4
	v_mul_lo_u32 v4, s16, v4
	v_lshl_or_b32 v2, v88, 5, v2
	v_mov_b32_e32 v14, v1
	v_add_nc_u32_e32 v92, 0, v5
	v_mov_b32_e32 v5, v1
	v_mul_lo_u32 v10, s16, v10
	v_xor_b32_e32 v8, 8, v2
	v_xor_b32_e32 v11, 16, v2
	v_xor_b32_e32 v12, 24, v2
	v_add_nc_u32_e32 v97, 0, v2
	v_mov_b32_e32 v2, v1
	v_add3_u32 v4, v4, s3, v7
	v_add_nc_u32_e32 v93, 0, v8
	v_mov_b32_e32 v8, v1
	v_add3_u32 v90, 0, v88, v9
	v_add3_u32 v9, v10, s3, v7
	v_mov_b32_e32 v7, v1
	v_mad_u64_u32 v[85:86], null, v6, s17, v[3:4]
	v_subrev_nc_u32_e32 v91, s4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v86, s4, v9
	v_add_nc_u32_e32 v94, 0, v11
	v_mov_b32_e32 v11, v1
	v_add_nc_u32_e32 v95, 0, v12
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_add_nc_u32_e32 v96, 0, v13
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s0, s0, s1
	.loc	1 424 13                        ; ragged.py:424:13
	s_mov_b32 s1, 0
	.loc	1 424 19 is_stmt 0              ; ragged.py:424:19
	s_lshl_b32 s3, s16, 5
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 434 30 is_stmt 1              ; ragged.py:434:30
	v_add_nc_u32_e32 v65, s1, v85
	.loc	1 435 30                        ; ragged.py:435:30
	v_dual_cndmask_b32 v66, 0x80000000, v91 :: v_dual_cndmask_b32 v67, 0x80000000, v86
	.loc	1 424 19                        ; ragged.py:424:19
	v_add_nc_u32_e32 v86, s3, v86
	v_add_nc_u32_e32 v91, s3, v91
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 434 30                        ; ragged.py:434:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 446 17                        ; ragged.py:446:17
	s_add_i32 s1, s1, 32
	.loc	1 435 30                        ; ragged.py:435:30
	s_clause 0x1
	buffer_load_b128 v[98:101], v66, s[12:15], 0 offen
	buffer_load_b128 v[102:105], v67, s[12:15], 0 offen
	.loc	1 434 30                        ; ragged.py:434:30
	buffer_load_b64 v[65:66], v65, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 424 19                        ; ragged.py:424:19
	s_cmp_lt_i32 s1, s17
	.loc	1 434 30                        ; ragged.py:434:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v92, v[65:66]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v97 offset1:1
	ds_load_2addr_stride64_b64 v[110:113], v97 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[114:117], v93 offset1:1
	ds_load_2addr_stride64_b64 v[81:84], v93 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v94 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v94 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v95 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v95 offset0:2 offset1:3
	.loc	1 435 30                        ; ragged.py:435:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v96, v[98:101]
	ds_store_b128 v96, v[102:105] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 436 27                        ; ragged.py:436:27
	ds_load_u8 v98, v90 offset:1280
	ds_load_u8 v99, v90 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v90 offset:1792
	ds_load_u8 v100, v90 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v90 offset:256
	ds_load_u8 v101, v90
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v90 offset:768
	ds_load_u8 v102, v90 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v101, 16, v100
	ds_load_u8 v100, v90 offset:1408
	ds_load_u8 v101, v90 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[110:111], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[112:113], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v98, v90 offset:3840
	ds_load_u8 v99, v90 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v90 offset:1920
	ds_load_u8 v102, v90 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v90 offset:384
	ds_load_u8 v103, v90 offset:128
	v_lshl_or_b32 v101, v101, 16, v100
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v90 offset:896
	ds_load_u8 v104, v90 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v103, 16, v102
	ds_load_u8 v102, v90 offset:3328
	ds_load_u8 v103, v90 offset:3072
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[110:111], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[112:113], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v100, v90 offset:2304
	ds_load_u8 v101, v90 offset:2048
	ds_load_u8 v104, v90 offset:2816
	ds_load_u8 v105, v90 offset:2560
	ds_load_u8 v106, v90 offset:3968
	ds_load_u8 v107, v90 offset:3712
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v90 offset:3456
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v102
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v101, v90 offset:2432
	ds_load_u8 v105, v90 offset:2176
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v90 offset:5120
	v_lshl_or_b32 v98, v104, 16, v100
	ds_load_u8 v100, v90 offset:2944
	ds_load_u8 v102, v90 offset:2688
	ds_load_u8 v104, v90 offset:5376
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[114:115], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[116:117], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[81:82], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[98:99], v[83:84], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v105, v105, v101, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v100, v102, v100, 0xc0c0004
	ds_load_u8 v102, v90 offset:5632
	ds_load_u8 v112, v90 offset:4480
	ds_load_u8 v108, v90 offset:3200
	v_lshl_or_b32 v100, v100, 16, v105
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v108, v103, 0xc0c0004
	ds_load_u8 v108, v90 offset:5888
	v_lshl_or_b32 v101, v106, 16, v103
	ds_load_u8 v103, v90 offset:4352
	ds_load_u8 v105, v90 offset:4096
	ds_load_u8 v106, v90 offset:4864
	ds_load_u8 v109, v90 offset:4608
	ds_load_u8 v110, v90 offset:6016
	ds_load_u8 v111, v90 offset:5760
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[114:115], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[116:117], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[81:82], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[83:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v102, v108, 0xc0c0004
	ds_load_u8 v108, v90 offset:5248
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v106, v109, v106, 0xc0c0004
	v_perm_b32 v105, v105, v103, 0xc0c0004
	ds_load_u8 v109, v90 offset:4224
	v_perm_b32 v104, v107, v104, 0xc0c0004
	ds_load_u8 v107, v90 offset:5504
	v_lshl_or_b32 v103, v102, 16, v104
	v_lshl_or_b32 v102, v106, 16, v105
	ds_load_u8 v104, v90 offset:4992
	ds_load_u8 v105, v90 offset:4736
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[75:76], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v109, v109, v112, 0xc0c0004
	ds_load_u8 v112, v90 offset:7680
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v104, 16, v109
	ds_load_u8 v109, v90 offset:6912
	v_perm_b32 v106, v108, v107, 0xc0c0004
	ds_load_u8 v107, v90 offset:7424
	v_perm_b32 v108, v111, v110, 0xc0c0004
	ds_load_u8 v111, v90 offset:7936
	ds_load_u8 v110, v90 offset:7168
	v_lshl_or_b32 v105, v108, 16, v106
	ds_load_u8 v106, v90 offset:6400
	ds_load_u8 v108, v90 offset:6144
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[104:105], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[104:105], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v110, v107, 0xc0c0004
	v_perm_b32 v110, v112, v111, 0xc0c0004
	ds_load_u8 v111, v90 offset:6656
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v106, v108, v106, 0xc0c0004
	ds_load_u8 v108, v90 offset:7552
	v_lshl_or_b32 v107, v110, 16, v107
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v109, v111, v109, 0xc0c0004
	ds_load_u8 v111, v90 offset:7296
	v_lshl_or_b32 v106, v109, 16, v106
	ds_load_u8 v109, v90 offset:8064
	ds_load_u8 v110, v90 offset:7808
	v_wmma_i32_16x16x16_iu4 v[1:8], v[106:107], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[106:107], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[106:107], v[67:68], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v111, v108, 0xc0c0004
	ds_load_u8 v111, v90 offset:6528
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v90 offset:6272
	v_lshl_or_b32 v109, v109, 16, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v111, 0xc0c0004
	ds_load_u8 v111, v90 offset:7040
	ds_load_u8 v112, v90 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v108, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[108:109], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 424 19                        ; ragged.py:424:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 447 19                        ; ragged.py:447:19
	v_cvt_f32_i32_e32 v102, v1
	v_cvt_f32_i32_e32 v101, v2
	v_cvt_f32_i32_e32 v100, v3
	v_cvt_f32_i32_e32 v99, v4
	v_cvt_f32_i32_e32 v98, v5
	v_cvt_f32_i32_e32 v97, v6
	v_cvt_f32_i32_e32 v96, v7
	v_cvt_f32_i32_e32 v95, v8
	v_cvt_f32_i32_e32 v94, v9
	v_cvt_f32_i32_e32 v93, v10
	v_cvt_f32_i32_e32 v92, v11
	v_cvt_f32_i32_e32 v91, v12
	v_cvt_f32_i32_e32 v90, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v85, v15
	v_cvt_f32_i32_e32 v84, v16
	v_cvt_f32_i32_e32 v83, v17
	v_cvt_f32_i32_e32 v82, v18
	v_cvt_f32_i32_e32 v81, v19
	v_cvt_f32_i32_e32 v80, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v78, v22
	v_cvt_f32_i32_e32 v77, v23
	v_cvt_f32_i32_e32 v76, v24
	v_cvt_f32_i32_e32 v75, v25
	v_cvt_f32_i32_e32 v74, v26
	v_cvt_f32_i32_e32 v73, v27
	v_cvt_f32_i32_e32 v72, v28
	v_cvt_f32_i32_e32 v71, v29
	v_cvt_f32_i32_e32 v70, v30
	v_cvt_f32_i32_e32 v69, v31
	v_cvt_f32_i32_e32 v68, v32
	v_cvt_f32_i32_e32 v67, v33
	v_cvt_f32_i32_e32 v66, v34
	v_cvt_f32_i32_e32 v65, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v32, v39
	v_cvt_f32_i32_e32 v31, v40
	v_cvt_f32_i32_e32 v30, v41
	v_cvt_f32_i32_e32 v29, v42
	v_cvt_f32_i32_e32 v28, v43
	v_cvt_f32_i32_e32 v27, v44
	v_cvt_f32_i32_e32 v26, v45
	v_cvt_f32_i32_e32 v25, v46
	v_cvt_f32_i32_e32 v24, v47
	v_cvt_f32_i32_e32 v23, v48
	v_cvt_f32_i32_e32 v22, v49
	v_cvt_f32_i32_e32 v21, v50
	v_cvt_f32_i32_e32 v20, v51
	v_cvt_f32_i32_e32 v19, v52
	v_cvt_f32_i32_e32 v18, v53
	v_cvt_f32_i32_e32 v17, v54
	v_cvt_f32_i32_e32 v16, v55
	v_cvt_f32_i32_e32 v15, v56
	v_cvt_f32_i32_e32 v14, v57
	v_cvt_f32_i32_e32 v13, v58
	v_cvt_f32_i32_e32 v12, v59
	v_cvt_f32_i32_e32 v11, v60
	v_cvt_f32_i32_e32 v10, v61
	v_cvt_f32_i32_e32 v9, v62
	v_cvt_f32_i32_e32 v8, v63
	v_cvt_f32_i32_e32 v7, v64
	v_dual_mov_b32 v2, s2 :: v_dual_mov_b32 v1, s18
	v_mov_b32_e32 v3, v89
.LBB0_7:                                ; %._crit_edge
	.loc	1 413 32                        ; ragged.py:413:32
	v_or_b32_e32 v4, 48, v88
	v_or_b32_e32 v6, 32, v88
	v_or_b32_e32 v36, 16, v88
	.loc	1 449 36                        ; ragged.py:449:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 413 18                        ; ragged.py:413:18
	v_add_co_u32 v4, s0, s18, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s19, 0, s0
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 449 36                        ; ragged.py:449:36
	s_mov_b32 s52, s8
	.loc	1 453 21                        ; ragged.py:453:21
	v_mul_lo_u32 v2, s16, v2
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[4:5]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s3, s[22:23], v[4:5]
	.loc	1 413 18 is_stmt 1              ; ragged.py:413:18
	v_add_co_u32 v5, s0, s18, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s19, 0, s0
	v_add_co_u32 v36, s0, s18, v36
	v_add_co_ci_u32_e64 v37, null, s19, 0, s0
	v_add_co_u32 v38, s0, s18, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v39, null, s19, 0, s0
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s0, s[20:21], v[5:6]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s4, s[22:23], v[5:6]
	.loc	1 449 36 is_stmt 1              ; ragged.py:449:36
	v_lshlrev_b32_e32 v6, 1, v38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s2, s[20:21], v[38:39]
	.loc	1 415 48 is_stmt 0              ; ragged.py:415:48
	v_cmp_gt_i64_e64 s6, s[22:23], v[38:39]
	.loc	1 415 21                        ; ragged.py:415:21
	v_cmp_le_i64_e64 s1, s[20:21], v[36:37]
	.loc	1 415 48                        ; ragged.py:415:48
	v_cmp_gt_i64_e64 s5, s[22:23], v[36:37]
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s0, s0, s4
	.loc	1 457 17 is_stmt 1              ; ragged.py:457:17
	v_lshl_add_u32 v41, v87, 2, 0
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s2, s2, s6
	.loc	1 457 17                        ; ragged.py:457:17
	v_lshl_add_u32 v42, v87, 1, 0
	.loc	1 449 36                        ; ragged.py:449:36
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 415 20                        ; ragged.py:415:20
	s_and_b32 s1, s1, s5
	.loc	1 509 9                         ; ragged.py:509:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 449 36                        ; ragged.py:449:36
	buffer_load_u16 v37, v6, s[52:55], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	v_lshlrev_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 450 17                        ; ragged.py:450:17
	v_dual_mul_f32 v47, v98, v37 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 449 36                        ; ragged.py:449:36
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_lshlrev_b32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x2
	buffer_load_u16 v36, v36, s[52:55], 0 offen
	buffer_load_u16 v38, v5, s[52:55], 0 offen
	buffer_load_u16 v39, v4, s[52:55], 0 offen
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v4, s24, v0
	.loc	1 452 36                        ; ragged.py:452:36
	s_and_b32 s53, s11, 0xffff
	s_mov_b32 s52, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v2, v4, v2, 1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s3, s16, v4
	.loc	1 452 36                        ; ragged.py:452:36
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	buffer_load_u16 v40, v2, s[52:55], 0 offen
	.loc	1 414 36                        ; ragged.py:414:36
	v_lshrrev_b32_e32 v2, 1, v87
	.loc	1 457 17                        ; ragged.py:457:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 449 36                        ; ragged.py:449:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v36, 16, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 450 17                        ; ragged.py:450:17
	v_mul_f32_e32 v64, v77, v36
	v_dual_mul_f32 v49, v96, v37 :: v_dual_lshlrev_b32 v4, 5, v0
	.loc	1 457 17                        ; ragged.py:457:17
	v_and_b32_e32 v3, 28, v3
	.loc	1 450 17                        ; ragged.py:450:17
	v_mul_f32_e32 v53, v92, v37
	v_dual_mul_f32 v58, v83, v36 :: v_dual_add_nc_u32 v5, v88, v1
	v_dual_mul_f32 v51, v94, v37 :: v_dual_and_b32 v4, 32, v4
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v55, v90, v37 :: v_dual_lshlrev_b32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v60, v81, v36 :: v_dual_add_nc_u32 v43, 16, v5
	v_dual_mul_f32 v59, v82, v36 :: v_dual_add_nc_u32 v44, 32, v5
	v_dual_mul_f32 v62, v79, v36 :: v_dual_add_nc_u32 v45, 48, v5
	.loc	1 457 17                        ; ragged.py:457:17
	v_add3_u32 v41, v41, v4, v3
	.loc	1 450 17                        ; ragged.py:450:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v46, v99, v37 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v57, v85, v37 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 510 13                        ; ragged.py:510:13
	v_mul_lo_u32 v6, v5, s16
	v_mul_lo_u32 v5, v43, s16
	v_mul_lo_u32 v4, v44, s16
	v_mul_lo_u32 v3, v45, s16
	.loc	1 450 17                        ; ragged.py:450:17
	v_mul_f32_e32 v43, v102, v37
	v_mul_f32_e32 v44, v101, v37
	v_mul_f32_e32 v45, v100, v37
	v_dual_mul_f32 v48, v97, v37 :: v_dual_mul_f32 v61, v80, v36
	v_dual_mul_f32 v50, v95, v37 :: v_dual_mul_f32 v63, v78, v36
	v_dual_mul_f32 v52, v93, v37 :: v_dual_mul_f32 v75, v75, v36
	v_dual_mul_f32 v54, v91, v37 :: v_dual_mul_f32 v73, v73, v36
	v_dual_mul_f32 v56, v86, v37 :: v_dual_mul_f32 v71, v71, v36
	v_dual_mul_f32 v37, v84, v37 :: v_dual_mul_f32 v74, v74, v36
	v_dual_mul_f32 v76, v76, v36 :: v_dual_mul_f32 v67, v67, v38
	v_dual_mul_f32 v72, v72, v36 :: v_dual_mul_f32 v65, v65, v38
	v_dual_mul_f32 v70, v70, v36 :: v_dual_mul_f32 v35, v35, v38
	v_dual_mul_f32 v69, v69, v36 :: v_dual_mul_f32 v66, v66, v38
	v_dual_mul_f32 v36, v68, v36 :: v_dual_mul_f32 v77, v33, v38
	v_dual_mul_f32 v68, v34, v38 :: v_dual_mul_f32 v21, v21, v39
	v_mul_f32_e32 v78, v32, v38
	v_dual_mul_f32 v79, v31, v38 :: v_dual_mul_f32 v22, v22, v39
	v_dual_mul_f32 v80, v30, v38 :: v_dual_mul_f32 v15, v15, v39
	v_mul_f32_e32 v81, v29, v38
	v_dual_mul_f32 v82, v28, v38 :: v_dual_mul_f32 v87, v18, v39
	v_dual_mul_f32 v83, v27, v38 :: v_dual_mul_f32 v88, v17, v39
	v_dual_mul_f32 v84, v26, v38 :: v_dual_mul_f32 v13, v13, v39
	v_dual_mul_f32 v85, v25, v38 :: v_dual_mul_f32 v16, v16, v39
	v_dual_mul_f32 v86, v24, v38 :: v_dual_mul_f32 v11, v11, v39
	v_dual_mul_f32 v38, v23, v38 :: v_dual_mul_f32 v9, v9, v39
	.loc	1 457 17                        ; ragged.py:457:17
	ds_store_b32 v41, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v42
	ds_load_b128 v[27:30], v42 offset:16
	.loc	1 450 17                        ; ragged.py:450:17
	v_mul_f32_e32 v40, v20, v39
	v_mul_f32_e32 v41, v19, v39
	.loc	1 457 17                        ; ragged.py:457:17
	ds_load_b128 v[17:20], v42 offset:512
	ds_load_b128 v[31:34], v42 offset:528
	.loc	1 450 17                        ; ragged.py:450:17
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v12, v12, v39
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v7, v7, v39
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v1, s24, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 414 18                        ; ragged.py:414:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s3, s16, v1
	.loc	1 457 17                        ; ragged.py:457:17
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v39, v43, v23 :: v_dual_mul_f32 v42, v44, v24
	v_dual_mul_f32 v43, v45, v25 :: v_dual_mul_f32 v44, v46, v26
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, v47, v27 :: v_dual_mul_f32 v46, v48, v28
	v_dual_mul_f32 v47, v49, v29 :: v_dual_mul_f32 v48, v50, v30
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v49, v51, v17 :: v_dual_mul_f32 v50, v52, v18
	v_dual_mul_f32 v51, v53, v19 :: v_dual_mul_f32 v52, v54, v20
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v37, v37, v34
	v_dual_mul_f32 v53, v55, v31 :: v_dual_mul_f32 v54, v56, v32
	v_dual_mul_f32 v55, v57, v33 :: v_dual_mul_f32 v56, v58, v23
	v_mul_f32_e32 v57, v59, v24
	v_dual_mul_f32 v59, v61, v26 :: v_dual_mul_f32 v58, v60, v25
	v_dual_mul_f32 v61, v63, v28 :: v_dual_mul_f32 v60, v62, v27
	v_mul_f32_e32 v63, v76, v30
	v_dual_mul_f32 v62, v64, v29 :: v_dual_mul_f32 v73, v73, v19
	v_dual_mul_f32 v64, v75, v17 :: v_dual_mul_f32 v75, v77, v28
	v_dual_mul_f32 v70, v70, v32 :: v_dual_mul_f32 v67, v67, v23
	v_dual_mul_f32 v36, v36, v34 :: v_dual_mul_f32 v65, v65, v25
	v_dual_mul_f32 v68, v68, v27 :: v_dual_mul_f32 v77, v79, v30
	v_dual_mul_f32 v76, v78, v29 :: v_dual_mul_f32 v79, v81, v18
	v_dual_mul_f32 v78, v80, v17 :: v_dual_mul_f32 v81, v83, v20
	v_dual_mul_f32 v80, v82, v19 :: v_dual_mul_f32 v83, v85, v32
	v_dual_mul_f32 v82, v84, v31 :: v_dual_mul_f32 v21, v21, v24
	v_mul_f32_e32 v84, v86, v33
	v_mul_f32_e32 v38, v38, v34
	v_dual_mul_f32 v22, v22, v23 :: v_dual_mul_f32 v15, v15, v30
	v_mul_f32_e32 v23, v40, v25
	v_dual_mul_f32 v25, v87, v27 :: v_dual_mul_f32 v16, v16, v29
	v_mul_f32_e32 v9, v9, v32
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v27, v45, 16, 1
	v_bfe_u32 v32, v50, 16, 1
	v_bfe_u32 v90, v59, 16, 1
	.loc	1 457 17                        ; ragged.py:457:17
	v_dual_mul_f32 v72, v72, v20 :: v_dual_mul_f32 v69, v69, v33
	v_dual_mul_f32 v66, v66, v24 :: v_dual_mul_f32 v35, v35, v26
	v_dual_mul_f32 v24, v41, v26 :: v_dual_mul_f32 v11, v11, v20
	v_dual_mul_f32 v26, v88, v28 :: v_dual_mul_f32 v13, v13, v18
	v_dual_mul_f32 v14, v14, v17 :: v_dual_mul_f32 v7, v7, v34
	v_mul_f32_e32 v8, v8, v33
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v17, v39, 16, 1
	v_bfe_u32 v28, v46, 16, 1
	v_bfe_u32 v29, v47, 16, 1
	v_bfe_u32 v33, v51, 16, 1
	v_bfe_u32 v91, v60, 16, 1
	v_bfe_u32 v92, v61, 16, 1
	.loc	1 457 17                        ; ragged.py:457:17
	v_mul_f32_e32 v12, v12, v19
	.loc	1 509 9                         ; ragged.py:509:9
	v_bfe_u32 v19, v43, 16, 1
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s14, v50, v50
	v_cmp_o_f32_e64 s24, v59, v59
	v_add3_u32 v27, v45, v27, 0x7fff
	v_add3_u32 v32, v50, v32, 0x7fff
	v_add3_u32 v45, v59, v90, 0x7fff
	.loc	1 457 17                        ; ragged.py:457:17
	v_dual_mul_f32 v74, v74, v18 :: v_dual_mul_f32 v71, v71, v31
	v_mul_f32_e32 v10, v10, v31
	.loc	1 509 9                         ; ragged.py:509:9
	v_cmp_o_f32_e64 s5, v39, v39
	v_bfe_u32 v18, v42, 16, 1
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_bfe_u32 v30, v48, 16, 1
	v_bfe_u32 v31, v49, 16, 1
	v_cmp_o_f32_e64 s15, v51, v51
	v_bfe_u32 v34, v52, 16, 1
	v_cmp_o_f32_e64 s25, v60, v60
	v_cmp_o_f32_e64 s26, v61, v61
	v_bfe_u32 v93, v62, 16, 1
	v_bfe_u32 v94, v63, 16, 1
	v_bfe_u32 v113, v80, 16, 1
	v_add3_u32 v17, v39, v17, 0x7fff
	v_add3_u32 v28, v46, v28, 0x7fff
	v_add3_u32 v29, v47, v29, 0x7fff
	v_add3_u32 v33, v51, v33, 0x7fff
	v_add3_u32 v46, v60, v91, 0x7fff
	v_add3_u32 v47, v61, v92, 0x7fff
	v_add3_u32 v19, v43, v19, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v27.h, s9
	v_cndmask_b16 v27.h, 0x7fff, v32.h, s14
	v_cndmask_b16 v32.h, 0x7fff, v45.h, s24
	v_bfe_u32 v45, v81, 16, 1
	.loc	1 416 20                        ; ragged.py:416:20
	v_cmp_gt_i32_e64 s4, s16, v2
	.loc	1 509 9                         ; ragged.py:509:9
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s12, v48, v48
	v_cmp_o_f32_e64 s13, v49, v49
	v_cmp_o_f32_e64 s16, v52, v52
	v_cmp_o_f32_e64 s27, v62, v62
	v_cmp_o_f32_e64 s28, v63, v63
	v_add3_u32 v18, v42, v18, 0x7fff
	v_add3_u32 v30, v48, v30, 0x7fff
	v_add3_u32 v31, v49, v31, 0x7fff
	v_add3_u32 v34, v52, v34, 0x7fff
	v_add3_u32 v48, v62, v93, 0x7fff
	v_add3_u32 v49, v63, v94, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s5
	v_cndmask_b16 v28.l, 0x7fff, v33.h, s15
	v_cndmask_b16 v33.l, 0x7fff, v46.h, s25
	v_cndmask_b16 v33.h, 0x7fff, v47.h, s26
	v_bfe_u32 v46, v82, 16, 1
	v_add3_u32 v47, v80, v113, 0x7fff
	v_cmp_o_f32_e64 s5, v80, v80
	v_add3_u32 v45, v81, v45, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v28.h, s10
	v_cndmask_b16 v28.h, 0x7fff, v34.h, s16
	v_cndmask_b16 v34.l, 0x7fff, v48.h, s27
	v_cndmask_b16 v34.h, 0x7fff, v49.h, s28
	v_cmp_o_f32_e64 s6, v81, v81
	v_add3_u32 v46, v82, v46, 0x7fff
	v_cmp_o_f32_e64 s7, v82, v82
	v_cndmask_b16 v45.l, 0x7fff, v47.h, s5
	v_bfe_u32 v47, v83, 16, 1
	v_bfe_u32 v48, v84, 16, 1
	v_bfe_u32 v49, v38, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s6
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s7
	v_add3_u32 v47, v83, v47, 0x7fff
	v_cmp_o_f32_e64 s5, v83, v83
	v_add3_u32 v48, v84, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_add3_u32 v49, v38, v49, 0x7fff
	v_cmp_o_f32_e64 s7, v38, v38
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s5
	v_bfe_u32 v38, v22, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s6
	v_bfe_u32 v48, v21, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s7
	v_bfe_u32 v49, v23, 16, 1
	v_add3_u32 v38, v22, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v21, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v21, v23, v49, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v24, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v38.h, s5
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v48, v26, 16, 1
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v23, v24, v23, 0x7fff
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s6
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s7
	v_add3_u32 v24, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v25, v26, v48, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s5
	v_bfe_u32 v23, v16, 16, 1
	v_bfe_u32 v26, v15, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v24.h, 0x7fff, v25.h, s7
	v_bfe_u32 v25, v14, 16, 1
	v_add3_u32 v23, v16, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v16, v16
	v_add3_u32 v16, v15, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v15, v14, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v14, v14
	v_cndmask_b16 v14.l, 0x7fff, v23.h, s5
	v_bfe_u32 v23, v13, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s6
	v_bfe_u32 v16, v12, 16, 1
	v_bfe_u32 v25, v11, 16, 1
	v_cmp_o_f32_e64 s5, v13, v13
	v_add3_u32 v23, v13, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_add3_u32 v13, v12, v16, 0x7fff
	v_add3_u32 v12, v11, v25, 0x7fff
	v_bfe_u32 v20, v44, 16, 1
	v_bfe_u32 v40, v53, 16, 1
	v_bfe_u32 v41, v54, 16, 1
	v_bfe_u32 v85, v55, 16, 1
	v_bfe_u32 v86, v37, 16, 1
	v_bfe_u32 v87, v56, 16, 1
	v_bfe_u32 v95, v64, 16, 1
	v_bfe_u32 v96, v74, 16, 1
	v_bfe_u32 v97, v73, 16, 1
	v_bfe_u32 v98, v72, 16, 1
	v_bfe_u32 v99, v71, 16, 1
	v_bfe_u32 v100, v70, 16, 1
	v_bfe_u32 v101, v69, 16, 1
	v_bfe_u32 v102, v36, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s7
	v_cmp_o_f32_e64 s7, v11, v11
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s6
	v_bfe_u32 v13, v9, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s17, v53, v53
	v_cmp_o_f32_e64 s18, v54, v54
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v37, v37
	v_cmp_o_f32_e64 s21, v56, v56
	v_bfe_u32 v88, v57, 16, 1
	v_bfe_u32 v89, v58, 16, 1
	v_cmp_o_f32_e64 s29, v64, v64
	v_cmp_o_f32_e64 s30, v74, v74
	v_cmp_o_f32_e64 s31, v73, v73
	v_cmp_o_f32_e64 s33, v72, v72
	v_cmp_o_f32_e64 s34, v71, v71
	v_cmp_o_f32_e64 s35, v70, v70
	v_cmp_o_f32_e64 s36, v69, v69
	v_cmp_o_f32_e64 s37, v36, v36
	v_bfe_u32 v103, v67, 16, 1
	v_bfe_u32 v104, v66, 16, 1
	v_bfe_u32 v107, v68, 16, 1
	v_bfe_u32 v108, v75, 16, 1
	v_add3_u32 v20, v44, v20, 0x7fff
	v_add3_u32 v39, v53, v40, 0x7fff
	v_add3_u32 v40, v54, v41, 0x7fff
	v_add3_u32 v41, v55, v85, 0x7fff
	v_add3_u32 v37, v37, v86, 0x7fff
	v_add3_u32 v42, v56, v87, 0x7fff
	v_add3_u32 v50, v64, v95, 0x7fff
	v_add3_u32 v51, v74, v96, 0x7fff
	v_add3_u32 v52, v73, v97, 0x7fff
	v_add3_u32 v53, v72, v98, 0x7fff
	v_add3_u32 v54, v71, v99, 0x7fff
	v_add3_u32 v55, v70, v100, 0x7fff
	v_add3_u32 v56, v69, v101, 0x7fff
	v_add3_u32 v36, v36, v102, 0x7fff
	v_cndmask_b16 v15.h, 0x7fff, v23.h, s5
	v_add3_u32 v11, v10, v11, 0x7fff
	v_bfe_u32 v16, v8, 16, 1
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v9, v13, 0x7fff
	v_bfe_u32 v13, v7, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_cmp_o_f32_e64 s22, v57, v57
	v_cmp_o_f32_e64 s23, v58, v58
	v_cmp_o_f32_e64 s38, v67, v67
	v_cmp_o_f32_e64 s39, v66, v66
	v_cmp_o_f32_e64 s42, v68, v68
	v_cmp_o_f32_e64 s43, v75, v75
	v_add3_u32 v43, v57, v88, 0x7fff
	v_add3_u32 v44, v58, v89, 0x7fff
	v_add3_u32 v57, v67, v103, 0x7fff
	v_add3_u32 v58, v66, v104, 0x7fff
	v_add3_u32 v60, v68, v107, 0x7fff
	v_add3_u32 v61, v75, v108, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v29.h, s11
	v_cndmask_b16 v20.h, 0x7fff, v30.h, s12
	v_cndmask_b16 v27.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v29.l, 0x7fff, v39.h, s17
	v_cndmask_b16 v29.h, 0x7fff, v40.h, s18
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v37.h, s20
	v_cndmask_b16 v37.l, 0x7fff, v50.h, s29
	v_cndmask_b16 v37.h, 0x7fff, v51.h, s30
	v_cndmask_b16 v39.l, 0x7fff, v52.h, s31
	v_cndmask_b16 v39.h, 0x7fff, v53.h, s33
	v_cndmask_b16 v40.l, 0x7fff, v54.h, s34
	v_cndmask_b16 v40.h, 0x7fff, v55.h, s35
	v_cndmask_b16 v36.l, 0x7fff, v56.h, s36
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s37
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s7
	v_add3_u32 v9, v8, v16, 0x7fff
	v_cmp_o_f32_e64 s7, v8, v8
	v_add3_u32 v8, v7, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_cndmask_b16 v7.l, 0x7fff, v11.h, s5
	v_cmp_eq_u32_e64 s5, 0, v0
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s6
	v_cndmask_b16 v31.l, 0x7fff, v42.h, s21
	v_cndmask_b16 v31.h, 0x7fff, v43.h, s22
	v_cndmask_b16 v41.l, 0x7fff, v57.h, s38
	v_cndmask_b16 v41.h, 0x7fff, v58.h, s39
	v_cndmask_b16 v42.l, 0x7fff, v60.h, s42
	v_cndmask_b16 v42.h, 0x7fff, v61.h, s43
	v_cndmask_b16 v0.l, 0x7fff, v9.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v8.h, s8
	v_cndmask_b32_e64 v8, v19, v17, s5
	v_cndmask_b32_e64 v9, v17, v19, s5
	v_cndmask_b32_e64 v10, v20, v18, s5
	v_cndmask_b32_e64 v11, v18, v20, s5
	v_cndmask_b32_e64 v13, v29, v27, s5
	v_cndmask_b32_e64 v16, v27, v29, s5
	v_cndmask_b32_e64 v17, v30, v28, s5
	v_cndmask_b32_e64 v18, v28, v30, s5
	v_cndmask_b32_e64 v26, v40, v37, s5
	v_cndmask_b32_e64 v27, v37, v40, s5
	v_cndmask_b32_e64 v28, v36, v39, s5
	v_cndmask_b32_e64 v29, v39, v36, s5
	v_cndmask_b32_e64 v39, v14, v21, s5
	v_cndmask_b32_e64 v14, v21, v14, s5
	v_cndmask_b32_e64 v40, v7, v15, s5
	v_cndmask_b32_e64 v7, v15, v7, s5
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v21, 0x7632
	v_bfe_u32 v105, v65, 16, 1
	v_bfe_u32 v106, v35, 16, 1
	v_bfe_u32 v109, v76, 16, 1
	v_bfe_u32 v110, v77, 16, 1
	v_bfe_u32 v111, v78, 16, 1
	v_bfe_u32 v112, v79, 16, 1
	v_cndmask_b32_e64 v19, v33, v31, s5
	v_cndmask_b32_e64 v20, v31, v33, s5
	v_cndmask_b32_e64 v30, v42, v41, s5
	v_cndmask_b32_e64 v31, v41, v42, s5
	v_cndmask_b32_e64 v41, v0, v12, s5
	v_cndmask_b32_e64 v0, v12, v0, s5
	v_cndmask_b32_e64 v12, 0x1054, v15, s5
	v_cndmask_b32_e64 v15, 0x3276, v21, s5
	v_cmp_o_f32_e64 s40, v65, v65
	v_cmp_o_f32_e64 s41, v35, v35
	v_cmp_o_f32_e64 s44, v76, v76
	v_cmp_o_f32_e64 s45, v77, v77
	v_cmp_o_f32_e64 s46, v78, v78
	v_cmp_o_f32_e64 s47, v79, v79
	v_add3_u32 v59, v65, v105, 0x7fff
	v_add3_u32 v35, v35, v106, 0x7fff
	v_add3_u32 v62, v76, v109, 0x7fff
	v_add3_u32 v63, v77, v110, 0x7fff
	v_add3_u32 v64, v78, v111, 0x7fff
	v_add3_u32 v65, v79, v112, 0x7fff
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v15, v15, 8, v15
	v_cndmask_b16 v32.l, 0x7fff, v44.h, s23
	v_cndmask_b16 v35.l, 0x7fff, v59.h, s40
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s41
	v_cndmask_b16 v43.l, 0x7fff, v62.h, s44
	v_cndmask_b16 v43.h, 0x7fff, v63.h, s45
	v_cndmask_b16 v44.l, 0x7fff, v64.h, s46
	v_cndmask_b16 v44.h, 0x7fff, v65.h, s47
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v15, 0x760076, v15
	v_cndmask_b32_e64 v23, v34, v32, s5
	v_cndmask_b32_e64 v25, v32, v34, s5
	v_cndmask_b32_e64 v32, v43, v35, s5
	v_cndmask_b32_e64 v33, v35, v43, s5
	v_cndmask_b32_e64 v35, v44, v46, s5
	v_cndmask_b32_e64 v37, v45, v47, s5
	v_cndmask_b32_e64 v38, v24, v22, s5
	v_cndmask_b32_e64 v22, v22, v24, s5
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v15, v15, 4, v15
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v34, v46, v44, s5
	v_permlanex16_b32 v9, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v27, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v29, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v31, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v33, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v35, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v37, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v22, s6, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v12
	v_and_b32_e32 v42, 0x7060706, v15
	v_cndmask_b32_e64 v36, v47, v45, s5
	v_permlanex16_b32 v43, v14, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v7, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v9, v8, v37
	v_perm_b32 v8, v9, v8, v42
	v_perm_b32 v9, v11, v10, v37
	v_perm_b32 v10, v11, v10, v42
	v_perm_b32 v11, v16, v13, v37
	v_perm_b32 v12, v16, v13, v42
	v_perm_b32 v13, v18, v17, v37
	v_perm_b32 v14, v18, v17, v42
	v_perm_b32 v15, v20, v19, v37
	v_perm_b32 v16, v20, v19, v42
	v_perm_b32 v17, v21, v23, v37
	v_perm_b32 v18, v21, v23, v42
	v_perm_b32 v19, v24, v26, v37
	v_perm_b32 v20, v24, v26, v42
	v_perm_b32 v21, v25, v28, v37
	v_perm_b32 v22, v25, v28, v42
	v_perm_b32 v23, v27, v30, v37
	v_perm_b32 v24, v27, v30, v42
	v_perm_b32 v25, v29, v32, v37
	v_perm_b32 v26, v29, v32, v42
	v_perm_b32 v27, v31, v34, v37
	v_perm_b32 v28, v31, v34, v42
	v_perm_b32 v31, v35, v38, v37
	v_perm_b32 v32, v35, v38, v42
	v_add_lshl_u32 v38, v1, v6, 1
	v_add_lshl_u32 v6, v2, v6, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s5, s3, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v29, v33, v36, v37
	v_perm_b32 v30, v33, v36, v42
	v_perm_b32 v33, v43, v39, v37
	v_perm_b32 v35, v44, v40, v37
	v_perm_b32 v36, v44, v40, v42
	v_perm_b32 v37, v0, v41, v37
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v41, v42
	v_add_lshl_u32 v0, v2, v5, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s2, s4, s2
	.loc	1 509 9                         ; ragged.py:509:9
	v_perm_b32 v34, v43, v39, v42
	v_add_lshl_u32 v39, v1, v5, 1
	v_add_lshl_u32 v5, v1, v4, 1
	v_add_lshl_u32 v4, v2, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s2, s3, s1
	s_and_b32 s1, s4, s1
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v1, v1, v3, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s1, s3, s0
	.loc	1 509 9                         ; ragged.py:509:9
	v_add_lshl_u32 v2, v2, v3, 1
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s0, s4, s0
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_cndmask_b32_e64 v3, 0x80000000, v4, s0
	.loc	1 512 18                        ; ragged.py:512:18
	s_and_b32 s0, s3, vcc_lo
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 509 9                         ; ragged.py:509:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x7
	buffer_store_b128 v[7:10], v40, s[48:51], 0 offen
	buffer_store_b128 v[11:14], v6, s[48:51], 0 offen
	buffer_store_b128 v[15:18], v39, s[48:51], 0 offen
	buffer_store_b128 v[19:22], v0, s[48:51], 0 offen
	buffer_store_b128 v[23:26], v5, s[48:51], 0 offen
	buffer_store_b128 v[27:30], v3, s[48:51], 0 offen
	buffer_store_b128 v[31:34], v1, s[48:51], 0 offen
	buffer_store_b128 v[35:38], v2, s[48:51], 0 offen
	.loc	1 374 5                         ; ragged.py:374:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 104
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 118
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 118
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8008
; TotalNumSgprs: 58
; NumVgprs: 118
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 118
; Occupancy: 12
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x4d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x27 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	400                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     118
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
