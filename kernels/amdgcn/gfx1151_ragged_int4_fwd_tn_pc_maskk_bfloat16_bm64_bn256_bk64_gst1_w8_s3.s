	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 523 0                         ; ragged.py:523:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x4c
	s_load_b32 s3, s[0:1], 0x54
.Ltmp0:
	.loc	1 551 25 prologue_end           ; ragged.py:551:25
	s_abs_i32 s8, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:549:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:549:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 551 25 is_stmt 1              ; ragged.py:551:25
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
	s_sub_i32 s5, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 553 33                        ; ragged.py:553:33
	s_sub_i32 s3, s3, s5
	.loc	1 554 24                        ; ragged.py:554:24
	s_mul_i32 s4, s5, s4
	.loc	1 553 22                        ; ragged.py:553:22
	s_min_i32 s3, s3, 1
	.loc	1 554 24                        ; ragged.py:554:24
	s_sub_i32 s2, s2, s4
	.loc	1 556 17                        ; ragged.py:556:17
	s_abs_i32 s6, s3
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s4
	s_mul_hi_u32 s4, s8, s7
	s_xor_b32 s7, s2, s3
	s_mul_i32 s9, s4, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s18, s8, s9
	s_add_i32 s19, s4, 1
	s_sub_i32 s20, s18, s6
	s_cmp_ge_u32 s18, s6
	s_load_b256 s[8:15], s[0:1], 0x20
	s_cselect_b32 s4, s19, s4
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s4, 1
	s_cmp_ge_u32 s18, s6
	s_cselect_b32 s4, s19, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s7
	s_sub_i32 s6, s4, s7
	s_mov_b32 s7, 0
	.loc	1 555 34                        ; ragged.py:555:34
	s_mul_i32 s3, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 555 20 is_stmt 0              ; ragged.py:555:20
	s_add_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 558 20 is_stmt 1              ; ragged.py:558:20
	s_ashr_i32 s3, s2, 31
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 559 23                        ; ragged.py:559:23
	s_add_u32 s8, s10, s2
	s_addc_u32 s9, s11, s3
	.loc	1 558 20                        ; ragged.py:558:20
	s_load_b64 s[20:21], s[4:5], 0x0
	.loc	1 559 23                        ; ragged.py:559:23
	s_load_b64 s[18:19], s[8:9], 0x0
	.loc	1 560 24                        ; ragged.py:560:24
	s_add_u32 s4, s12, s2
	s_addc_u32 s5, s13, s3
	.loc	1 561 22                        ; ragged.py:561:22
	s_add_u32 s2, s14, s2
	s_addc_u32 s3, s15, s3
	.loc	1 573 19                        ; ragged.py:573:19
	s_cmp_gt_i32 s17, 0
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_mov_b32 s7, -1
.LBB0_2:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[22:23], s[4:5], 0x0
	s_load_b64 s[24:25], s[2:3], 0x0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v68, 15, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v69, 0xf0, v0
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
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v101, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s21, s6, 8
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 573 13 is_stmt 1              ; ragged.py:573:13
	v_add_nc_u32_e32 v71, 0, v68
	.loc	1 562 18                        ; ragged.py:562:18
	v_mov_b32_e32 v1, 0
	.loc	1 562 32 is_stmt 0              ; ragged.py:562:32
	v_and_b32_e32 v5, 63, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s26, s[0:1], 0x48
	.loc	1 563 18 is_stmt 1              ; ragged.py:563:18
	v_lshl_or_b32 v2, v68, 4, s21
	v_or_b32_e32 v6, 0x700, v0
	.loc	1 583 35                        ; ragged.py:583:35
	s_mul_i32 s2, s17, s16
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v3, s0, s18, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s19, 0, s0
	v_or_b32_e32 v7, 0x3f0, v0
	v_or_b32_e32 v8, 0x7f0, v0
	.loc	1 568 18                        ; ragged.py:568:18
	v_lshrrev_b32_e32 v70, 6, v0
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s0, s[22:23], v[3:4]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s1, s[24:25], v[3:4]
	v_lshrrev_b32_e32 v3, 1, v0
	v_or_b32_e32 v4, 0x300, v0
	.loc	1 565 20 is_stmt 1              ; ragged.py:565:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v2
	v_add_nc_u32_e32 v74, 0, v7
	s_mov_b32 s7, 0x31027000
	v_and_b32_e32 v3, 0x70, v3
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 573 13                        ; ragged.py:573:13
	s_mov_b32 s27, 0
	v_add_nc_u32_e32 v72, v71, v3
	v_lshlrev_b32_e32 v9, 4, v0
	v_dual_mov_b32 v14, v1 :: v_dual_add_nc_u32 v73, 0, v6
	v_mov_b32_e32 v6, v1
	v_mad_u64_u32 v[66:67], null, s2, s20, v[2:3]
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v67, 0, v4
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v75, 0, v8
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v77, 0, v0
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v65, s18, v5
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_add_nc_u32_e32 v76, 0, v9
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
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
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s28, s0, s1
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 568 18                        ; ragged.py:568:18
	v_or_b32_e32 v80, 4, v70
	v_lshrrev_b32_e32 v79, 4, v69
	v_or_b32_e32 v81, 8, v70
	v_or_b32_e32 v85, 20, v70
	v_or_b32_e32 v86, 24, v70
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v78, s27, v70
	.loc	1 568 18                        ; ragged.py:568:18
	v_or_b32_e32 v87, 28, v70
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v82, s27, v80
	.loc	1 568 18                        ; ragged.py:568:18
	v_or_b32_e32 v84, 12, v70
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v79, s27, v79
	v_or_b32_e32 v83, s27, v81
	v_or_b32_e32 v80, s27, v85
	v_or_b32_e32 v81, s27, v86
	v_or_b32_e32 v85, s27, v87
	.loc	1 584 38                        ; ragged.py:584:38
	v_mad_u64_u32 v[86:87], null, v78, s26, v[65:66]
	v_mad_u64_u32 v[87:88], null, v82, s26, v[65:66]
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v84, s27, v84
	.loc	1 575 26                        ; ragged.py:575:26
	v_cmp_gt_i32_e64 s0, s17, v78
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v78, 16, v78
	.loc	1 585 38                        ; ragged.py:585:38
	v_mad_u64_u32 v[88:89], null, v79, s16, v[66:67]
	.loc	1 584 38                        ; ragged.py:584:38
	v_mad_u64_u32 v[89:90], null, v80, s26, v[65:66]
	v_mad_u64_u32 v[80:81], null, v81, s26, v[65:66]
	.loc	1 574 22                        ; ragged.py:574:22
	v_or_b32_e32 v81, 16, v79
	.loc	1 584 38                        ; ragged.py:584:38
	v_mad_u64_u32 v[82:83], null, v83, s26, v[65:66]
	v_mad_u64_u32 v[83:84], null, v84, s26, v[65:66]
	.loc	1 575 26                        ; ragged.py:575:26
	v_cmp_gt_i32_e64 s2, s17, v78
	.loc	1 584 62                        ; ragged.py:584:62
	s_and_b32 s0, s28, s0
	.loc	1 575 26                        ; ragged.py:575:26
	v_cmp_gt_i32_e64 s1, s17, v79
	.loc	1 584 38                        ; ragged.py:584:38
	v_mad_u64_u32 v[84:85], null, v85, s26, v[65:66]
	v_mad_u64_u32 v[78:79], null, v78, s26, v[65:66]
	.loc	1 584 30 is_stmt 0              ; ragged.py:584:30
	v_cndmask_b32_e64 v79, 0x80000000, v86, s0
	.loc	1 585 38 is_stmt 1              ; ragged.py:585:38
	v_mad_u64_u32 v[85:86], null, v81, s16, v[66:67]
	.loc	1 575 26                        ; ragged.py:575:26
	v_cmp_gt_i32_e64 s3, s17, v81
	.loc	1 584 62                        ; ragged.py:584:62
	s_and_b32 s2, s28, s2
	.loc	1 584 30 is_stmt 0              ; ragged.py:584:30
	v_cndmask_b32_e64 v81, 0x80000000, v87, s0
	v_cndmask_b32_e64 v82, 0x80000000, v82, s0
	.loc	1 585 62 is_stmt 1              ; ragged.py:585:62
	s_and_b32 s1, vcc_lo, s1
	.loc	1 584 30                        ; ragged.py:584:30
	v_cndmask_b32_e64 v87, 0x80000000, v89, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s0
	.loc	1 585 62                        ; ragged.py:585:62
	s_and_b32 s0, vcc_lo, s3
	.loc	1 585 30 is_stmt 0              ; ragged.py:585:30
	v_cndmask_b32_e64 v86, 0x80000000, v88, s1
	.loc	1 584 30 is_stmt 1              ; ragged.py:584:30
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	s_clause 0x6
	buffer_load_u8 v89, v81, s[4:7], 0 offen
	buffer_load_u8 v90, v82, s[4:7], 0 offen
	buffer_load_u8 v87, v87, s[4:7], 0 offen
	buffer_load_u8 v91, v83, s[4:7], 0 offen
	buffer_load_u8 v92, v80, s[4:7], 0 offen
	buffer_load_u8 v93, v84, s[4:7], 0 offen
	buffer_load_u8 v94, v78, s[4:7], 0 offen
	.loc	1 585 30                        ; ragged.py:585:30
	v_cndmask_b32_e64 v82, 0x80000000, v85, s0
	.loc	1 584 30                        ; ragged.py:584:30
	buffer_load_u8 v88, v79, s[4:7], 0 offen
	.loc	1 585 30                        ; ragged.py:585:30
	s_clause 0x1
	buffer_load_b128 v[78:81], v86, s[12:15], 0 offen
	buffer_load_b128 v[82:85], v82, s[12:15], 0 offen
	.loc	1 584 30                        ; ragged.py:584:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 596 17                        ; ragged.py:596:17
	s_add_i32 s27, s27, 32
	.loc	1 584 30                        ; ragged.py:584:30
	s_waitcnt vmcnt(2)
	ds_store_b8 v77, v88
	ds_store_b8 v77, v89 offset:256
	ds_store_b8 v77, v90 offset:512
	ds_store_b8 v77, v87 offset:1280
	ds_store_b8 v67, v91
	ds_store_b8 v77, v92 offset:1536
	ds_store_b8 v73, v93
	ds_store_b8 v77, v94 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 586 27                        ; ragged.py:586:27
	ds_load_u8 v86, v71 offset:192
	ds_load_u8 v87, v71 offset:128
	ds_load_u8 v88, v71 offset:208
	ds_load_u8 v89, v71 offset:144
	ds_load_u8 v90, v71 offset:224
	ds_load_u8 v91, v71 offset:160
	ds_load_u8 v92, v71 offset:240
	ds_load_u8 v93, v71 offset:176
	ds_load_u8 v94, v71 offset:448
	ds_load_u8 v95, v71 offset:384
	ds_load_u8 v96, v71 offset:464
	ds_load_u8 v97, v71 offset:400
	ds_load_u8 v98, v71 offset:480
	ds_load_u8 v99, v71 offset:416
	ds_load_u8 v100, v71 offset:496
	ds_load_u8 v101, v71 offset:432
	ds_load_u8 v102, v71 offset:320
	ds_load_u8 v103, v71 offset:256
	ds_load_u8 v104, v71 offset:336
	ds_load_u8 v105, v71 offset:272
	ds_load_u8 v106, v71 offset:352
	ds_load_u8 v107, v71 offset:288
	ds_load_u8 v108, v71 offset:368
	ds_load_u8 v109, v71 offset:304
	ds_load_u8 v110, v71 offset:64
	ds_load_u8 v111, v71 offset:80
	ds_load_u8 v112, v71 offset:96
	ds_load_u8 v113, v71 offset:112
	ds_load_u8 v114, v71
	ds_load_u8 v115, v71 offset:16
	ds_load_u8 v116, v71 offset:32
	ds_load_u8 v117, v71 offset:48
	ds_load_u8 v118, v71 offset:960
	ds_load_u8 v119, v71 offset:896
	ds_load_u8 v120, v71 offset:1024
	ds_load_u8 v121, v71 offset:976
	ds_load_u8 v122, v71 offset:912
	ds_load_u8 v123, v71 offset:992
	ds_load_u8 v124, v71 offset:928
	ds_load_u8 v125, v71 offset:944
	ds_load_u8 v126, v71 offset:832
	ds_load_u8 v127, v71 offset:768
	ds_load_u8 v128, v71 offset:848
	ds_load_u8 v129, v71 offset:784
	ds_load_u8 v130, v71 offset:864
	ds_load_u8 v131, v71 offset:800
	ds_load_u8 v132, v71 offset:880
	ds_load_u8 v133, v71 offset:816
	ds_load_u8 v134, v71 offset:704
	ds_load_u8 v135, v71 offset:640
	ds_load_u8 v136, v71 offset:720
	ds_load_u8 v137, v71 offset:656
	ds_load_u8 v138, v71 offset:736
	ds_load_u8 v139, v71 offset:672
	ds_load_u8 v140, v71 offset:752
	ds_load_u8 v141, v71 offset:688
	ds_load_u8 v142, v71 offset:576
	ds_load_u8 v143, v71 offset:512
	ds_load_u8 v144, v71 offset:592
	ds_load_u8 v145, v71 offset:528
	ds_load_u8 v146, v71 offset:608
	ds_load_u8 v147, v71 offset:544
	ds_load_u8 v148, v71 offset:624
	ds_load_u8 v149, v71 offset:560
	ds_load_u8 v150, v71 offset:1216
	ds_load_u8 v151, v71 offset:1280
	ds_load_u8 v152, v71 offset:1232
	ds_load_u8 v153, v71 offset:1168
	ds_load_u8 v154, v71 offset:1248
	ds_load_u8 v155, v71 offset:1184
	ds_load_u8 v156, v71 offset:1264
	ds_load_u8 v157, v71 offset:1200
	ds_load_u8 v158, v71 offset:1152
	ds_load_u8 v159, v71 offset:1088
	ds_load_u8 v160, v71 offset:1104
	ds_load_u8 v161, v71 offset:1040
	ds_load_u8 v162, v71 offset:1120
	ds_load_u8 v163, v71 offset:1056
	ds_load_u8 v164, v71 offset:1136
	ds_load_u8 v165, v71 offset:1072
	ds_load_u8 v166, v71 offset:1472
	ds_load_u8 v167, v71 offset:1536
	ds_load_u8 v168, v71 offset:1488
	ds_load_u8 v169, v71 offset:1424
	ds_load_u8 v170, v71 offset:1504
	ds_load_u8 v171, v71 offset:1440
	ds_load_u8 v172, v71 offset:1520
	ds_load_u8 v173, v71 offset:1456
	ds_load_u8 v174, v71 offset:1408
	ds_load_u8 v175, v71 offset:1344
	ds_load_u8 v176, v71 offset:1360
	ds_load_u8 v177, v71 offset:1296
	ds_load_u8 v178, v71 offset:1376
	ds_load_u8 v179, v71 offset:1312
	ds_load_u8 v180, v71 offset:1392
	ds_load_u8 v181, v71 offset:1328
	ds_load_u8 v182, v71 offset:1984
	ds_load_u8 v183, v71 offset:2000
	ds_load_u8 v184, v71 offset:1936
	ds_load_u8 v185, v71 offset:2016
	ds_load_u8 v186, v71 offset:1952
	ds_load_u8 v187, v74
	ds_load_u8 v188, v75
	ds_load_u8 v189, v71 offset:1968
	ds_load_u8 v190, v71 offset:1920
	ds_load_u8 v191, v71 offset:1856
	ds_load_u8 v192, v71 offset:1872
	ds_load_u8 v193, v71 offset:1808
	ds_load_u8 v194, v71 offset:1888
	ds_load_u8 v195, v71 offset:1824
	ds_load_u8 v196, v71 offset:1904
	ds_load_u8 v197, v71 offset:1840
	ds_load_u8 v198, v71 offset:1728
	ds_load_u8 v199, v71 offset:1792
	ds_load_u8 v200, v71 offset:1744
	ds_load_u8 v201, v71 offset:1680
	ds_load_u8 v202, v71 offset:1760
	ds_load_u8 v203, v71 offset:1696
	ds_load_u8 v204, v71 offset:1776
	ds_load_u8 v205, v71 offset:1712
	ds_load_u8 v206, v71 offset:1664
	ds_load_u8 v207, v71 offset:1600
	ds_load_u8 v208, v71 offset:1616
	ds_load_u8 v209, v71 offset:1552
	ds_load_u8 v210, v71 offset:1632
	ds_load_u8 v211, v71 offset:1568
	ds_load_u8 v212, v71 offset:1648
	ds_load_u8 v213, v71 offset:1584
	.loc	1 585 30                        ; ragged.py:585:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b128 v76, v[78:81]
	s_waitcnt vmcnt(0)
	ds_store_b128 v76, v[82:85] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 586 27                        ; ragged.py:586:27
	ds_load_u8 v78, v72 offset:1280
	ds_load_u8 v79, v72 offset:1024
	ds_load_u8 v80, v72 offset:1792
	ds_load_u8 v81, v72 offset:1536
	ds_load_u8 v82, v72 offset:1920
	ds_load_u8 v83, v72 offset:1664
	v_perm_b32 v84, v103, v102, 0xc0c0004
	ds_load_u8 v85, v72 offset:1408
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v102, v114, v110, 0xc0c0004
	ds_load_u8 v103, v72 offset:256
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v72
	v_perm_b32 v104, v105, v104, 0xc0c0004
	ds_load_u8 v105, v72 offset:768
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v72 offset:512
	v_perm_b32 v110, v115, v111, 0xc0c0004
	ds_load_u8 v111, v72 offset:896
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v89, v72 offset:640
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v72 offset:384
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v72 offset:128
	ds_load_u8 v115, v72 offset:2304
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v72 offset:2048
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v72 offset:2560
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v72 offset:2688
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v72 offset:2432
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v72 offset:2176
	ds_load_u8 v95, v72 offset:1152
	v_perm_b32 v112, v116, v112, 0xc0c0004
	ds_load_u8 v114, v72 offset:3328
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v72 offset:3072
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v72 offset:3840
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v72 offset:3584
	v_perm_b32 v113, v117, v113, 0xc0c0004
	v_perm_b32 v116, v127, v126, 0xc0c0004
	ds_load_u8 v117, v72 offset:2816
	v_perm_b32 v126, v143, v142, 0xc0c0004
	ds_load_u8 v127, v72 offset:3968
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v72 offset:3712
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v72 offset:3456
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v72 offset:3200
	ds_load_u8 v143, v72 offset:2944
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_perm_b32 v144, v147, v146, 0xc0c0004
	ds_load_u8 v145, v72 offset:5376
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v72 offset:5120
	v_perm_b32 v146, v149, v148, 0xc0c0004
	ds_load_u8 v147, v72 offset:5888
	v_perm_b32 v140, v141, v140, 0xc0c0004
	ds_load_u8 v141, v72 offset:5632
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v72 offset:4352
	ds_load_u8 v148, v72 offset:4096
	v_perm_b32 v149, v151, v175, 0xc0c0004
	ds_load_u8 v151, v72 offset:6016
	v_perm_b32 v166, v174, v166, 0xc0c0004
	ds_load_u8 v174, v72 offset:5760
	v_perm_b32 v120, v120, v159, 0xc0c0004
	ds_load_u8 v159, v72 offset:5504
	v_perm_b32 v150, v158, v150, 0xc0c0004
	ds_load_u8 v158, v72 offset:5248
	v_perm_b32 v175, v177, v176, 0xc0c0004
	ds_load_u8 v176, v72 offset:4864
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v72 offset:4608
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v72 offset:4992
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v72 offset:4736
	v_perm_b32 v177, v179, v178, 0xc0c0004
	ds_load_u8 v178, v72 offset:4480
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v72 offset:4224
	v_perm_b32 v125, v125, v187, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v72 offset:7424
	ds_load_u8 v187, v72 offset:7680
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v72 offset:7168
	v_perm_b32 v179, v181, v180, 0xc0c0004
	ds_load_u8 v180, v72 offset:8064
	v_perm_b32 v172, v173, v172, 0xc0c0004
	ds_load_u8 v173, v72 offset:7808
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v72 offset:7552
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v72 offset:7936
	v_perm_b32 v181, v199, v191, 0xc0c0004
	v_perm_b32 v182, v190, v182, 0xc0c0004
	ds_load_u8 v190, v72 offset:7296
	v_perm_b32 v167, v167, v207, 0xc0c0004
	ds_load_u8 v191, v72 offset:6400
	ds_load_u8 v199, v72 offset:6144
	v_perm_b32 v192, v193, v192, 0xc0c0004
	ds_load_u8 v193, v72 offset:7040
	ds_load_u8 v207, v72 offset:6912
	v_perm_b32 v183, v184, v183, 0xc0c0004
	ds_load_u8 v184, v72 offset:6528
	v_perm_b32 v200, v201, v200, 0xc0c0004
	ds_load_u8 v201, v72 offset:6656
	v_perm_b32 v194, v195, v194, 0xc0c0004
	ds_load_u8 v195, v72 offset:6784
	v_perm_b32 v185, v186, v185, 0xc0c0004
	ds_load_u8 v186, v72 offset:6272
	v_perm_b32 v198, v206, v198, 0xc0c0004
	v_perm_b32 v206, v209, v208, 0xc0c0004
	v_perm_b32 v208, v211, v210, 0xc0c0004
	v_perm_b32 v202, v203, v202, 0xc0c0004
	v_perm_b32 v203, v213, v212, 0xc0c0004
	v_perm_b32 v204, v205, v204, 0xc0c0004
	v_perm_b32 v196, v197, v196, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v189, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(60)
	v_perm_b32 v197, v81, v80, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v205, v87, v103, 0xc0c0004
	s_waitcnt lgkmcnt(53)
	v_perm_b32 v209, v97, v105, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v210, v95, v85, 0xc0c0004
	v_perm_b32 v211, v83, v82, 0xc0c0004
	v_perm_b32 v212, v99, v107, 0xc0c0004
	v_perm_b32 v213, v89, v111, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v114, v91, v114, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v214, v101, v109, 0xc0c0004
	v_perm_b32 v215, v93, v115, 0xc0c0004
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v117, v119, v117, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v119, v122, v129, 0xc0c0004
	v_perm_b32 v122, v135, v127, 0xc0c0004
	v_perm_b32 v124, v124, v131, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v127, v137, v143, 0xc0c0004
	v_lshl_or_b32 v79, v94, 16, v84
	v_lshl_or_b32 v78, v86, 16, v102
	v_lshl_or_b32 v81, v96, 16, v104
	v_lshl_or_b32 v80, v88, 16, v110
	v_lshl_or_b32 v83, v98, 16, v106
	v_lshl_or_b32 v82, v90, 16, v112
	v_lshl_or_b32 v85, v100, 16, v108
	v_lshl_or_b32 v84, v92, 16, v113
	v_lshl_or_b32 v111, v197, 16, v189
	v_lshl_or_b32 v110, v209, 16, v205
	v_lshl_or_b32 v113, v211, 16, v210
	v_lshl_or_b32 v112, v213, 16, v212
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v129, v139, v145, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v131, v141, v147, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v133, v148, v133, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v135, v169, v176, 0xc0c0004
	v_perm_b32 v137, v158, v159, 0xc0c0004
	v_perm_b32 v139, v174, v151, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v141, v171, v178, 0xc0c0004
	v_perm_b32 v143, v153, v161, 0xc0c0004
	v_lshl_or_b32 v87, v118, 16, v116
	v_lshl_or_b32 v86, v134, 16, v126
	v_lshl_or_b32 v89, v121, 16, v128
	v_lshl_or_b32 v88, v136, 16, v142
	v_lshl_or_b32 v91, v123, 16, v130
	v_lshl_or_b32 v90, v138, 16, v144
	v_lshl_or_b32 v92, v140, 16, v146
	v_lshl_or_b32 v93, v125, 16, v132
	v_lshl_or_b32 v115, v214, 16, v114
	v_lshl_or_b32 v114, v117, 16, v215
	v_lshl_or_b32 v117, v122, 16, v119
	v_lshl_or_b32 v116, v127, 16, v124
	v_wmma_i32_16x16x16_iu4 v[1:8], v[110:111], v[78:79], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[78:79], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[80:81], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[110:111], v[82:83], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[82:83], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[110:111], v[84:85], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[84:85], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v145, v155, v163, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v147, v187, v157, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v148, v199, v191, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v151, v201, v207, 0xc0c0004
	v_perm_b32 v153, v190, v165, 0xc0c0004
	v_perm_b32 v155, v173, v180, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v186, v184, 0xc0c0004
	v_perm_b32 v158, v195, v193, 0xc0c0004
	v_lshl_or_b32 v95, v166, 16, v149
	v_lshl_or_b32 v94, v150, 16, v120
	v_lshl_or_b32 v97, v168, 16, v175
	v_lshl_or_b32 v96, v152, 16, v160
	v_lshl_or_b32 v99, v170, 16, v177
	v_lshl_or_b32 v98, v154, 16, v162
	v_lshl_or_b32 v101, v172, 16, v179
	v_lshl_or_b32 v100, v156, 16, v164
	v_lshl_or_b32 v119, v131, 16, v129
	v_lshl_or_b32 v118, v135, 16, v133
	v_lshl_or_b32 v121, v139, 16, v137
	v_lshl_or_b32 v120, v143, 16, v141
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[86:87], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[86:87], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[88:89], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[88:89], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[90:91], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[90:91], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[114:115], v[92:93], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[116:117], v[92:93], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v182, 16, v181
	v_lshl_or_b32 v102, v198, 16, v167
	v_lshl_or_b32 v105, v183, 16, v192
	v_lshl_or_b32 v104, v200, 16, v206
	v_lshl_or_b32 v107, v185, 16, v194
	v_lshl_or_b32 v106, v202, 16, v208
	v_lshl_or_b32 v108, v204, 16, v203
	v_lshl_or_b32 v109, v188, 16, v196
	v_lshl_or_b32 v123, v147, 16, v145
	v_lshl_or_b32 v122, v151, 16, v148
	v_lshl_or_b32 v125, v155, 16, v153
	v_lshl_or_b32 v124, v158, 16, v157
	v_wmma_i32_16x16x16_iu4 v[1:8], v[118:119], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[120:121], v[94:95], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[96:97], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[96:97], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[118:119], v[98:99], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[120:121], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[118:119], v[100:101], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[120:121], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[122:123], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[124:125], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[122:123], v[104:105], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[124:125], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[122:123], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[124:125], v[108:109], v[57:64] neg_lo:[1,1,0]
	.loc	1 573 19                        ; ragged.py:573:19
	s_cmp_lt_i32 s27, s17
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %._crit_edge.loopexit
	.loc	1 597 19                        ; ragged.py:597:19
	v_cvt_f32_i32_e32 v101, v1
	v_cvt_f32_i32_e32 v100, v2
	v_cvt_f32_i32_e32 v99, v3
	v_cvt_f32_i32_e32 v98, v4
	v_cvt_f32_i32_e32 v97, v5
	v_cvt_f32_i32_e32 v96, v6
	v_cvt_f32_i32_e32 v95, v7
	v_cvt_f32_i32_e32 v94, v8
	v_cvt_f32_i32_e32 v93, v9
	v_cvt_f32_i32_e32 v92, v10
	v_cvt_f32_i32_e32 v91, v11
	v_cvt_f32_i32_e32 v90, v12
	v_cvt_f32_i32_e32 v89, v13
	v_cvt_f32_i32_e32 v88, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v86, v16
	v_cvt_f32_i32_e32 v85, v17
	v_cvt_f32_i32_e32 v84, v18
	v_cvt_f32_i32_e32 v83, v19
	v_cvt_f32_i32_e32 v82, v20
	v_cvt_f32_i32_e32 v81, v21
	v_cvt_f32_i32_e32 v80, v22
	v_cvt_f32_i32_e32 v79, v23
	v_cvt_f32_i32_e32 v78, v24
	v_cvt_f32_i32_e32 v77, v25
	v_cvt_f32_i32_e32 v76, v26
	v_cvt_f32_i32_e32 v75, v27
	v_cvt_f32_i32_e32 v74, v28
	v_cvt_f32_i32_e32 v73, v29
	v_cvt_f32_i32_e32 v72, v30
	v_cvt_f32_i32_e32 v71, v31
	v_cvt_f32_i32_e32 v70, v32
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
.LBB0_6:                                ; %._crit_edge
	.loc	1 562 32                        ; ragged.py:562:32
	v_or_b32_e32 v1, 48, v68
	v_or_b32_e32 v3, 32, v68
	v_or_b32_e32 v4, 16, v68
	.loc	1 599 36                        ; ragged.py:599:36
	s_and_b32 s53, s9, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 562 18                        ; ragged.py:562:18
	v_add_co_u32 v1, s0, s18, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s19, 0, s0
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 599 36                        ; ragged.py:599:36
	s_mov_b32 s52, s8
	.loc	1 607 17                        ; ragged.py:607:17
	v_lshl_add_u32 v41, v69, 1, 0
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[1:2]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s3, s[24:25], v[1:2]
	.loc	1 562 18 is_stmt 1              ; ragged.py:562:18
	v_add_co_u32 v2, s0, s18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s19, 0, s0
	v_add_co_u32 v4, s0, s18, v4
	v_add_co_ci_u32_e64 v5, null, s19, 0, s0
	v_add_co_u32 v36, s0, s18, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v37, null, s19, 0, s0
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s1, s[22:23], v[4:5]
	.loc	1 564 48 is_stmt 0              ; ragged.py:564:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[4:5]
	.loc	1 564 21                        ; ragged.py:564:21
	v_cmp_le_i64_e64 s0, s[22:23], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s2, s[22:23], v[36:37]
	.loc	1 564 48                        ; ragged.py:564:48
	v_cmp_gt_i64_e64 s6, s[24:25], v[36:37]
	v_cmp_gt_i64_e64 s4, s[24:25], v[2:3]
	.loc	1 599 36 is_stmt 1              ; ragged.py:599:36
	v_lshlrev_b32_e32 v3, 1, v36
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 599 36                        ; ragged.py:599:36
	v_lshlrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s2, s2, s6
	s_and_b32 s1, s1, s5
	.loc	1 599 36                        ; ragged.py:599:36
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 564 20                        ; ragged.py:564:20
	s_and_b32 s0, s0, s4
	.loc	1 599 36                        ; ragged.py:599:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_clause 0x3
	buffer_load_u16 v36, v3, s[52:55], 0 offen
	buffer_load_u16 v37, v4, s[52:55], 0 offen
	buffer_load_u16 v38, v2, s[52:55], 0 offen
	buffer_load_u16 v39, v1, s[52:55], 0 offen
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v1, s21, v0
	.loc	1 603 21                        ; ragged.py:603:21
	s_mul_i32 s3, s16, s20
	.loc	1 602 36                        ; ragged.py:602:36
	s_and_b32 s53, s11, 0xffff
	s_mov_b32 s52, s10
	.loc	1 607 17                        ; ragged.py:607:17
	v_lshl_add_u32 v4, v69, 2, 0
	.loc	1 602 36                        ; ragged.py:602:36
	v_add_lshl_u32 v2, v1, s3, 1
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s3, s16, v1
	.loc	1 660 9                         ; ragged.py:660:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 602 36                        ; ragged.py:602:36
	v_cndmask_b32_e64 v1, 0x80000000, v2, s3
	buffer_load_u16 v40, v1, s[52:55], 0 offen
	.loc	1 563 36                        ; ragged.py:563:36
	v_lshrrev_b32_e32 v1, 1, v69
	.loc	1 607 17                        ; ragged.py:607:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v1, s21, v1
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s3, s16, v1
	.loc	1 599 36                        ; ragged.py:599:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v37, 16, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 600 17                        ; ragged.py:600:17
	v_dual_mul_f32 v61, v82, v37 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v52, v92, v36
	v_dual_mul_f32 v59, v84, v37 :: v_dual_lshlrev_b32 v2, 1, v0
	v_dual_mul_f32 v60, v83, v37 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_mul_f32 v62, v81, v37 :: v_dual_add_nc_u32 v5, s18, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 607 17                        ; ragged.py:607:17
	v_and_b32_e32 v42, 28, v2
	.loc	1 600 17                        ; ragged.py:600:17
	v_dual_mul_f32 v46, v98, v36 :: v_dual_and_b32 v3, 32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, v96, v36 :: v_dual_add_nc_u32 v43, 16, v5
	v_dual_mul_f32 v47, v97, v36 :: v_dual_add_nc_u32 v44, 32, v5
	v_dual_mul_f32 v50, v94, v36 :: v_dual_add_nc_u32 v45, 48, v5
	.loc	1 607 17                        ; ragged.py:607:17
	v_add3_u32 v42, v4, v3, v42
	.loc	1 600 17                        ; ragged.py:600:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v49, v95, v36 :: v_dual_lshlrev_b32 v38, 16, v38
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v54, v90, v36 :: v_dual_lshlrev_b32 v39, 16, v39
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v75, v75, v37 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 661 13                        ; ragged.py:661:13
	v_mul_lo_u32 v6, v5, s16
	v_mul_lo_u32 v5, v43, s16
	v_mul_lo_u32 v4, v44, s16
	v_mul_lo_u32 v3, v45, s16
	.loc	1 600 17                        ; ragged.py:600:17
	v_mul_f32_e32 v43, v101, v36
	v_mul_f32_e32 v44, v100, v36
	v_mul_f32_e32 v45, v99, v36
	v_dual_mul_f32 v51, v93, v36 :: v_dual_mul_f32 v64, v79, v37
	v_dual_mul_f32 v53, v91, v36 :: v_dual_mul_f32 v68, v78, v37
	v_dual_mul_f32 v55, v89, v36 :: v_dual_mul_f32 v76, v76, v37
	v_dual_mul_f32 v56, v88, v36 :: v_dual_mul_f32 v69, v77, v37
	v_dual_mul_f32 v57, v87, v36 :: v_dual_mul_f32 v74, v74, v37
	v_dual_mul_f32 v36, v86, v36 :: v_dual_mul_f32 v63, v80, v37
	v_mul_f32_e32 v58, v85, v37
	v_dual_mul_f32 v73, v73, v37 :: v_dual_mul_f32 v66, v66, v38
	v_dual_mul_f32 v72, v72, v37 :: v_dual_mul_f32 v67, v67, v38
	v_mul_f32_e32 v71, v71, v37
	v_dual_mul_f32 v37, v70, v37 :: v_dual_mul_f32 v78, v32, v38
	v_dual_mul_f32 v65, v65, v38 :: v_dual_mul_f32 v22, v22, v39
	v_mul_f32_e32 v35, v35, v38
	v_mul_f32_e32 v70, v34, v38
	v_mul_f32_e32 v77, v33, v38
	v_dual_mul_f32 v79, v31, v38 :: v_dual_mul_f32 v88, v17, v39
	v_dual_mul_f32 v80, v30, v38 :: v_dual_mul_f32 v21, v21, v39
	v_dual_mul_f32 v81, v29, v38 :: v_dual_mul_f32 v16, v16, v39
	v_dual_mul_f32 v82, v28, v38 :: v_dual_mul_f32 v87, v18, v39
	v_dual_mul_f32 v83, v27, v38 :: v_dual_mul_f32 v14, v14, v39
	v_dual_mul_f32 v84, v26, v38 :: v_dual_mul_f32 v15, v15, v39
	v_dual_mul_f32 v85, v25, v38 :: v_dual_mul_f32 v12, v12, v39
	v_dual_mul_f32 v86, v24, v38 :: v_dual_mul_f32 v13, v13, v39
	v_dual_mul_f32 v38, v23, v38 :: v_dual_mul_f32 v9, v9, v39
	.loc	1 607 17                        ; ragged.py:607:17
	ds_store_b32 v42, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[23:26], v41
	ds_load_b128 v[27:30], v41 offset:16
	.loc	1 600 17                        ; ragged.py:600:17
	v_mul_f32_e32 v40, v20, v39
	v_mul_f32_e32 v42, v19, v39
	.loc	1 607 17                        ; ragged.py:607:17
	ds_load_b128 v[17:20], v41 offset:512
	ds_load_b128 v[31:34], v41 offset:528
	.loc	1 600 17                        ; ragged.py:600:17
	v_mul_f32_e32 v11, v11, v39
	v_mul_f32_e32 v10, v10, v39
	v_mul_f32_e32 v8, v8, v39
	v_mul_f32_e32 v7, v7, v39
	.loc	1 563 18                        ; ragged.py:563:18
	v_or_b32_e32 v2, 0x80, v1
	.loc	1 660 9                         ; ragged.py:660:9
	v_and_b32_e32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 565 20                        ; ragged.py:565:20
	v_cmp_gt_i32_e64 s4, s16, v2
	.loc	1 607 17                        ; ragged.py:607:17
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v39, v43, v23
	v_mul_f32_e32 v41, v44, v24
	v_dual_mul_f32 v43, v45, v25 :: v_dual_mul_f32 v44, v46, v26
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v45, v47, v27 :: v_dual_mul_f32 v46, v48, v28
	v_dual_mul_f32 v47, v49, v29 :: v_dual_mul_f32 v48, v50, v30
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v49, v51, v17 :: v_dual_mul_f32 v50, v52, v18
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v51, v53, v19 :: v_dual_mul_f32 v36, v36, v34
	v_mul_f32_e32 v53, v55, v31
	v_mul_f32_e32 v55, v57, v33
	v_mul_f32_e32 v57, v59, v24
	v_dual_mul_f32 v59, v61, v26 :: v_dual_mul_f32 v52, v54, v20
	v_mul_f32_e32 v54, v56, v32
	v_mul_f32_e32 v56, v58, v23
	v_mul_f32_e32 v58, v60, v25
	v_dual_mul_f32 v60, v62, v27 :: v_dual_mul_f32 v61, v63, v28
	v_mul_f32_e32 v62, v64, v29
	v_dual_mul_f32 v63, v68, v30 :: v_dual_mul_f32 v74, v74, v20
	v_mul_f32_e32 v64, v69, v17
	v_dual_mul_f32 v68, v76, v18 :: v_dual_mul_f32 v69, v75, v19
	v_dual_mul_f32 v73, v73, v31 :: v_dual_mul_f32 v72, v72, v32
	v_dual_mul_f32 v37, v37, v34 :: v_dual_mul_f32 v70, v70, v27
	v_dual_mul_f32 v67, v67, v23 :: v_dual_mul_f32 v76, v78, v29
	v_mul_f32_e32 v65, v65, v25
	v_mul_f32_e32 v75, v77, v28
	v_mul_f32_e32 v77, v79, v30
	v_dual_mul_f32 v79, v81, v18 :: v_dual_mul_f32 v22, v22, v23
	v_dual_mul_f32 v81, v83, v20 :: v_dual_mul_f32 v38, v38, v34
	v_mul_f32_e32 v83, v85, v32
	v_dual_mul_f32 v23, v40, v25 :: v_dual_mul_f32 v10, v10, v31
	v_mul_f32_e32 v25, v87, v27
	v_mul_f32_e32 v9, v9, v32
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v27, v45, 16, 1
	v_bfe_u32 v32, v50, 16, 1
	v_bfe_u32 v90, v59, 16, 1
	.loc	1 607 17                        ; ragged.py:607:17
	v_dual_mul_f32 v71, v71, v33 :: v_dual_mul_f32 v66, v66, v24
	v_dual_mul_f32 v35, v35, v26 :: v_dual_mul_f32 v78, v80, v17
	v_mul_f32_e32 v80, v82, v19
	v_mul_f32_e32 v82, v84, v31
	v_dual_mul_f32 v84, v86, v33 :: v_dual_mul_f32 v21, v21, v24
	v_mul_f32_e32 v16, v16, v29
	v_mul_f32_e32 v24, v42, v26
	v_dual_mul_f32 v26, v88, v28 :: v_dual_mul_f32 v15, v15, v30
	v_dual_mul_f32 v14, v14, v17 :: v_dual_mul_f32 v11, v11, v20
	v_mul_f32_e32 v8, v8, v33
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v17, v39, 16, 1
	v_bfe_u32 v28, v46, 16, 1
	v_bfe_u32 v29, v47, 16, 1
	v_bfe_u32 v33, v51, 16, 1
	v_bfe_u32 v91, v60, 16, 1
	v_bfe_u32 v92, v61, 16, 1
	.loc	1 607 17                        ; ragged.py:607:17
	v_dual_mul_f32 v13, v13, v18 :: v_dual_mul_f32 v12, v12, v19
	.loc	1 660 9                         ; ragged.py:660:9
	v_bfe_u32 v19, v43, 16, 1
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s14, v50, v50
	v_cmp_o_f32_e64 s24, v59, v59
	v_add3_u32 v27, v45, v27, 0x7fff
	v_add3_u32 v32, v50, v32, 0x7fff
	v_add3_u32 v45, v59, v90, 0x7fff
	.loc	1 607 17                        ; ragged.py:607:17
	v_mul_f32_e32 v7, v7, v34
	.loc	1 660 9                         ; ragged.py:660:9
	v_cmp_o_f32_e64 s5, v39, v39
	v_bfe_u32 v18, v41, 16, 1
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
	v_cmp_o_f32_e64 s6, v41, v41
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s12, v48, v48
	v_cmp_o_f32_e64 s13, v49, v49
	v_cmp_o_f32_e64 s16, v52, v52
	v_cmp_o_f32_e64 s27, v62, v62
	v_cmp_o_f32_e64 s28, v63, v63
	v_add3_u32 v18, v41, v18, 0x7fff
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
	v_bfe_u32 v42, v54, 16, 1
	v_bfe_u32 v85, v55, 16, 1
	v_bfe_u32 v86, v36, 16, 1
	v_bfe_u32 v87, v56, 16, 1
	v_bfe_u32 v95, v64, 16, 1
	v_bfe_u32 v96, v68, 16, 1
	v_bfe_u32 v97, v69, 16, 1
	v_bfe_u32 v98, v74, 16, 1
	v_bfe_u32 v99, v73, 16, 1
	v_bfe_u32 v100, v72, 16, 1
	v_bfe_u32 v101, v71, 16, 1
	v_bfe_u32 v102, v37, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s7
	v_cmp_o_f32_e64 s7, v11, v11
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s6
	v_bfe_u32 v13, v9, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s17, v53, v53
	v_cmp_o_f32_e64 s18, v54, v54
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v36, v36
	v_cmp_o_f32_e64 s21, v56, v56
	v_bfe_u32 v88, v57, 16, 1
	v_bfe_u32 v89, v58, 16, 1
	v_cmp_o_f32_e64 s29, v64, v64
	v_cmp_o_f32_e64 s30, v68, v68
	v_cmp_o_f32_e64 s31, v69, v69
	v_cmp_o_f32_e64 s33, v74, v74
	v_cmp_o_f32_e64 s34, v73, v73
	v_cmp_o_f32_e64 s35, v72, v72
	v_cmp_o_f32_e64 s36, v71, v71
	v_cmp_o_f32_e64 s37, v37, v37
	v_bfe_u32 v103, v67, 16, 1
	v_bfe_u32 v104, v66, 16, 1
	v_bfe_u32 v107, v70, 16, 1
	v_bfe_u32 v108, v75, 16, 1
	v_add3_u32 v20, v44, v20, 0x7fff
	v_add3_u32 v39, v53, v40, 0x7fff
	v_add3_u32 v40, v54, v42, 0x7fff
	v_add3_u32 v41, v55, v85, 0x7fff
	v_add3_u32 v36, v36, v86, 0x7fff
	v_add3_u32 v42, v56, v87, 0x7fff
	v_add3_u32 v50, v64, v95, 0x7fff
	v_add3_u32 v51, v68, v96, 0x7fff
	v_add3_u32 v52, v69, v97, 0x7fff
	v_add3_u32 v53, v74, v98, 0x7fff
	v_add3_u32 v54, v73, v99, 0x7fff
	v_add3_u32 v55, v72, v100, 0x7fff
	v_add3_u32 v56, v71, v101, 0x7fff
	v_add3_u32 v37, v37, v102, 0x7fff
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
	v_cmp_o_f32_e64 s42, v70, v70
	v_cmp_o_f32_e64 s43, v75, v75
	v_add3_u32 v43, v57, v88, 0x7fff
	v_add3_u32 v44, v58, v89, 0x7fff
	v_add3_u32 v57, v67, v103, 0x7fff
	v_add3_u32 v58, v66, v104, 0x7fff
	v_add3_u32 v60, v70, v107, 0x7fff
	v_add3_u32 v61, v75, v108, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v29.h, s11
	v_cndmask_b16 v20.h, 0x7fff, v30.h, s12
	v_cndmask_b16 v27.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v29.l, 0x7fff, v39.h, s17
	v_cndmask_b16 v29.h, 0x7fff, v40.h, s18
	v_cndmask_b16 v30.l, 0x7fff, v41.h, s19
	v_cndmask_b16 v30.h, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.l, 0x7fff, v50.h, s29
	v_cndmask_b16 v36.h, 0x7fff, v51.h, s30
	v_cndmask_b16 v39.l, 0x7fff, v52.h, s31
	v_cndmask_b16 v39.h, 0x7fff, v53.h, s33
	v_cndmask_b16 v40.l, 0x7fff, v54.h, s34
	v_cndmask_b16 v40.h, 0x7fff, v55.h, s35
	v_cndmask_b16 v37.l, 0x7fff, v56.h, s36
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s37
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
	v_cndmask_b32_e64 v26, v40, v36, s5
	v_cndmask_b32_e64 v27, v36, v40, s5
	v_cndmask_b32_e64 v28, v37, v39, s5
	v_cndmask_b32_e64 v29, v39, v37, s5
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
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s5, s3, s2
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v29, v33, v36, v37
	v_perm_b32 v30, v33, v36, v42
	v_perm_b32 v33, v43, v39, v37
	v_perm_b32 v35, v44, v40, v37
	v_perm_b32 v36, v44, v40, v42
	v_perm_b32 v37, v0, v41, v37
	v_cndmask_b32_e64 v40, 0x80000000, v38, s5
	v_perm_b32 v38, v0, v41, v42
	v_add_lshl_u32 v0, v2, v5, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s2, s4, s2
	.loc	1 660 9                         ; ragged.py:660:9
	v_perm_b32 v34, v43, v39, v42
	v_add_lshl_u32 v39, v1, v5, 1
	v_add_lshl_u32 v5, v1, v4, 1
	v_add_lshl_u32 v4, v2, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s2, s3, s1
	s_and_b32 s1, s4, s1
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v1, v1, v3, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s1, s3, s0
	.loc	1 660 9                         ; ragged.py:660:9
	v_add_lshl_u32 v2, v2, v3, 1
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s0, s4, s0
	.loc	1 660 9                         ; ragged.py:660:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	v_cndmask_b32_e64 v3, 0x80000000, v4, s0
	.loc	1 663 18                        ; ragged.py:663:18
	s_and_b32 s0, s3, vcc_lo
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 660 9                         ; ragged.py:660:9
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
	.loc	1 523 5                         ; ragged.py:523:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 216
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 216
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10236
; TotalNumSgprs: 58
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 216
; Occupancy: 7
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
	.short	549                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_pc_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
