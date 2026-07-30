	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 652 0                         ; ragged.py:652:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 680 25 prologue_end           ; ragged.py:680:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v44, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:678:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:678:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
.Ltmp2:
	.loc	1 680 25 is_stmt 1              ; ragged.py:680:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v89, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 682 33                        ; ragged.py:682:33
	s_sub_i32 s5, s35, s4
	.loc	1 683 24                        ; ragged.py:683:24
	s_mul_i32 s3, s4, s3
	.loc	1 682 22                        ; ragged.py:682:22
	s_min_i32 s5, s5, 1
	.loc	1 683 24                        ; ragged.py:683:24
	s_sub_i32 s2, s2, s3
	.loc	1 685 17                        ; ragged.py:685:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 691 32                        ; ragged.py:691:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 685 17                        ; ragged.py:685:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s3, 1
	s_sub_i32 s10, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s3, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s3, s9, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s6, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 684 34                        ; ragged.py:684:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 684 20 is_stmt 0              ; ragged.py:684:20
	s_add_i32 s2, s2, s4
	.loc	1 687 20 is_stmt 1              ; ragged.py:687:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 688 23                        ; ragged.py:688:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 689 24                        ; ragged.py:689:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 690 22                        ; ragged.py:690:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 689 24                        ; ragged.py:689:24
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 690 22                        ; ragged.py:690:22
	s_load_b64 s[14:15], s[4:5], 0x0
	.loc	1 692 18                        ; ragged.py:692:18
	s_lshl_b32 s24, s6, 8
	.loc	1 691 18                        ; ragged.py:691:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 772 25                        ; ragged.py:772:25
	v_add_nc_u32_e32 v73, s10, v1
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e32 vcc_lo, s[12:13], v[2:3]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s2, s[14:15], v[2:3]
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s3, s[12:13], v[4:5]
	v_cmp_le_i64_e64 s5, s[12:13], v[6:7]
	v_cmp_le_i64_e64 s6, s[12:13], v[8:9]
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s7, s[14:15], v[4:5]
	v_cmp_gt_i64_e64 s8, s[14:15], v[6:7]
	v_cmp_gt_i64_e64 s9, s[14:15], v[8:9]
	.loc	1 772 25 is_stmt 1              ; ragged.py:772:25
	v_add_nc_u32_e32 v75, 16, v73
	v_add_nc_u32_e32 v77, 32, v73
	v_add_nc_u32_e32 v78, 48, v73
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b32 s7, s[0:1], 0x50
	s_load_b32 s6, s[0:1], 0x48
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 691 18 is_stmt 1              ; ragged.py:691:18
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v3, 63, v0
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v103, 0, v1
	v_dual_mov_b32 v92, 0 :: v_dual_lshlrev_b32 v11, 5, v0
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v9, s24, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v12, 2, v89
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v14, 1, v89
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v13, 28, v13
	.loc	1 687 20                        ; ragged.py:687:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s36, s28
	s_addc_u32 s1, s37, s29
	.loc	1 755 39                        ; ragged.py:755:39
	s_mul_i32 s7, s7, s33
	.loc	1 779 25                        ; ragged.py:779:25
	s_load_b32 s9, s[0:1], 0x0
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_u32 v1, s0, s10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s11, 0, s0
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v119, 0, v14
	v_mov_b32_e32 v95, 0
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s1, s[12:13], v[1:2]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s5, s[14:15], v[1:2]
	v_and_b32_e32 v2, 32, v11
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 0x70, v10
	v_or_b32_e32 v4, 0x300, v0
	v_or_b32_e32 v5, 0x3f0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v2, 0, v12, v2
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_or_b32_e32 v8, 0xf00, v0
	.loc	1 739 28 is_stmt 1              ; ragged.py:739:28
	v_lshrrev_b32_e32 v98, 6, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s7, s9, v[9:10]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v118, v2, v13
	.loc	1 772 25                        ; ragged.py:772:25
	v_mul_lo_u32 v99, v73, s34
	v_mul_lo_u32 v100, v75, s34
	v_mul_lo_u32 v101, v77, s34
	v_mul_lo_u32 v102, v78, s34
	.loc	1 742 19                        ; ragged.py:742:19
	v_mad_u64_u32 v[13:14], null, s33, 3, v[10:11]
	v_mad_u64_u32 v[14:15], null, s33, 5, v[10:11]
	v_mad_u64_u32 v[15:16], null, s33, 6, v[10:11]
	v_mad_u64_u32 v[16:17], null, s33, 7, v[10:11]
	v_mad_u64_u32 v[17:18], null, s33, 9, v[10:11]
	v_mad_u64_u32 v[18:19], null, s33, 10, v[10:11]
	v_mad_u64_u32 v[19:20], null, s33, 11, v[10:11]
	v_mad_u64_u32 v[20:21], null, s33, 12, v[10:11]
	v_mad_u64_u32 v[21:22], null, s33, 13, v[10:11]
	v_mad_u64_u32 v[22:23], null, s33, 14, v[10:11]
	v_mad_u64_u32 v[23:24], null, s33, 15, v[10:11]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s1, s1, s5
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s5, s34, s9
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v12, s10, v3
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v112, 0, v4
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v113, 0, v5
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v114, 0, v6
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v115, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v116, 0, v8
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v117, v103, v1
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v6, s13
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s0, s33, v9
	.loc	1 739 28                        ; ragged.py:739:28
	v_or_b32_e32 v104, 4, v98
	v_or_b32_e32 v105, 8, v98
	v_or_b32_e32 v106, 12, v98
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v107, s33, v10
	.loc	1 742 19                        ; ragged.py:742:19
	v_lshl_add_u32 v108, s33, 1, v10
	v_lshl_add_u32 v109, s33, 2, v10
	v_lshl_add_u32 v110, s33, 3, v10
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v111, 0, v0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s18
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	s_mov_b32 s36, s22
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 744 28                        ; ragged.py:744:28
	s_lshl_b32 s7, s8, 4
	.loc	1 778 40                        ; ragged.py:778:40
	s_mov_b32 s38, s30
	v_or_b32_e32 v24, s7, v98
	v_or_b32_e32 v26, s7, v104
	v_or_b32_e32 v27, s7, v105
	v_or_b32_e32 v28, s7, v106
	s_mul_i32 s9, s7, s33
	v_mad_u64_u32 v[24:25], null, v24, s6, v[12:13]
	v_mad_u64_u32 v[25:26], null, v26, s6, v[12:13]
	v_mad_u64_u32 v[26:27], null, v27, s6, v[12:13]
	v_mad_u64_u32 v[27:28], null, v28, s6, v[12:13]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	v_add_nc_u32_e32 v29, s9, v10
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	v_add_nc_u32_e32 v120, s9, v107
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	v_add_nc_u32_e32 v121, s9, v108
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	.loc	1 756 34                        ; ragged.py:756:34
	s_clause 0x3
	buffer_load_u8 v24, v24, s[16:19], 0 offen
	buffer_load_u8 v25, v25, s[16:19], 0 offen
	buffer_load_u8 v26, v26, s[16:19], 0 offen
	buffer_load_u8 v27, v27, s[16:19], 0 offen
	v_add_nc_u32_e32 v122, s9, v13
	v_add_nc_u32_e32 v123, s9, v109
	v_add_nc_u32_e32 v124, s9, v14
	v_add_nc_u32_e32 v125, s9, v15
	v_add_nc_u32_e32 v126, s9, v16
	v_add_nc_u32_e32 v127, s9, v110
	v_add_nc_u32_e32 v128, s9, v17
	v_add_nc_u32_e32 v129, s9, v18
	v_add_nc_u32_e32 v130, s9, v19
	v_add_nc_u32_e32 v131, s9, v20
	v_add_nc_u32_e32 v132, s9, v21
	v_add_nc_u32_e32 v133, s9, v22
	v_add_nc_u32_e32 v134, s9, v23
	v_cndmask_b32_e64 v28, 0x80000000, v29, s0
	v_cndmask_b32_e64 v29, 0x80000000, v120, s0
	v_cndmask_b32_e64 v120, 0x80000000, v121, s0
	v_cndmask_b32_e64 v121, 0x80000000, v122, s0
	v_cndmask_b32_e64 v122, 0x80000000, v123, s0
	v_cndmask_b32_e64 v123, 0x80000000, v124, s0
	v_cndmask_b32_e64 v124, 0x80000000, v125, s0
	v_cndmask_b32_e64 v125, 0x80000000, v126, s0
	v_cndmask_b32_e64 v126, 0x80000000, v127, s0
	v_cndmask_b32_e64 v127, 0x80000000, v128, s0
	v_cndmask_b32_e64 v128, 0x80000000, v129, s0
	v_cndmask_b32_e64 v129, 0x80000000, v130, s0
	v_cndmask_b32_e64 v130, 0x80000000, v131, s0
	v_cndmask_b32_e64 v131, 0x80000000, v132, s0
	v_cndmask_b32_e64 v132, 0x80000000, v133, s0
	v_cndmask_b32_e64 v133, 0x80000000, v134, s0
	.loc	1 757 34                        ; ragged.py:757:34
	s_clause 0xf
	buffer_load_u8 v146, v28, s[28:31], 0 offen
	buffer_load_u8 v147, v29, s[28:31], 0 offen
	buffer_load_u8 v120, v120, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v148, v124, s[28:31], 0 offen
	buffer_load_u8 v149, v125, s[28:31], 0 offen
	buffer_load_u8 v150, v126, s[28:31], 0 offen
	buffer_load_u8 v151, v127, s[28:31], 0 offen
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v131, v131, s[28:31], 0 offen
	buffer_load_u8 v152, v132, s[28:31], 0 offen
	buffer_load_u8 v153, v133, s[28:31], 0 offen
	.loc	1 756 34                        ; ragged.py:756:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 25                        ; ragged.py:779:25
	s_add_i32 s7, s8, s5
	.loc	1 778 40                        ; ragged.py:778:40
	s_mov_b32 s39, s31
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s7, s7, s33
	.loc	1 771 40                        ; ragged.py:771:40
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	.loc	1 756 34                        ; ragged.py:756:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v111, v24
	s_waitcnt vmcnt(18)
	ds_store_b8 v111, v25 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v111, v26 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v112, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 758 31                        ; ragged.py:758:31
	ds_load_u8 v24, v103 offset:320
	ds_load_u8 v25, v103 offset:256
	ds_load_u8 v134, v103 offset:336
	ds_load_u8 v135, v103 offset:272
	ds_load_u8 v126, v103 offset:352
	ds_load_u8 v127, v103 offset:288
	ds_load_u8 v124, v103 offset:368
	ds_load_u8 v125, v103 offset:304
	ds_load_u8 v26, v103 offset:448
	ds_load_u8 v27, v103 offset:384
	ds_load_u8 v138, v103 offset:464
	ds_load_u8 v139, v103 offset:400
	ds_load_u8 v144, v103 offset:480
	ds_load_u8 v145, v103 offset:416
	ds_load_u8 v132, v103 offset:496
	ds_load_u8 v133, v103 offset:432
	ds_load_u8 v28, v103 offset:64
	ds_load_u8 v29, v103
	ds_load_u8 v156, v103 offset:80
	ds_load_u8 v154, v103 offset:96
	ds_load_u8 v136, v103 offset:112
	ds_load_u8 v157, v103 offset:16
	ds_load_u8 v155, v103 offset:32
	ds_load_u8 v137, v103 offset:48
	ds_load_u8 v162, v103 offset:192
	ds_load_u8 v165, v103 offset:128
	ds_load_u8 v158, v103 offset:208
	ds_load_u8 v159, v103 offset:144
	ds_load_u8 v160, v103 offset:224
	ds_load_u8 v161, v103 offset:160
	ds_load_u8 v140, v103 offset:240
	ds_load_u8 v141, v103 offset:176
	ds_load_u8 v184, v103 offset:960
	ds_load_u8 v185, v103 offset:896
	ds_load_u8 v172, v103 offset:976
	ds_load_u8 v173, v103 offset:912
	ds_load_u8 v163, v103 offset:992
	ds_load_u8 v164, v103 offset:928
	ds_load_u8 v142, v113
	ds_load_u8 v143, v103 offset:944
	ds_load_u8 v186, v103 offset:832
	ds_load_u8 v187, v103 offset:768
	ds_load_u8 v174, v103 offset:848
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v25, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v26, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v27, v165, v162, 0xc0c0004
	ds_load_u8 v175, v103 offset:784
	ds_load_u8 v168, v103 offset:864
	ds_load_u8 v162, v103 offset:880
	ds_load_u8 v169, v103 offset:800
	v_lshl_or_b32 v29, v25, 16, v24
	v_lshl_or_b32 v28, v27, 16, v26
	ds_load_u8 v165, v103 offset:816
	ds_load_u8 v26, v103 offset:704
	ds_load_u8 v27, v103 offset:640
	ds_load_u8 v180, v103 offset:720
	ds_load_u8 v181, v103 offset:656
	ds_load_u8 v176, v103 offset:736
	ds_load_u8 v177, v103 offset:672
	ds_load_u8 v166, v103 offset:752
	ds_load_u8 v167, v103 offset:688
	ds_load_u8 v188, v103 offset:576
	ds_load_u8 v189, v103 offset:512
	ds_load_u8 v182, v103 offset:592
	ds_load_u8 v183, v103 offset:528
	ds_load_u8 v178, v103 offset:608
	ds_load_u8 v179, v103 offset:544
	ds_load_u8 v170, v103 offset:624
	ds_load_u8 v171, v103 offset:560
	.loc	1 757 34                        ; ragged.py:757:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v111, v146
	s_waitcnt vmcnt(14)
	ds_store_b8 v111, v147 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v111, v120 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v111, v122 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v111, v123 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v111, v148 offset:1536
	s_waitcnt vmcnt(7)
	ds_store_b8 v111, v150 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v111, v151 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v111, v128 offset:2560
	s_waitcnt vmcnt(3)
	ds_store_b8 v111, v130 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v111, v131 offset:3328
	ds_store_b8 v112, v121
	ds_store_b8 v114, v149
	ds_store_b8 v115, v129
	s_waitcnt vmcnt(1)
	ds_store_b8 v111, v152 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v116, v153
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 758 31                        ; ragged.py:758:31
	ds_load_u8 v24, v117 offset:1280
	ds_load_u8 v25, v117 offset:1024
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v123, v189, v188, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	v_perm_b32 v125, v133, v132, 0xc0c0004
	v_perm_b32 v132, v137, v136, 0xc0c0004
	v_perm_b32 v133, v141, v140, 0xc0c0004
	v_perm_b32 v136, v165, v162, 0xc0c0004
	v_perm_b32 v137, v143, v142, 0xc0c0004
	v_lshl_or_b32 v125, v125, 16, v124
	.loc	1 771 40                        ; ragged.py:771:40
	v_add_lshl_u32 v165, s8, v99, 1
	.loc	1 758 31                        ; ragged.py:758:31
	v_lshl_or_b32 v124, v133, 16, v132
	v_perm_b32 v132, v171, v170, 0xc0c0004
	v_perm_b32 v133, v167, v166, 0xc0c0004
	.loc	1 778 40                        ; ragged.py:778:40
	v_add_lshl_u32 v171, v9, s7, 1
	.loc	1 771 40                        ; ragged.py:771:40
	v_add_lshl_u32 v166, s8, v100, 1
	v_add_lshl_u32 v167, s8, v101, 1
	v_cndmask_b32_e64 v165, 0x80000000, v165, s4
	.loc	1 758 31                        ; ragged.py:758:31
	v_lshl_or_b32 v132, v133, 16, v132
	v_lshl_or_b32 v133, v137, 16, v136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v117 offset:1792
	ds_load_u8 v120, v117 offset:1536
	.loc	1 778 40                        ; ragged.py:778:40
	v_cndmask_b32_e64 v171, 0x80000000, v171, s0
	.loc	1 771 40                        ; ragged.py:771:40
	v_cndmask_b32_e64 v166, 0x80000000, v166, s3
	v_cndmask_b32_e64 v167, 0x80000000, v167, s2
	.loc	1 758 31                        ; ragged.py:758:31
	ds_load_u8 v27, v117 offset:3840
	ds_load_u8 v128, v117 offset:3072
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v25, v120, v25, 0xc0c0004
	ds_load_u8 v120, v117 offset:256
	ds_load_u8 v121, v117
	v_lshl_or_b32 v25, v25, 16, v24
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v117 offset:768
	ds_load_u8 v122, v117 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v117 offset:3328
	v_lshl_or_b32 v24, v121, 16, v120
	v_perm_b32 v120, v187, v186, 0xc0c0004
	v_perm_b32 v121, v185, v184, 0xc0c0004
	v_lshl_or_b32 v184, v26, 16, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[24:25], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v121, 16, v120
	ds_load_u8 v26, v117 offset:3584
	ds_load_u8 v120, v117 offset:2304
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v121, v128, v122, 0xc0c0004
	ds_load_u8 v122, v117 offset:2048
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v26, v27, 0xc0c0004
	ds_load_u8 v27, v117 offset:2816
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v120, v122, v120, 0xc0c0004
	ds_load_u8 v122, v117 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v122, v27, 0xc0c0004
	v_lshl_or_b32 v27, v26, 16, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v26, v122, 16, v120
	v_wmma_i32_16x16x16_iu4 v[146:153], v[26:27], v[184:185], v[146:153] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v131, v146
	v_cvt_f32_i32_e32 v130, v147
	.loc	1 758 31                        ; ragged.py:758:31
	ds_load_u8 v146, v117 offset:1408
	ds_load_u8 v147, v117 offset:1152
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v129, v148
	v_cvt_f32_i32_e32 v128, v149
	v_cvt_f32_i32_e32 v120, v150
	v_cvt_f32_i32_e32 v121, v151
	v_cvt_f32_i32_e32 v122, v152
	v_cvt_f32_i32_e32 v123, v153
	.loc	1 758 31                        ; ragged.py:758:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v117 offset:1920
	ds_load_u8 v148, v117 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v117 offset:384
	ds_load_u8 v149, v117 offset:128
	v_lshl_or_b32 v189, v147, 16, v146
	ds_load_u8 v146, v117 offset:3456
	ds_load_u8 v147, v117 offset:3200
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v117 offset:896
	ds_load_u8 v150, v117 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v149, 16, v148
	ds_load_u8 v147, v117 offset:3968
	ds_load_u8 v148, v117 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v117 offset:2432
	ds_load_u8 v149, v117 offset:2176
	v_lshl_or_b32 v191, v147, 16, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v117 offset:2944
	ds_load_u8 v150, v117 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v149, 16, v148
	v_wmma_i32_16x16x16_iu4 v[146:153], v[188:189], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v28, v135, v134, 0xc0c0004
	v_perm_b32 v29, v139, v138, 0xc0c0004
	v_perm_b32 v134, v157, v156, 0xc0c0004
	v_perm_b32 v135, v159, v158, 0xc0c0004
	v_perm_b32 v138, v183, v182, 0xc0c0004
	v_perm_b32 v139, v181, v180, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[146:153], v[190:191], v[184:185], v[146:153] neg_lo:[1,1,0]
	v_lshl_or_b32 v28, v135, 16, v134
	v_perm_b32 v134, v175, v174, 0xc0c0004
	v_perm_b32 v135, v173, v172, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v147, v147
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[180:187], v[24:25], v[28:29], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v135, v135, 16, v134
	v_lshl_or_b32 v134, v139, 16, v138
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[180:187], v[26:27], v[134:135], v[180:187] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v180
	v_cvt_f32_i32_e32 v193, v181
	v_cvt_f32_i32_e32 v194, v182
	v_cvt_f32_i32_e32 v195, v183
	v_cvt_f32_i32_e32 v172, v184
	v_cvt_f32_i32_e32 v173, v185
	v_cvt_f32_i32_e32 v174, v186
	v_cvt_f32_i32_e32 v175, v187
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[180:187], v[188:189], v[28:29], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v28, v127, v126, 0xc0c0004
	v_perm_b32 v29, v145, v144, 0xc0c0004
	v_perm_b32 v126, v155, v154, 0xc0c0004
	v_perm_b32 v127, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[180:187], v[190:191], v[134:135], v[180:187] neg_lo:[1,1,0]
	v_perm_b32 v144, v179, v178, 0xc0c0004
	v_lshl_or_b32 v29, v29, 16, v28
	v_perm_b32 v145, v177, v176, 0xc0c0004
	v_lshl_or_b32 v28, v127, 16, v126
	v_perm_b32 v126, v169, v168, 0xc0c0004
	v_perm_b32 v127, v164, v163, 0xc0c0004
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v156, v180
	v_cvt_f32_i32_e32 v157, v181
	v_cvt_f32_i32_e32 v158, v182
	v_cvt_f32_i32_e32 v159, v183
	.loc	1 758 31                        ; ragged.py:758:31
	v_lshl_or_b32 v127, v127, 16, v126
	v_lshl_or_b32 v126, v145, 16, v144
	v_wmma_i32_16x16x16_iu4 v[176:183], v[24:25], v[28:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v134, v184
	v_cvt_f32_i32_e32 v135, v185
	v_cvt_f32_i32_e32 v138, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[26:27], v[126:127], v[176:183] neg_lo:[1,1,0]
	.loc	1 771 40                        ; ragged.py:771:40
	v_add_lshl_u32 v168, s8, v102, 1
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v139, v187
	.loc	1 785 17                        ; ragged.py:785:17
	s_add_i32 s8, s8, 1
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v169, v176
	v_cvt_f32_i32_e32 v184, v177
	v_cvt_f32_i32_e32 v185, v178
	v_cvt_f32_i32_e32 v186, v179
	v_cvt_f32_i32_e32 v160, v180
	v_cvt_f32_i32_e32 v161, v181
	v_cvt_f32_i32_e32 v163, v182
	v_cvt_f32_i32_e32 v164, v183
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[188:189], v[28:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 771 40                        ; ragged.py:771:40
	v_cndmask_b32_e32 v168, 0x80000000, v168, vcc_lo
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lg_u32 s8, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[190:191], v[126:127], v[176:183] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v144, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v177
	v_cvt_f32_i32_e32 v154, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v155, v179
	v_cvt_f32_i32_e32 v28, v180
	v_cvt_f32_i32_e32 v29, v181
	v_cvt_f32_i32_e32 v126, v182
	v_cvt_f32_i32_e32 v127, v183
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[24:25], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[26:27], v[132:133], v[176:183] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v142, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v143, v177
	v_cvt_f32_i32_e32 v162, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v170, v179
	v_cvt_f32_i32_e32 v136, v180
	v_cvt_f32_i32_e32 v137, v181
	v_cvt_f32_i32_e32 v140, v182
	v_cvt_f32_i32_e32 v141, v183
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[188:189], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[190:191], v[132:133], v[176:183] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v124, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v125, v177
	v_cvt_f32_i32_e32 v132, v178
	.loc	1 778 40                        ; ragged.py:778:40
	buffer_load_u16 v171, v171, s[36:39], 0 offen
	.loc	1 771 40                        ; ragged.py:771:40
	s_clause 0x3
	buffer_load_u16 v165, v165, s[20:23], 0 offen
	buffer_load_u16 v176, v166, s[20:23], 0 offen
	buffer_load_u16 v177, v167, s[20:23], 0 offen
	buffer_load_u16 v178, v168, s[20:23], 0 offen
	.loc	1 783 21                        ; ragged.py:783:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v133, v179
	v_cvt_f32_i32_e32 v24, v180
	v_cvt_f32_i32_e32 v25, v181
	v_cvt_f32_i32_e32 v26, v182
	v_cvt_f32_i32_e32 v27, v183
	.loc	1 778 40                        ; ragged.py:778:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v166, 16, v171
	.loc	1 771 40                        ; ragged.py:771:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v171, 16, v165
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 783 21                        ; ragged.py:783:21
	ds_store_b32 v118, v166
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[165:168], v119
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v128, v128, v171
	v_mul_f32_e32 v129, v129, v171
	v_mul_f32_e32 v147, v147, v171
	v_mul_f32_e32 v130, v130, v171
	v_mul_f32_e32 v149, v149, v171
	v_mul_f32_e32 v131, v131, v171
	v_mul_f32_e32 v151, v151, v171
	v_dual_mul_f32 v148, v148, v171 :: v_dual_mul_f32 v29, v29, v177
	v_dual_mul_f32 v150, v150, v171 :: v_dual_mul_f32 v127, v127, v177
	v_mul_f32_e32 v153, v153, v171
	v_mul_f32_e32 v161, v161, v177
	v_mul_f32_e32 v163, v163, v177
	v_mul_f32_e32 v145, v145, v177
	v_mul_f32_e32 v155, v155, v177
	.loc	1 784 17                        ; ragged.py:784:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v95, v128, v168
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v128, v192, v176
	.loc	1 784 17                        ; ragged.py:784:17
	v_dual_fmac_f32 v96, v129, v167 :: v_dual_fmac_f32 v97, v130, v166
	v_fmac_f32_e32 v72, v131, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v81, v128, v165 :: v_dual_mul_f32 v128, v193, v176
	v_fmac_f32_e32 v80, v128, v166
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v128, v194, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 784 17                        ; ragged.py:784:17
	v_dual_fmac_f32 v79, v128, v167 :: v_dual_mul_f32 v128, v195, v176
	v_fmac_f32_e32 v76, v128, v168
	.loc	1 776 21                        ; ragged.py:776:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v128, v169, v177 :: v_dual_lshlrev_b32 v169, 16, v178
	v_mul_f32_e32 v146, v146, v171
	v_mul_f32_e32 v152, v152, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 784 17                        ; ragged.py:784:17
	v_fmac_f32_e32 v60, v128, v165
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v129, v162, v169
	v_dual_mul_f32 v128, v184, v177 :: v_dual_mul_f32 v157, v157, v176
	v_dual_mul_f32 v162, v122, v171 :: v_dual_mul_f32 v141, v141, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 784 17                        ; ragged.py:784:17
	v_dual_fmac_f32 v42, v129, v167 :: v_dual_fmac_f32 v59, v128, v166
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v128, v185, v177
	v_dual_mul_f32 v160, v160, v177 :: v_dual_mul_f32 v159, v159, v176
	v_dual_mul_f32 v136, v136, v169 :: v_dual_mul_f32 v139, v139, v176
	.loc	1 784 17                        ; ragged.py:784:17
	v_fmac_f32_e32 v58, v128, v167
	.loc	1 776 21                        ; ragged.py:776:21
	v_dual_mul_f32 v128, v186, v177 :: v_dual_mul_f32 v167, v173, v176
	v_dual_mul_f32 v137, v137, v169 :: v_dual_mul_f32 v156, v156, v176
	v_mul_f32_e32 v158, v158, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 784 17                        ; ragged.py:784:17
	v_dual_fmac_f32 v57, v128, v168 :: v_dual_mul_f32 v128, v142, v169
	.loc	1 776 21                        ; ragged.py:776:21
	v_dual_mul_f32 v142, v120, v171 :: v_dual_mul_f32 v125, v125, v169
	v_mul_f32_e32 v133, v133, v169
	v_mul_f32_e32 v173, v26, v169
	.loc	1 784 17                        ; ragged.py:784:17
	v_fmac_f32_e32 v44, v128, v165
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v128, v143, v169
	v_dual_mul_f32 v130, v170, v169 :: v_dual_mul_f32 v143, v121, v171
	v_mul_f32_e32 v165, v123, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v170, v175, v176 :: v_dual_fmac_f32 v43, v128, v166
	.loc	1 784 17                        ; ragged.py:784:17
	v_fmac_f32_e32 v41, v130, v168
	.loc	1 783 21                        ; ragged.py:783:21
	ds_load_b128 v[128:131], v119 offset:16
	ds_load_b128 v[120:123], v119 offset:512
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v166, v172, v176
	v_mul_f32_e32 v140, v140, v169
	v_mul_f32_e32 v124, v124, v169
	v_mul_f32_e32 v132, v132, v169
	v_mul_f32_e32 v171, v24, v169
	v_mul_f32_e32 v172, v25, v169
	v_mul_f32_e32 v169, v27, v169
	.loc	1 783 21                        ; ragged.py:783:21
	ds_load_b128 v[24:27], v119 offset:528
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v168, v174, v176
	v_dual_mul_f32 v164, v164, v177 :: v_dual_mul_f32 v135, v135, v176
	v_mul_f32_e32 v144, v144, v177
	v_mul_f32_e32 v154, v154, v177
	v_mul_f32_e32 v134, v134, v176
	v_mul_f32_e32 v138, v138, v176
	v_mul_f32_e32 v28, v28, v177
	v_mul_f32_e32 v126, v126, v177
	.loc	1 784 17                        ; ragged.py:784:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v94, v142, v128 :: v_dual_fmac_f32 v55, v161, v129
	v_dual_fmac_f32 v93, v143, v129 :: v_dual_fmac_f32 v92, v162, v130
	v_fmac_f32_e32 v39, v137, v129
	v_dual_fmac_f32 v91, v165, v131 :: v_dual_fmac_f32 v74, v166, v128
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v67, v157, v121
	v_dual_fmac_f32 v71, v167, v129 :: v_dual_fmac_f32 v70, v168, v130
	v_fmac_f32_e32 v51, v145, v121
	v_dual_fmac_f32 v69, v170, v131 :: v_dual_fmac_f32 v56, v160, v128
	v_dual_fmac_f32 v35, v125, v121 :: v_dual_fmac_f32 v54, v163, v130
	v_fmac_f32_e32 v33, v133, v123
	v_fmac_f32_e32 v53, v164, v131
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v40, v136, v128 :: v_dual_fmac_f32 v63, v135, v25
	v_dual_fmac_f32 v38, v140, v130 :: v_dual_fmac_f32 v61, v139, v27
	v_dual_fmac_f32 v37, v141, v131 :: v_dual_fmac_f32 v90, v146, v120
	v_dual_fmac_f32 v83, v152, v26 :: v_dual_fmac_f32 v88, v147, v121
	v_fmac_f32_e32 v11, v169, v27
	v_fmac_f32_e32 v87, v148, v122
	v_dual_fmac_f32 v68, v156, v120 :: v_dual_fmac_f32 v47, v29, v25
	v_dual_fmac_f32 v66, v158, v122 :: v_dual_fmac_f32 v45, v127, v27
	v_dual_fmac_f32 v65, v159, v123 :: v_dual_fmac_f32 v52, v144, v120
	v_dual_fmac_f32 v50, v154, v122 :: v_dual_fmac_f32 v49, v155, v123
	v_fmac_f32_e32 v36, v124, v120
	v_dual_fmac_f32 v34, v132, v122 :: v_dual_fmac_f32 v85, v150, v24
	v_dual_fmac_f32 v86, v149, v123 :: v_dual_fmac_f32 v31, v172, v25
	v_fmac_f32_e32 v84, v151, v25
	v_fmac_f32_e32 v82, v153, v27
	v_fmac_f32_e32 v64, v134, v24
	v_fmac_f32_e32 v62, v138, v26
	v_fmac_f32_e32 v48, v28, v24
	v_fmac_f32_e32 v46, v126, v26
	v_fmac_f32_e32 v32, v171, v24
	v_fmac_f32_e32 v30, v173, v26
	.loc	1 742 19                        ; ragged.py:742:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 787 9                         ; ragged.py:787:9
	v_bfe_u32 v22, v72, 16, 1
	v_bfe_u32 v23, v97, 16, 1
	v_cmp_o_f32_e64 s19, v72, v72
	v_bfe_u32 v25, v96, 16, 1
	v_cmp_o_f32_e64 s20, v97, v97
	v_add3_u32 v24, v72, v22, 0x7fff
	v_add3_u32 v23, v97, v23, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_add3_u32 v25, v96, v25, 0x7fff
	v_bfe_u32 v26, v94, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v95, 16, 1
	v_bfe_u32 v27, v93, 16, 1
	v_cmp_o_f32_e64 s19, v95, v95
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s21
	v_add3_u32 v24, v95, v24, 0x7fff
	v_add3_u32 v26, v94, v26, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	v_add3_u32 v27, v93, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v93, v93
	v_cndmask_b16 v25.h, 0x7fff, v24.h, s19
	v_bfe_u32 v24, v92, 16, 1
	v_bfe_u32 v28, v91, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s20
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s21
	v_bfe_u32 v27, v90, 16, 1
	v_add3_u32 v24, v92, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v92, v92
	v_add3_u32 v28, v91, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v91, v91
	v_bfe_u32 v29, v88, 16, 1
	v_add3_u32 v27, v90, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s19
	v_cndmask_b16 v24.h, 0x7fff, v28.h, s20
	v_bfe_u32 v28, v87, 16, 1
	v_bfe_u32 v72, v86, 16, 1
	v_add3_u32 v29, v88, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v88, v88
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v21, v73, s33
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s21
	v_add3_u32 v28, v87, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v87, v87
	v_add3_u32 v72, v86, v72, 0x7fff
	v_cmp_o_f32_e64 s21, v86, v86
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v85, 16, 1
	v_bfe_u32 v73, v84, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v20, v75, s33
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s20
	v_cndmask_b16 v28.h, 0x7fff, v72.h, s21
	v_bfe_u32 v72, v83, 16, 1
	v_add3_u32 v29, v85, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v85, v85
	v_add3_u32 v73, v84, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v84, v84
	v_bfe_u32 v75, v82, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v19, v77, s33
	.loc	1 787 9                         ; ragged.py:787:9
	v_add3_u32 v72, v83, v72, 0x7fff
	v_cmp_o_f32_e64 s21, v83, v83
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_cndmask_b16 v29.h, 0x7fff, v73.h, s20
	v_bfe_u32 v73, v81, 16, 1
	v_bfe_u32 v77, v80, 16, 1
	v_add3_u32 v75, v82, v75, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s21
	v_add3_u32 v73, v81, v73, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_add3_u32 v77, v80, v77, 0x7fff
	v_cmp_o_f32_e64 s21, v80, v80
	v_cndmask_b16 v72.h, 0x7fff, v75.h, s19
	v_bfe_u32 v75, v79, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v18, v78, s33
	.loc	1 787 9                         ; ragged.py:787:9
	v_bfe_u32 v78, v76, 16, 1
	v_cndmask_b16 v73.l, 0x7fff, v73.h, s20
	v_cndmask_b16 v73.h, 0x7fff, v77.h, s21
	v_bfe_u32 v77, v74, 16, 1
	v_add3_u32 v75, v79, v75, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v78, v76, v78, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v76, v74, v77, 0x7fff
	v_cmp_o_f32_e64 s21, v74, v74
	v_cndmask_b16 v74.l, 0x7fff, v75.h, s19
	v_bfe_u32 v75, v71, 16, 1
	v_bfe_u32 v77, v70, 16, 1
	v_cndmask_b16 v74.h, 0x7fff, v78.h, s20
	v_bfe_u32 v78, v69, 16, 1
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v75, v71, v75, 0x7fff
	v_add3_u32 v71, v70, v77, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_add3_u32 v70, v69, v78, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s21
	v_cmp_o_f32_e64 s21, v69, v69
	v_bfe_u32 v69, v68, 16, 1
	v_cndmask_b16 v70.l, 0x7fff, v71.h, s20
	v_bfe_u32 v71, v67, 16, 1
	v_cndmask_b16 v76.h, 0x7fff, v75.h, s19
	v_bfe_u32 v75, v66, 16, 1
	v_add3_u32 v69, v68, v69, 0x7fff
	v_cmp_o_f32_e64 s19, v68, v68
	v_add3_u32 v68, v67, v71, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s21
	v_add3_u32 v67, v66, v75, 0x7fff
	v_cmp_o_f32_e64 s21, v66, v66
	v_cndmask_b16 v66.l, 0x7fff, v69.h, s19
	v_bfe_u32 v69, v65, 16, 1
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s20
	v_bfe_u32 v68, v64, 16, 1
	v_bfe_u32 v71, v63, 16, 1
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v69, v65, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_add3_u32 v65, v64, v68, 0x7fff
	v_add3_u32 v64, v63, v71, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v67.h, s21
	v_cmp_o_f32_e64 s21, v63, v63
	v_bfe_u32 v63, v62, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s20
	v_bfe_u32 v65, v61, 16, 1
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s19
	v_bfe_u32 v68, v60, 16, 1
	v_add3_u32 v63, v62, v63, 0x7fff
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v62, v61, v65, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s21
	v_add3_u32 v61, v60, v68, 0x7fff
	v_cmp_o_f32_e64 s21, v60, v60
	v_cndmask_b16 v60.l, 0x7fff, v63.h, s19
	v_bfe_u32 v63, v59, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v62.h, s20
	v_bfe_u32 v62, v58, 16, 1
	v_bfe_u32 v65, v57, 16, 1
	v_cmp_o_f32_e64 s19, v59, v59
	v_add3_u32 v63, v59, v63, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_add3_u32 v59, v58, v62, 0x7fff
	v_add3_u32 v58, v57, v65, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v61.h, s21
	v_cmp_o_f32_e64 s21, v57, v57
	v_bfe_u32 v57, v56, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v59.h, s20
	v_bfe_u32 v59, v55, 16, 1
	v_cndmask_b16 v61.h, 0x7fff, v63.h, s19
	v_bfe_u32 v62, v54, 16, 1
	v_add3_u32 v57, v56, v57, 0x7fff
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v56, v55, v59, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s21
	v_add3_u32 v55, v54, v62, 0x7fff
	v_cmp_o_f32_e64 s21, v54, v54
	v_cndmask_b16 v54.l, 0x7fff, v57.h, s19
	v_bfe_u32 v57, v53, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v52, 16, 1
	v_bfe_u32 v59, v51, 16, 1
	v_cmp_o_f32_e64 s19, v53, v53
	v_add3_u32 v57, v53, v57, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_add3_u32 v53, v52, v56, 0x7fff
	v_add3_u32 v52, v51, v59, 0x7fff
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s21
	v_cmp_o_f32_e64 s21, v51, v51
	v_bfe_u32 v51, v50, 16, 1
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s20
	v_bfe_u32 v53, v49, 16, 1
	v_cndmask_b16 v55.h, 0x7fff, v57.h, s19
	v_bfe_u32 v56, v48, 16, 1
	v_add3_u32 v51, v50, v51, 0x7fff
	v_cmp_o_f32_e64 s19, v50, v50
	v_add3_u32 v50, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s21
	v_add3_u32 v49, v48, v56, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_cndmask_b16 v48.l, 0x7fff, v51.h, s19
	v_bfe_u32 v51, v47, 16, 1
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v46, 16, 1
	v_bfe_u32 v53, v45, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_add3_u32 v51, v47, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v46, v46
	v_add3_u32 v47, v46, v50, 0x7fff
	v_add3_u32 v46, v45, v53, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s21
	v_cmp_o_f32_e64 s21, v45, v45
	v_bfe_u32 v45, v44, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s19
	v_bfe_u32 v50, v42, 16, 1
	v_add3_u32 v45, v44, v45, 0x7fff
	v_cmp_o_f32_e64 s19, v44, v44
	v_add3_u32 v44, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v43, v43
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s21
	v_add3_u32 v43, v42, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v42, v42
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s19
	v_bfe_u32 v45, v41, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s20
	v_bfe_u32 v44, v40, 16, 1
	v_bfe_u32 v47, v39, 16, 1
	v_cmp_o_f32_e64 s19, v41, v41
	v_add3_u32 v45, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v41, v40, v44, 0x7fff
	v_add3_u32 v40, v39, v47, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s21
	v_cmp_o_f32_e64 s21, v39, v39
	v_bfe_u32 v39, v38, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v41.h, s20
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s19
	v_bfe_u32 v44, v36, 16, 1
	v_add3_u32 v39, v38, v39, 0x7fff
	v_cmp_o_f32_e64 s19, v38, v38
	v_add3_u32 v38, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v37, v37
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s21
	v_add3_u32 v37, v36, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v36, v36
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s19
	v_bfe_u32 v39, v35, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s20
	v_bfe_u32 v38, v34, 16, 1
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s19, v35, v35
	v_add3_u32 v39, v35, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v34, v34
	v_add3_u32 v35, v34, v38, 0x7fff
	v_add3_u32 v34, v33, v41, 0x7fff
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s21
	v_cmp_o_f32_e64 s21, v33, v33
	v_bfe_u32 v33, v32, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s20
	v_bfe_u32 v35, v31, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s19
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v33, v32, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v32, v32
	v_add3_u32 v32, v31, v35, 0x7fff
	v_bfe_u32 v35, v11, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s21
	v_cmp_o_f32_e64 s20, v31, v31
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v30, v30
	v_add3_u32 v30, v11, v35, 0x7fff
	v_cmp_o_f32_e64 s22, v11, v11
	v_cndmask_b16 v11.l, 0x7fff, v33.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v11.h, 0x7fff, v32.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v31.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v30.h, s22
	.loc	1 692 36                        ; ragged.py:692:36
	v_lshrrev_b32_e32 v1, 1, v89
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v45, v54, v61, s19
	v_cndmask_b32_e64 v47, v61, v54, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v50, v55, v58, s19
	v_cndmask_b32_e64 v51, v58, v55, s19
	v_cndmask_b32_e64 v53, v49, v52, s19
	v_cndmask_b32_e64 v49, v52, v49, s19
	v_cndmask_b32_e64 v52, v46, v48, s19
	v_cndmask_b32_e64 v46, v48, v46, s19
	v_cndmask_b32_e64 v48, v40, v42, s19
	v_cndmask_b32_e64 v40, v42, v40, s19
	v_cndmask_b32_e64 v42, v36, v43, s19
	v_cndmask_b32_e64 v36, v43, v36, s19
	v_cndmask_b32_e64 v43, v11, v37, s19
	v_cndmask_b32_e64 v11, v37, v11, s19
	v_cndmask_b32_e64 v37, v0, v34, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v34, v0, s19
	v_cndmask_b32_e64 v34, 0x1054, v54, s19
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v12, s24, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v30, v26, v23, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cndmask_b32_e64 v23, v23, v26, s19
	v_lshl_or_b32 v34, v34, 8, v34
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v17, 1, v12
	s_mov_b32 s20, 0x76543210
	.loc	1 787 9                         ; ragged.py:787:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v16, 2, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_and_b32_e32 v34, 0x540054, v34
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s18, s33, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v26, v24, v25, s19
	v_and_b32_e32 v54, 0x760076, v54
	v_cndmask_b32_e64 v24, v25, v24, s19
	v_lshl_or_b32 v34, v34, 4, v34
	v_cndmask_b32_e64 v25, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v72, v28, s19
	v_cndmask_b32_e64 v28, v28, v72, s19
	v_cndmask_b32_e64 v32, v73, v76, s19
	v_cndmask_b32_e64 v35, v74, v70, s19
	v_cndmask_b32_e64 v39, v66, v64, s19
	v_cndmask_b32_e64 v44, v67, v60, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v34, 0x5040504, v34
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s17, s33, v17
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v84, v12, v21, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s16, s33, v16
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v85, v17, v21, 1
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v15, 3, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v22.h, 0
	v_cndmask_b32_e64 v31, v76, v73, s19
	v_cndmask_b32_e64 v33, v70, v74, s19
	v_cndmask_b32_e64 v38, v64, v66, s19
	v_cndmask_b32_e64 v41, v60, v67, s19
	v_permlanex16_b32 v24, v24, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v36, v36, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v11, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v23, v30, v34
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s18, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v86, v16, v21, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s17, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v14, 4, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s16, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v13, 5, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s15, s33, v15
	.loc	1 787 9                         ; ragged.py:787:9
	v_perm_b32 v23, v23, v30, v54
	v_perm_b32 v30, v24, v26, v34
	v_perm_b32 v24, v24, v26, v54
	v_perm_b32 v26, v27, v25, v34
	v_perm_b32 v25, v27, v25, v54
	v_perm_b32 v27, v28, v29, v34
	v_perm_b32 v28, v28, v29, v54
	v_perm_b32 v29, v32, v31, v34
	v_perm_b32 v31, v32, v31, v54
	v_perm_b32 v32, v35, v33, v34
	v_perm_b32 v33, v35, v33, v54
	v_perm_b32 v35, v39, v38, v34
	v_perm_b32 v38, v39, v38, v54
	v_perm_b32 v39, v44, v41, v34
	v_perm_b32 v41, v44, v41, v54
	v_perm_b32 v44, v47, v45, v34
	v_perm_b32 v45, v47, v45, v54
	v_perm_b32 v47, v51, v50, v34
	v_perm_b32 v50, v51, v50, v54
	v_perm_b32 v51, v49, v53, v34
	v_perm_b32 v49, v49, v53, v54
	v_perm_b32 v53, v46, v52, v34
	v_perm_b32 v46, v46, v52, v54
	v_perm_b32 v52, v40, v48, v34
	v_perm_b32 v40, v40, v48, v54
	v_perm_b32 v48, v36, v42, v34
	v_perm_b32 v36, v36, v42, v54
	v_perm_b32 v42, v11, v43, v34
	v_perm_b32 v34, v0, v37, v34
	v_perm_b32 v0, v0, v37, v54
	v_mov_b16_e32 v37.l, v55.h
	v_mov_b16_e32 v37.h, v22.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v10, 6, v12
	.loc	1 787 9                         ; ragged.py:787:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v15, v21, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s14, s33, v14
	v_cmp_gt_i32_e64 s13, s33, v13
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v22.l, v23.h
	s_clause 0x1
	buffer_store_b16 v37, v85, s[20:23], 0 offen
	buffer_store_b16 v23, v86, s[20:23], 0 offen
	v_add_lshl_u32 v23, v14, v21, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s15, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v9, 7, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v37, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v13, v21, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s14, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v8, 0x80, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v84, v10, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s13, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v7, 0x81, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s12, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v6, 0x82, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_perm_b32 v11, v11, v43, v54
	v_mov_b16_e32 v54.l, v30.h
	v_mov_b16_e32 v54.h, v22.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v43.h, v22.h
	v_mov_b16_e32 v56.h, v22.h
	v_mov_b16_e32 v57.h, v22.h
	v_mov_b16_e32 v58.h, v22.h
	v_mov_b16_e32 v59.h, v22.h
	v_mov_b16_e32 v60.h, v22.h
	v_mov_b16_e32 v61.h, v22.h
	v_mov_b16_e32 v62.h, v22.h
	v_mov_b16_e32 v63.h, v22.h
	v_mov_b16_e32 v64.h, v22.h
	v_mov_b16_e32 v65.h, v22.h
	v_mov_b16_e32 v66.h, v22.h
	v_mov_b16_e32 v67.h, v22.h
	v_mov_b16_e32 v68.h, v22.h
	v_mov_b16_e32 v69.h, v22.h
	v_mov_b16_e32 v70.h, v22.h
	v_mov_b16_e32 v71.h, v22.h
	v_mov_b16_e32 v72.h, v22.h
	v_mov_b16_e32 v73.h, v22.h
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_mov_b16_e32 v76.h, v22.h
	v_mov_b16_e32 v77.h, v22.h
	v_mov_b16_e32 v78.h, v22.h
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v80.h, v22.h
	v_mov_b16_e32 v81.h, v22.h
	v_mov_b16_e32 v82.h, v22.h
	v_mov_b16_e32 v83.h, v22.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v22, v37, s[20:23], 0 offen
	buffer_store_b16 v30, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v9, v21, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v23, v8, v21, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s11, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v5, 0x83, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v43.l, v24.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v24, v84, s[20:23], 0 offen
	v_add_lshl_u32 v24, v7, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s10, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v4, 0x84, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v30, v6, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s9, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v3, 0x85, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s8, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v2, 0x86, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v57.l, v26.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v30, 0x80000000, v30, s19
	s_clause 0x1
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v5, v21, 1
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v1, 0x87, v12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v23, v4, v21, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s7, s4
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[20:23], 0 offen
	buffer_store_b16 v25, v30, s[20:23], 0 offen
	v_add_lshl_u32 v24, v3, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s6, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v56.l, v25.h
	v_add_lshl_u32 v25, v2, v21, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s5, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s1, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v59.l, v27.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v22, s[20:23], 0 offen
	buffer_store_b16 v27, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s0, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v23, v17, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s18, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v58.l, v28.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[20:23], 0 offen
	buffer_store_b16 v28, v25, s[20:23], 0 offen
	v_add_lshl_u32 v24, v16, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s17, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v61.l, v29.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s16, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v58, v21, s[20:23], 0 offen
	buffer_store_b16 v29, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v15, v20, 1
	v_add_lshl_u32 v22, v14, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s15, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[20:23], 0 offen
	buffer_store_b16 v31, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v13, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s14, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v60.l, v31.h
	v_add_lshl_u32 v24, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s13, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v63.l, v32.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s12, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v60, v21, s[20:23], 0 offen
	buffer_store_b16 v32, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v9, v20, 1
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s11, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[20:23], 0 offen
	buffer_store_b16 v33, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s10, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v62.l, v33.h
	v_add_lshl_u32 v24, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s9, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v65.l, v35.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s8, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v62, v21, s[20:23], 0 offen
	buffer_store_b16 v35, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v5, v20, 1
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s7, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[20:23], 0 offen
	buffer_store_b16 v38, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s6, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v64.l, v38.h
	v_add_lshl_u32 v24, v2, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s5, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s1, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v67.l, v39.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	s_clause 0x1
	buffer_store_b16 v64, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s0, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v17, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s18, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v66.l, v41.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[20:23], 0 offen
	buffer_store_b16 v41, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v16, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s17, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v69.l, v44.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s16, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v66, v20, s[20:23], 0 offen
	buffer_store_b16 v44, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v15, v19, 1
	v_add_lshl_u32 v21, v14, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s15, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v69, v22, s[20:23], 0 offen
	buffer_store_b16 v45, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s14, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v68.l, v45.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s13, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v71.l, v47.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s12, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v68, v20, s[20:23], 0 offen
	buffer_store_b16 v47, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s11, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v71, v22, s[20:23], 0 offen
	buffer_store_b16 v50, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s10, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v70.l, v50.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s9, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v73.l, v51.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s8, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v70, v20, s[20:23], 0 offen
	buffer_store_b16 v51, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s7, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v73, v22, s[20:23], 0 offen
	buffer_store_b16 v49, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s6, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v23, v2, v19, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s5, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v12, v12, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v72.l, v49.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v74.l, v46.h
	v_mov_b16_e32 v75.l, v53.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v17, v17, v18, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	v_add_lshl_u32 v16, v16, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x5
	buffer_store_b16 v72, v20, s[20:23], 0 offen
	buffer_store_b16 v53, v21, s[20:23], 0 offen
	buffer_store_b16 v75, v22, s[20:23], 0 offen
	buffer_store_b16 v46, v23, s[20:23], 0 offen
	buffer_store_b16 v74, v19, s[20:23], 0 offen
	buffer_store_b16 v52, v12, s[20:23], 0 offen
	v_add_lshl_u32 v12, v15, v18, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v14, v14, v18, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v13, v13, v18, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v10, v10, v18, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v9, v9, v18, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v8, v8, v18, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v7, v7, v18, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v6, v6, v18, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v5, v5, v18, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v4, v4, v18, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v3, v3, v18, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v2, v2, v18, 1
	v_add_lshl_u32 v1, v1, v18, 1
	v_mov_b16_e32 v76.l, v40.h
	v_mov_b16_e32 v77.l, v52.h
	v_mov_b16_e32 v78.l, v36.h
	v_mov_b16_e32 v79.l, v48.h
	v_mov_b16_e32 v80.l, v11.h
	v_mov_b16_e32 v81.l, v42.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v83.l, v34.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v17, s[20:23], 0 offen
	buffer_store_b16 v40, v16, s[20:23], 0 offen
	buffer_store_b16 v76, v12, s[20:23], 0 offen
	buffer_store_b16 v48, v14, s[20:23], 0 offen
	buffer_store_b16 v79, v13, s[20:23], 0 offen
	buffer_store_b16 v36, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v42, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v11, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v34, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 652 5                         ; ragged.py:652:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 112
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
		.amdhsa_next_free_vgpr 196
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11436
; TotalNumSgprs: 42
; NumVgprs: 196
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 196
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
	.short	678                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     196
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
