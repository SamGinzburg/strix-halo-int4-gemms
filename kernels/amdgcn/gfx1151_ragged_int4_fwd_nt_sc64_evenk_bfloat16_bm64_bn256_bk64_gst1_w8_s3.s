	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 652 0                         ; ragged.py:652:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x4c
	s_load_b64 s[72:73], s[0:1], 0x54
.Ltmp0:
	.loc	1 680 25 prologue_end           ; ragged.py:680:25
	s_abs_i32 s7, s2
	s_load_b256 s[40:47], s[0:1], 0x28
	.loc	1 691 18                        ; ragged.py:691:18
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:678:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:678:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v56, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
.Ltmp2:
	.loc	1 680 25 is_stmt 1              ; ragged.py:680:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v52, 0
	s_xor_b32 s4, s4, s6
	.loc	1 692 36                        ; ragged.py:692:36
	v_and_b32_e32 v74, 0xf0, v0
	.loc	1 680 25                        ; ragged.py:680:25
	s_sub_i32 s4, s4, s6
	s_mov_b32 s48, 0
	.loc	1 682 33                        ; ragged.py:682:33
	s_sub_i32 s5, s73, s4
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
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s40, s12
	s_addc_u32 s3, s41, s13
	s_load_b64 s[50:51], s[2:3], 0x0
	.loc	1 689 24                        ; ragged.py:689:24
	s_add_u32 s2, s42, s12
	s_addc_u32 s3, s43, s13
	.loc	1 690 22                        ; ragged.py:690:22
	s_add_u32 s4, s44, s12
	s_addc_u32 s5, s45, s13
	.loc	1 689 24                        ; ragged.py:689:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 690 22                        ; ragged.py:690:22
	s_load_b64 s[18:19], s[4:5], 0x0
	.loc	1 692 18                        ; ragged.py:692:18
	s_lshl_b32 s45, s6, 8
	.loc	1 691 18                        ; ragged.py:691:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s50, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s51, 0, s2
	.loc	1 772 25                        ; ragged.py:772:25
	v_add_nc_u32_e32 v55, s50, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	.loc	1 772 25 is_stmt 1              ; ragged.py:772:25
	v_add_nc_u32_e32 v57, 16, v55
	v_add_nc_u32_e32 v58, 32, v55
	v_add_nc_u32_e32 v59, 48, v55
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lt_i32 s72, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 691 32                        ; ragged.py:691:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s67, s[0:1], 0x50
	s_load_b256 s[52:59], s[0:1], 0x0
	.loc	1 691 18 is_stmt 0              ; ragged.py:691:18
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v19, 0xe0, v0
	v_add_co_u32 v2, s0, s50, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s51, 0, s0
	.loc	1 692 18 is_stmt 1              ; ragged.py:692:18
	v_or_b32_e32 v20, s45, v18
	.loc	1 691 18                        ; ragged.py:691:18
	v_add_co_u32 v4, s0, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, s0
	v_add_co_u32 v6, s0, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, s0
	v_add_co_u32 v8, s0, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, s0
	v_add_co_u32 v10, s0, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, s0
	v_add_co_u32 v12, s0, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, s0
	v_add_co_u32 v14, s0, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, s0
	v_add_co_u32 v16, s0, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, s0
	.loc	1 687 20                        ; ragged.py:687:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s34, s6, s12
	s_addc_u32 s35, s7, s13
	.loc	1 693 21                        ; ragged.py:693:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	v_cmp_le_i64_e64 s1, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	v_cmp_le_i64_e64 s7, s[10:11], v[10:11]
	v_cmp_le_i64_e64 s8, s[10:11], v[12:13]
	v_cmp_le_i64_e64 s9, s[10:11], v[14:15]
	v_cmp_le_i64_e64 s10, s[10:11], v[16:17]
	.loc	1 693 48 is_stmt 0              ; ragged.py:693:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[2:3]
	v_dual_mov_b32 v101, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_bfe_i32 v3, v0, 7, 1
	.loc	1 779 25 is_stmt 1              ; ragged.py:779:25
	s_load_b32 s49, s[34:35], 0x0
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s12, s[18:19], v[4:5]
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v5, 24, v2
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v64, 28, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v108, v1, 5, v5
	v_xor_b32_e32 v109, v3, v4
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v3, s50, v18
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v4, 2, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 32, v1
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v2, 8, v3
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v5, 16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v65, 0, v4, v1
	v_mul_lo_u32 v112, v2, s67
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v1, 24, v3
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v2, 32, v3
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v21, 8, v20
	.loc	1 753 39                        ; ragged.py:753:39
	s_mul_i32 s51, s67, s74
	v_mul_lo_u32 v111, v3, s67
	v_mul_lo_u32 v113, v5, s67
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, 40, v3
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v5, 48, v3
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v3, 56, v3
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v22, 16, v20
	v_or_b32_e32 v23, 24, v20
	.loc	1 753 39                        ; ragged.py:753:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s66, s51, s49
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v24, 32, v20
	v_or_b32_e32 v25, 40, v20
	v_mul_lo_u32 v114, v1, s67
	v_mul_lo_u32 v115, v2, s67
	v_mad_u64_u32 v[1:2], null, v20, s67, s[66:67]
	v_or_b32_e32 v26, 48, v20
	v_mul_lo_u32 v118, v3, s67
	v_mad_u64_u32 v[2:3], null, v21, s67, s[66:67]
	v_or_b32_e32 v27, 56, v20
	v_mul_lo_u32 v116, v4, s67
	v_mad_u64_u32 v[3:4], null, v22, s67, s[66:67]
	v_or_b32_e32 v28, 64, v20
	v_mul_lo_u32 v117, v5, s67
	v_mad_u64_u32 v[4:5], null, v23, s67, s[66:67]
	v_or_b32_e32 v29, 0x48, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s13, s[18:19], v[6:7]
	v_mad_u64_u32 v[5:6], null, v24, s67, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v30, 0x50, v20
	v_mad_u64_u32 v[6:7], null, v25, s67, s[66:67]
	v_or_b32_e32 v31, 0x58, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s14, s[18:19], v[8:9]
	v_mad_u64_u32 v[7:8], null, v26, s67, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v32, 0x60, v20
	v_mad_u64_u32 v[8:9], null, v27, s67, s[66:67]
	v_or_b32_e32 v33, 0x68, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s15, s[18:19], v[10:11]
	v_mad_u64_u32 v[9:10], null, s67, v28, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v34, 0x70, v20
	v_mad_u64_u32 v[10:11], null, s67, v29, s[66:67]
	v_or_b32_e32 v35, 0x78, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s16, s[18:19], v[12:13]
	v_mad_u64_u32 v[11:12], null, s67, v30, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v36, 0x80, v20
	v_mad_u64_u32 v[12:13], null, s67, v31, s[66:67]
	v_or_b32_e32 v37, 0x88, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s17, s[18:19], v[14:15]
	v_mad_u64_u32 v[13:14], null, s67, v32, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v38, 0x90, v20
	v_mad_u64_u32 v[14:15], null, s67, v33, s[66:67]
	v_or_b32_e32 v39, 0x98, v20
	.loc	1 693 48                        ; ragged.py:693:48
	v_cmp_gt_i64_e64 s18, s[18:19], v[16:17]
	v_mad_u64_u32 v[15:16], null, s67, v34, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v40, 0xa0, v20
	v_mad_u64_u32 v[16:17], null, s67, v35, s[66:67]
	v_or_b32_e32 v41, 0xa8, v20
	v_mad_u64_u32 v[17:18], null, s67, v36, s[66:67]
	v_or_b32_e32 v42, 0xb0, v20
	v_lshl_or_b32 v110, v19, 4, v108
	v_mad_u64_u32 v[18:19], null, s67, v37, s[66:67]
	v_or_b32_e32 v43, 0xb8, v20
	v_or_b32_e32 v44, 0xc0, v20
	v_or_b32_e32 v45, 0xc8, v20
	v_or_b32_e32 v46, 0xd0, v20
	v_or_b32_e32 v47, 0xd8, v20
	v_or_b32_e32 v48, 0xe0, v20
	v_or_b32_e32 v49, 0xe8, v20
	v_or_b32_e32 v50, 0xf0, v20
	v_or_b32_e32 v51, 0xf8, v20
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s0, s0, s11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s11, s74, v20
	v_mad_u64_u32 v[19:20], null, s67, v38, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s1, s1, s12
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s12, s74, v21
	v_mad_u64_u32 v[20:21], null, s67, v39, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s5, s5, s13
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s13, s74, v22
	v_mad_u64_u32 v[21:22], null, s67, v40, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s6, s6, s14
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s14, s74, v23
	v_mad_u64_u32 v[22:23], null, s67, v41, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s7, s7, s15
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s15, s74, v24
	v_mad_u64_u32 v[23:24], null, s67, v42, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s8, s8, s16
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s16, s74, v25
	v_mad_u64_u32 v[24:25], null, s67, v43, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s9, s9, s17
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s17, s74, v26
	v_mad_u64_u32 v[25:26], null, s67, v44, s[66:67]
	.loc	1 693 20                        ; ragged.py:693:20
	s_and_b32 s10, s10, s18
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s18, s74, v27
	v_mad_u64_u32 v[26:27], null, s67, v45, s[66:67]
	v_cmp_gt_i32_e64 s19, s74, v28
	v_mad_u64_u32 v[27:28], null, s67, v46, s[66:67]
	v_cmp_gt_i32_e64 s20, s74, v29
	v_mad_u64_u32 v[28:29], null, s67, v47, s[66:67]
	v_cmp_gt_i32_e64 s21, s74, v30
	v_mad_u64_u32 v[29:30], null, s67, v48, s[66:67]
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v102, s45, v0
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s22, s74, v31
	v_xor_b32_e32 v53, 0x110, v109
	v_xor_b32_e32 v54, 8, v108
	v_xor_b32_e32 v56, 16, v108
	v_xor_b32_e32 v60, 24, v108
	v_xor_b32_e32 v61, 8, v110
	v_xor_b32_e32 v62, 16, v110
	v_xor_b32_e32 v63, 24, v110
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v66, 1, v74
	v_mad_u64_u32 v[30:31], null, s67, v49, s[66:67]
	v_cmp_gt_i32_e64 s23, s74, v32
	v_mad_u64_u32 v[31:32], null, s67, v50, s[66:67]
	v_cmp_gt_i32_e64 s24, s74, v33
	.loc	1 772 25                        ; ragged.py:772:25
	v_mul_lo_u32 v104, v55, s72
	v_mul_lo_u32 v105, v57, s72
	v_mul_lo_u32 v106, v58, s72
	v_mul_lo_u32 v107, v59, s72
	v_mad_u64_u32 v[32:33], null, s67, v51, s[66:67]
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s25, s74, v34
	v_cmp_gt_i32_e64 s26, s74, v35
	v_cmp_gt_i32_e64 s27, s74, v36
	v_cmp_gt_i32_e64 s28, s74, v37
	v_cmp_gt_i32_e64 s29, s74, v38
	v_cmp_gt_i32_e64 s30, s74, v39
	v_cmp_gt_i32_e64 s31, s74, v40
	v_cmp_gt_i32_e64 s33, s74, v41
	v_cmp_gt_i32_e64 s34, s74, v42
	v_cmp_gt_i32_e64 s35, s74, v43
	v_cmp_gt_i32_e64 s36, s74, v44
	v_cmp_gt_i32_e64 s37, s74, v45
	v_cmp_gt_i32_e64 s38, s74, v46
	v_cmp_gt_i32_e64 s39, s74, v47
	v_cmp_gt_i32_e64 s40, s74, v48
	v_cmp_gt_i32_e64 s41, s74, v49
	v_cmp_gt_i32_e64 s42, s74, v50
	v_cmp_gt_i32_e64 s43, s74, v51
	v_cmp_gt_i32_e64 s44, s74, v102
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v103, 31, v0
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v119, v65, v64
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v120, 0, v53
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v121, 0, v54
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v122, 0, v56
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v123, 0, v60
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v124, 0, v61
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v125, 0, v62
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v126, 0, v63
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v127, 0, v66
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v33, 0
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s73, s72, s49
	s_and_b32 s61, s53, 0xffff
	s_mov_b32 s60, s52
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s65, s55, 0xffff
	s_mov_b32 s64, s54
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s69, s59, 0xffff
	s_mov_b32 s68, s58
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s75, s48
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	v_lshl_or_b32 v128, s75, 5, v103
	.loc	1 757 34 is_stmt 1              ; ragged.py:757:34
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	.loc	1 771 40                        ; ragged.py:771:40
	s_mov_b32 s58, s62
	s_mov_b32 s59, s63
	v_add_nc_u32_e32 v129, v111, v128
	v_add_nc_u32_e32 v131, v113, v128
	v_add_nc_u32_e32 v133, v115, v128
	v_add_nc_u32_e32 v134, v116, v128
	v_add_nc_u32_e32 v136, v118, v128
	v_add_nc_u32_e32 v130, v112, v128
	v_add_nc_u32_e32 v132, v114, v128
	v_add_nc_u32_e32 v135, v117, v128
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v168, 0x80000000, v131, s5
	v_cndmask_b32_e64 v169, 0x80000000, v133, s7
	v_cndmask_b32_e64 v170, 0x80000000, v134, s8
	v_cndmask_b32_e64 v171, 0x80000000, v136, s10
	v_add_nc_u32_e32 v131, v1, v128
	v_add_nc_u32_e32 v133, v2, v128
	v_add_nc_u32_e32 v134, v3, v128
	v_add_nc_u32_e32 v136, v4, v128
	v_add_nc_u32_e32 v137, v5, v128
	v_add_nc_u32_e32 v138, v6, v128
	v_add_nc_u32_e32 v139, v7, v128
	v_add_nc_u32_e32 v140, v8, v128
	v_add_nc_u32_e32 v141, v9, v128
	v_add_nc_u32_e32 v142, v10, v128
	v_add_nc_u32_e32 v143, v11, v128
	v_add_nc_u32_e32 v144, v12, v128
	v_add_nc_u32_e32 v145, v13, v128
	v_add_nc_u32_e32 v146, v14, v128
	v_add_nc_u32_e32 v147, v15, v128
	v_add_nc_u32_e32 v148, v16, v128
	v_add_nc_u32_e32 v149, v17, v128
	v_add_nc_u32_e32 v151, v18, v128
	v_add_nc_u32_e32 v172, v19, v128
	v_add_nc_u32_e32 v173, v20, v128
	v_add_nc_u32_e32 v174, v21, v128
	v_add_nc_u32_e32 v175, v22, v128
	v_add_nc_u32_e32 v176, v23, v128
	v_add_nc_u32_e32 v177, v24, v128
	v_add_nc_u32_e32 v178, v25, v128
	v_add_nc_u32_e32 v179, v26, v128
	v_add_nc_u32_e32 v180, v27, v128
	v_add_nc_u32_e32 v181, v28, v128
	v_add_nc_u32_e32 v182, v29, v128
	v_add_nc_u32_e32 v183, v30, v128
	v_add_nc_u32_e32 v184, v31, v128
	v_add_nc_u32_e32 v128, v32, v128
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	v_cndmask_b32_e64 v132, 0x80000000, v132, s6
	v_cndmask_b32_e64 v135, 0x80000000, v135, s9
	v_cndmask_b32_e64 v166, 0x80000000, v131, s11
	v_cndmask_b32_e64 v167, 0x80000000, v133, s12
	v_cndmask_b32_e64 v164, 0x80000000, v134, s13
	v_cndmask_b32_e64 v165, 0x80000000, v136, s14
	v_cndmask_b32_e64 v136, 0x80000000, v128, s43
	.loc	1 756 34                        ; ragged.py:756:34
	s_clause 0x7
	buffer_load_u8 v131, v129, s[60:63], 0 offen
	buffer_load_u8 v128, v130, s[60:63], 0 offen
	buffer_load_u8 v133, v168, s[60:63], 0 offen
	buffer_load_u8 v129, v132, s[60:63], 0 offen
	buffer_load_u8 v134, v169, s[60:63], 0 offen
	buffer_load_u8 v130, v170, s[60:63], 0 offen
	buffer_load_u8 v135, v135, s[60:63], 0 offen
	buffer_load_u8 v132, v171, s[60:63], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v137, s15
	v_cndmask_b32_e64 v163, 0x80000000, v138, s16
	v_cndmask_b32_e64 v160, 0x80000000, v139, s17
	v_cndmask_b32_e64 v161, 0x80000000, v140, s18
	v_cndmask_b32_e64 v158, 0x80000000, v141, s19
	v_cndmask_b32_e64 v159, 0x80000000, v142, s20
	v_cndmask_b32_e64 v156, 0x80000000, v143, s21
	v_cndmask_b32_e64 v157, 0x80000000, v144, s22
	v_cndmask_b32_e64 v154, 0x80000000, v145, s23
	v_cndmask_b32_e64 v155, 0x80000000, v146, s24
	v_cndmask_b32_e64 v152, 0x80000000, v147, s25
	v_cndmask_b32_e64 v153, 0x80000000, v148, s26
	v_cndmask_b32_e64 v150, 0x80000000, v149, s27
	v_cndmask_b32_e64 v151, 0x80000000, v151, s28
	v_cndmask_b32_e64 v148, 0x80000000, v172, s29
	v_cndmask_b32_e64 v149, 0x80000000, v173, s30
	v_cndmask_b32_e64 v146, 0x80000000, v174, s31
	v_cndmask_b32_e64 v147, 0x80000000, v175, s33
	v_cndmask_b32_e64 v144, 0x80000000, v176, s34
	v_cndmask_b32_e64 v145, 0x80000000, v177, s35
	v_cndmask_b32_e64 v142, 0x80000000, v178, s36
	v_cndmask_b32_e64 v143, 0x80000000, v179, s37
	v_cndmask_b32_e64 v140, 0x80000000, v180, s38
	v_cndmask_b32_e64 v141, 0x80000000, v181, s39
	v_cndmask_b32_e64 v138, 0x80000000, v182, s40
	v_cndmask_b32_e64 v139, 0x80000000, v183, s41
	v_cndmask_b32_e64 v137, 0x80000000, v184, s42
	.loc	1 757 34                        ; ragged.py:757:34
	s_clause 0x1f
	buffer_load_u8 v183, v166, s[64:67], 0 offen
	buffer_load_u8 v166, v167, s[64:67], 0 offen
	buffer_load_u8 v184, v164, s[64:67], 0 offen
	buffer_load_u8 v164, v165, s[64:67], 0 offen
	buffer_load_u8 v165, v162, s[64:67], 0 offen
	buffer_load_u8 v162, v163, s[64:67], 0 offen
	buffer_load_u8 v160, v160, s[64:67], 0 offen
	buffer_load_u8 v161, v161, s[64:67], 0 offen
	buffer_load_u8 v158, v158, s[64:67], 0 offen
	buffer_load_u8 v159, v159, s[64:67], 0 offen
	buffer_load_u8 v156, v156, s[64:67], 0 offen
	buffer_load_u8 v157, v157, s[64:67], 0 offen
	buffer_load_u8 v154, v154, s[64:67], 0 offen
	buffer_load_u8 v155, v155, s[64:67], 0 offen
	buffer_load_u8 v152, v152, s[64:67], 0 offen
	buffer_load_u8 v153, v153, s[64:67], 0 offen
	buffer_load_u8 v150, v150, s[64:67], 0 offen
	buffer_load_u8 v151, v151, s[64:67], 0 offen
	buffer_load_u8 v148, v148, s[64:67], 0 offen
	buffer_load_u8 v149, v149, s[64:67], 0 offen
	buffer_load_u8 v146, v146, s[64:67], 0 offen
	buffer_load_u8 v147, v147, s[64:67], 0 offen
	buffer_load_u8 v144, v144, s[64:67], 0 offen
	buffer_load_u8 v145, v145, s[64:67], 0 offen
	buffer_load_u8 v142, v142, s[64:67], 0 offen
	buffer_load_u8 v143, v143, s[64:67], 0 offen
	buffer_load_u8 v140, v140, s[64:67], 0 offen
	buffer_load_u8 v141, v141, s[64:67], 0 offen
	buffer_load_u8 v138, v138, s[64:67], 0 offen
	buffer_load_u8 v139, v139, s[64:67], 0 offen
	buffer_load_u8 v137, v137, s[64:67], 0 offen
	buffer_load_u8 v136, v136, s[64:67], 0 offen
	.loc	1 756 34                        ; ragged.py:756:34
	v_add_nc_u32_e32 v163, 0, v109
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 778 40                        ; ragged.py:778:40
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	.loc	1 756 34                        ; ragged.py:756:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v163, v131
	s_waitcnt vmcnt(37)
	ds_store_b8 v163, v133 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v163, v134 offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b8 v163, v135 offset:1536
	ds_store_b8 v120, v128
	ds_store_b8 v120, v129 offset:512
	ds_store_b8 v120, v130 offset:1024
	s_waitcnt vmcnt(32)
	ds_store_b8 v120, v132 offset:1536
	v_add_nc_u32_e32 v128, 0, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[167:170], v128 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v128 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[171:174], v121 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v121 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[175:178], v122 offset1:1
	ds_load_2addr_stride64_b64 v[206:209], v122 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[179:182], v123 offset1:1
	ds_load_2addr_stride64_b64 v[210:213], v123 offset0:2 offset1:3
	.loc	1 757 34                        ; ragged.py:757:34
	v_add_nc_u32_e32 v128, 0, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v163, v183
	s_waitcnt vmcnt(29)
	ds_store_b8 v163, v184 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v163, v165 offset:1024
	s_waitcnt vmcnt(25)
	ds_store_b8 v163, v160 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v163, v158 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b8 v163, v156 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v163, v154 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b8 v163, v152 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v163, v150 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b8 v163, v148 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v163, v146 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b8 v163, v144 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v163, v142 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b8 v163, v140 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v163, v138 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v163, v137 offset:7680
	ds_store_b8 v120, v166
	ds_store_b8 v120, v164 offset:512
	ds_store_b8 v120, v162 offset:1024
	ds_store_b8 v120, v161 offset:1536
	ds_store_b8 v120, v159 offset:2048
	ds_store_b8 v120, v157 offset:2560
	ds_store_b8 v120, v155 offset:3072
	ds_store_b8 v120, v153 offset:3584
	ds_store_b8 v120, v151 offset:4096
	ds_store_b8 v120, v149 offset:4608
	ds_store_b8 v120, v147 offset:5120
	ds_store_b8 v120, v145 offset:5632
	ds_store_b8 v120, v143 offset:6144
	ds_store_b8 v120, v141 offset:6656
	ds_store_b8 v120, v139 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v120, v136 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[214:217], v128 offset1:8
	ds_load_2addr_stride64_b64 v[218:221], v124 offset1:8
	ds_load_2addr_stride64_b64 v[222:225], v125 offset1:8
	ds_load_2addr_stride64_b64 v[226:229], v126 offset1:8
	.loc	1 758 31                        ; ragged.py:758:31
	v_dual_mov_b32 v135, s55 :: v_dual_mov_b32 v134, s54
	v_dual_mov_b32 v133, s53 :: v_dual_mov_b32 v132, s52
	v_dual_mov_b32 v131, s51 :: v_dual_mov_b32 v130, s50
	v_dual_mov_b32 v129, s49 :: v_dual_mov_b32 v128, s48
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[214:215], v[167:168], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[216:217], v[167:168], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[214:215], v[169:170], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[216:217], v[169:170], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[218:219], v[171:172], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[220:221], v[171:172], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[218:219], v[173:174], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[220:221], v[173:174], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[214:215], v[200:201], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[222:223], v[175:176], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[224:225], v[175:176], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[222:223], v[177:178], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[224:225], v[177:178], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[214:215], v[198:199], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[226:227], v[179:180], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[228:229], v[179:180], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[226:227], v[181:182], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[228:229], v[181:182], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[216:217], v[198:199], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[216:217], v[200:201], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[218:219], v[202:203], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[220:221], v[202:203], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[218:219], v[204:205], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[220:221], v[204:205], v[192:199] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v128, v136
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[222:223], v[206:207], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[224:225], v[206:207], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[222:223], v[208:209], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[224:225], v[208:209], v[192:199] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v129, v137
	.loc	1 758 31                        ; ragged.py:758:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[226:227], v[210:211], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[228:229], v[210:211], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[226:227], v[212:213], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[228:229], v[212:213], v[192:199] neg_lo:[1,1,0]
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v130, v138
	v_cvt_f32_i32_e32 v131, v139
	v_cvt_f32_i32_e32 v136, v144
	v_cvt_f32_i32_e32 v137, v145
	v_cvt_f32_i32_e32 v138, v146
	v_cvt_f32_i32_e32 v139, v147
	v_cvt_f32_i32_e32 v144, v152
	v_cvt_f32_i32_e32 v145, v153
	v_cvt_f32_i32_e32 v146, v154
	v_cvt_f32_i32_e32 v147, v155
	v_cvt_f32_i32_e32 v152, v160
	v_cvt_f32_i32_e32 v153, v161
	v_cvt_f32_i32_e32 v154, v162
	v_cvt_f32_i32_e32 v155, v163
	v_cvt_f32_i32_e32 v160, v168
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v163, v171
	v_cvt_f32_i32_e32 v168, v176
	v_cvt_f32_i32_e32 v169, v177
	v_cvt_f32_i32_e32 v170, v178
	v_cvt_f32_i32_e32 v171, v179
	v_cvt_f32_i32_e32 v176, v184
	v_cvt_f32_i32_e32 v177, v185
	v_cvt_f32_i32_e32 v178, v186
	v_cvt_f32_i32_e32 v179, v187
	v_cvt_f32_i32_e32 v184, v192
	v_cvt_f32_i32_e32 v185, v193
	v_cvt_f32_i32_e32 v186, v194
	v_cvt_f32_i32_e32 v187, v195
	.loc	1 771 40                        ; ragged.py:771:40
	v_add_lshl_u32 v192, s75, v104, 1
	v_add_lshl_u32 v193, s75, v105, 1
	v_add_lshl_u32 v194, s75, v106, 1
	v_add_lshl_u32 v195, s75, v107, 1
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v132, v140
	.loc	1 771 40                        ; ragged.py:771:40
	v_cndmask_b32_e64 v192, 0x80000000, v192, s4
	v_cndmask_b32_e64 v193, 0x80000000, v193, s3
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	v_cndmask_b32_e32 v195, 0x80000000, v195, vcc_lo
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v140, v148
	.loc	1 771 40                        ; ragged.py:771:40
	s_clause 0x3
	buffer_load_u16 v192, v192, s[56:59], 0 offen
	buffer_load_u16 v193, v193, s[56:59], 0 offen
	buffer_load_u16 v194, v194, s[56:59], 0 offen
	buffer_load_u16 v195, v195, s[56:59], 0 offen
	.loc	1 779 25                        ; ragged.py:779:25
	s_add_i32 s58, s75, s73
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v148, v156
	.loc	1 779 25                        ; ragged.py:779:25
	s_mul_i32 s58, s58, s74
	.loc	1 769 27                        ; ragged.py:769:27
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v172, v180
	v_cvt_f32_i32_e32 v180, v188
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v135, v143
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v159, v167
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v175, v183
	v_cvt_f32_i32_e32 v183, v191
	v_cvt_f32_i32_e32 v191, v199
	v_cvt_f32_i32_e32 v133, v141
	v_cvt_f32_i32_e32 v134, v142
	v_cvt_f32_i32_e32 v141, v149
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v158, v166
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v173, v181
	v_cvt_f32_i32_e32 v174, v182
	v_cvt_f32_i32_e32 v181, v189
	v_cvt_f32_i32_e32 v182, v190
	v_cvt_f32_i32_e32 v189, v197
	v_cvt_f32_i32_e32 v190, v198
	.loc	1 785 17                        ; ragged.py:785:17
	s_add_i32 s75, s75, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 742 19                        ; ragged.py:742:19
	s_cmp_lg_u32 s75, s72
	.loc	1 771 40                        ; ragged.py:771:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v195, 16, v195
	.loc	1 776 21                        ; ragged.py:776:21
	v_dual_mul_f32 v177, v177, v195 :: v_dual_lshlrev_b32 v192, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v196, v128, v192
	.loc	1 778 40                        ; ragged.py:778:40
	v_add_lshl_u32 v128, v102, s58, 1
	.loc	1 776 21                        ; ragged.py:776:21
	v_dual_mul_f32 v200, v132, v192 :: v_dual_lshlrev_b32 v193, 16, v193
	v_mul_f32_e32 v198, v130, v192
	v_dual_mul_f32 v199, v131, v192 :: v_dual_lshlrev_b32 v194, 16, v194
	.loc	1 778 40                        ; ragged.py:778:40
	v_cndmask_b32_e64 v128, 0x80000000, v128, s44
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v197, v129, v192
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v201, v133, v192 :: v_dual_mul_f32 v174, v174, v194
	v_dual_mul_f32 v202, v134, v192 :: v_dual_mul_f32 v179, v179, v195
	.loc	1 778 40                        ; ragged.py:778:40
	buffer_load_u16 v128, v128, s[68:71], 0 offen
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v191, v191, v195
	v_dual_mul_f32 v203, v135, v192 :: v_dual_mul_f32 v178, v178, v195
	v_dual_mul_f32 v204, v136, v192 :: v_dual_mul_f32 v181, v181, v195
	v_dual_mul_f32 v205, v137, v192 :: v_dual_mul_f32 v180, v180, v195
	v_dual_mul_f32 v206, v138, v192 :: v_dual_mul_f32 v183, v183, v195
	v_dual_mul_f32 v207, v139, v192 :: v_dual_mul_f32 v182, v182, v195
	v_dual_mul_f32 v208, v140, v192 :: v_dual_mul_f32 v185, v185, v195
	v_dual_mul_f32 v209, v141, v192 :: v_dual_mul_f32 v184, v184, v195
	v_dual_mul_f32 v210, v142, v192 :: v_dual_mul_f32 v187, v187, v195
	v_dual_mul_f32 v192, v143, v192 :: v_dual_mul_f32 v189, v189, v195
	.loc	1 783 21                        ; ragged.py:783:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v144, v144, v193
	v_mul_f32_e32 v145, v145, v193
	v_mul_f32_e32 v146, v146, v193
	v_mul_f32_e32 v147, v147, v193
	v_mul_f32_e32 v148, v148, v193
	v_mul_f32_e32 v149, v149, v193
	v_mul_f32_e32 v150, v150, v193
	v_mul_f32_e32 v151, v151, v193
	v_mul_f32_e32 v152, v152, v193
	v_mul_f32_e32 v153, v153, v193
	v_mul_f32_e32 v154, v154, v193
	v_mul_f32_e32 v155, v155, v193
	v_mul_f32_e32 v156, v156, v193
	v_mul_f32_e32 v157, v157, v193
	v_mul_f32_e32 v158, v158, v193
	v_dual_mul_f32 v159, v159, v193 :: v_dual_mul_f32 v160, v160, v194
	v_mul_f32_e32 v161, v161, v194
	v_mul_f32_e32 v162, v162, v194
	v_mul_f32_e32 v163, v163, v194
	v_mul_f32_e32 v164, v164, v194
	v_mul_f32_e32 v165, v165, v194
	v_mul_f32_e32 v166, v166, v194
	v_mul_f32_e32 v167, v167, v194
	v_mul_f32_e32 v168, v168, v194
	v_mul_f32_e32 v169, v169, v194
	v_mul_f32_e32 v170, v170, v194
	v_mul_f32_e32 v171, v171, v194
	v_mul_f32_e32 v172, v172, v194
	v_mul_f32_e32 v173, v173, v194
	v_dual_mul_f32 v175, v175, v194 :: v_dual_mul_f32 v176, v176, v195
	.loc	1 778 40                        ; ragged.py:778:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 783 21                        ; ragged.py:783:21
	ds_store_b32 v119, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[128:131], v127
	ds_load_b128 v[132:135], v127 offset:16
	ds_load_b128 v[136:139], v127 offset:512
	ds_load_b128 v[140:143], v127 offset:528
	.loc	1 776 21                        ; ragged.py:776:21
	v_mul_f32_e32 v186, v186, v195
	v_mul_f32_e32 v188, v188, v195
	v_mul_f32_e32 v190, v190, v195
	.loc	1 784 17                        ; ragged.py:784:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v52, v196, v128 :: v_dual_fmac_f32 v99, v199, v131
	v_dual_fmac_f32 v101, v197, v129 :: v_dual_fmac_f32 v100, v198, v130
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v95, v203, v135 :: v_dual_fmac_f32 v98, v200, v132
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v91, v207, v139
	v_dual_fmac_f32 v97, v201, v133 :: v_dual_fmac_f32 v96, v202, v134
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v89, v209, v141 :: v_dual_fmac_f32 v94, v204, v136
	v_fmac_f32_e32 v85, v145, v129
	v_dual_fmac_f32 v93, v205, v137 :: v_dual_fmac_f32 v92, v206, v138
	v_fmac_f32_e32 v87, v192, v143
	v_dual_fmac_f32 v90, v208, v140 :: v_dual_fmac_f32 v83, v147, v131
	v_dual_fmac_f32 v88, v210, v142 :: v_dual_fmac_f32 v81, v149, v133
	v_dual_fmac_f32 v86, v144, v128 :: v_dual_fmac_f32 v79, v151, v135
	v_dual_fmac_f32 v84, v146, v130 :: v_dual_fmac_f32 v77, v153, v137
	v_dual_fmac_f32 v82, v148, v132 :: v_dual_fmac_f32 v75, v155, v139
	v_dual_fmac_f32 v80, v150, v134 :: v_dual_fmac_f32 v73, v156, v140
	v_dual_fmac_f32 v78, v152, v136 :: v_dual_fmac_f32 v71, v158, v142
	v_dual_fmac_f32 v76, v154, v138 :: v_dual_fmac_f32 v69, v160, v128
	v_dual_fmac_f32 v72, v157, v141 :: v_dual_fmac_f32 v67, v162, v130
	v_dual_fmac_f32 v70, v159, v143 :: v_dual_fmac_f32 v65, v164, v132
	v_dual_fmac_f32 v68, v161, v129 :: v_dual_fmac_f32 v63, v166, v134
	v_dual_fmac_f32 v66, v163, v131 :: v_dual_fmac_f32 v61, v168, v136
	v_dual_fmac_f32 v64, v165, v133 :: v_dual_fmac_f32 v53, v172, v140
	v_dual_fmac_f32 v62, v167, v135 :: v_dual_fmac_f32 v51, v173, v141
	v_dual_fmac_f32 v60, v169, v137 :: v_dual_fmac_f32 v49, v175, v143
	v_dual_fmac_f32 v56, v170, v138 :: v_dual_fmac_f32 v47, v177, v129
	v_dual_fmac_f32 v54, v171, v139 :: v_dual_fmac_f32 v43, v181, v133
	v_dual_fmac_f32 v50, v174, v142 :: v_dual_fmac_f32 v45, v179, v131
	v_dual_fmac_f32 v48, v176, v128 :: v_dual_fmac_f32 v41, v183, v135
	v_dual_fmac_f32 v46, v178, v130 :: v_dual_fmac_f32 v39, v185, v137
	v_dual_fmac_f32 v44, v180, v132 :: v_dual_fmac_f32 v37, v187, v139
	v_dual_fmac_f32 v42, v182, v134 :: v_dual_fmac_f32 v35, v189, v141
	v_dual_fmac_f32 v40, v184, v136 :: v_dual_fmac_f32 v33, v191, v143
	v_fmac_f32_e32 v38, v186, v138
	v_fmac_f32_e32 v36, v188, v140
	v_fmac_f32_e32 v34, v190, v142
	.loc	1 742 19                        ; ragged.py:742:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 787 9                         ; ragged.py:787:9
	v_bfe_u32 v21, v52, 16, 1
	v_bfe_u32 v22, v101, 16, 1
	v_cmp_o_f32_e64 s19, v52, v52
	v_bfe_u32 v24, v100, 16, 1
	v_cmp_o_f32_e64 s20, v101, v101
	v_add3_u32 v23, v52, v21, 0x7fff
	v_add3_u32 v22, v101, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v100, v100
	v_add3_u32 v24, v100, v24, 0x7fff
	v_bfe_u32 v25, v98, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v99, 16, 1
	v_bfe_u32 v26, v97, 16, 1
	v_cmp_o_f32_e64 s19, v99, v99
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v99, v23, 0x7fff
	v_add3_u32 v25, v98, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v98, v98
	v_add3_u32 v26, v97, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v97, v97
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v96, 16, 1
	v_bfe_u32 v27, v95, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v94, 16, 1
	v_add3_u32 v23, v96, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v96, v96
	v_add3_u32 v27, v95, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v95, v95
	v_bfe_u32 v28, v93, 16, 1
	v_add3_u32 v26, v94, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v94, v94
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v92, 16, 1
	v_bfe_u32 v29, v91, 16, 1
	v_add3_u32 v28, v93, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v93, v93
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v92, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v92, v92
	v_add3_u32 v29, v91, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v91, v91
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v90, 16, 1
	v_bfe_u32 v30, v89, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v88, 16, 1
	v_add3_u32 v28, v90, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v90, v90
	v_add3_u32 v30, v89, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v89, v89
	v_bfe_u32 v31, v87, 16, 1
	v_add3_u32 v29, v88, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v88, v88
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v86, 16, 1
	v_bfe_u32 v32, v85, 16, 1
	v_add3_u32 v31, v87, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v87, v87
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v86, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v86, v86
	v_add3_u32 v32, v85, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v85, v85
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v84, 16, 1
	v_bfe_u32 v52, v83, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v20, v55, s74
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v82, 16, 1
	v_add3_u32 v31, v84, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v84, v84
	v_add3_u32 v52, v83, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_bfe_u32 v55, v81, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v19, v57, s74
	.loc	1 787 9                         ; ragged.py:787:9
	v_add3_u32 v32, v82, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v52.h, s20
	v_bfe_u32 v52, v80, 16, 1
	v_bfe_u32 v57, v79, 16, 1
	v_add3_u32 v55, v81, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v81, v81
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v18, v58, s74
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v52, v80, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v57, v79, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v79, v79
	v_cndmask_b16 v32.h, 0x7fff, v55.h, s19
	v_bfe_u32 v55, v78, 16, 1
	v_bfe_u32 v58, v77, 16, 1
	.loc	1 788 13                        ; ragged.py:788:13
	v_mul_lo_u32 v17, v59, s74
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s20
	v_cndmask_b16 v52.h, 0x7fff, v57.h, s21
	v_bfe_u32 v57, v76, 16, 1
	v_add3_u32 v55, v78, v55, 0x7fff
	v_cmp_o_f32_e64 s19, v78, v78
	v_add3_u32 v58, v77, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_bfe_u32 v59, v75, 16, 1
	.loc	1 692 36                        ; ragged.py:692:36
	v_lshrrev_b32_e32 v1, 1, v74
	.loc	1 787 9                         ; ragged.py:787:9
	v_add3_u32 v57, v76, v57, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s19
	v_cndmask_b16 v55.h, 0x7fff, v58.h, s20
	v_bfe_u32 v58, v73, 16, 1
	v_bfe_u32 v74, v72, 16, 1
	v_add3_u32 v59, v75, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v75, v75
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s21
	v_add3_u32 v58, v73, v58, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_add3_u32 v73, v72, v74, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v71, 16, 1
	v_bfe_u32 v72, v70, 16, 1
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s20
	v_cndmask_b16 v58.h, 0x7fff, v73.h, s21
	v_bfe_u32 v73, v69, 16, 1
	v_add3_u32 v59, v71, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v71, v70, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_add3_u32 v70, v69, v73, 0x7fff
	v_cmp_o_f32_e64 s21, v69, v69
	v_cndmask_b16 v59.l, 0x7fff, v59.h, s19
	v_bfe_u32 v69, v68, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v71.h, s20
	v_bfe_u32 v71, v67, 16, 1
	v_bfe_u32 v72, v66, 16, 1
	v_cmp_o_f32_e64 s19, v68, v68
	v_add3_u32 v69, v68, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v67, v67
	v_add3_u32 v68, v67, v71, 0x7fff
	v_add3_u32 v67, v66, v72, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s21
	v_cmp_o_f32_e64 s21, v66, v66
	v_bfe_u32 v66, v65, 16, 1
	v_cndmask_b16 v67.l, 0x7fff, v68.h, s20
	v_bfe_u32 v68, v64, 16, 1
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s19
	v_bfe_u32 v69, v63, 16, 1
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v65, v64, v68, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s21
	v_add3_u32 v64, v63, v69, 0x7fff
	v_cmp_o_f32_e64 s21, v63, v63
	v_cndmask_b16 v63.l, 0x7fff, v66.h, s19
	v_bfe_u32 v66, v62, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s20
	v_bfe_u32 v65, v61, 16, 1
	v_bfe_u32 v68, v60, 16, 1
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v66, v62, v66, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_add3_u32 v62, v61, v65, 0x7fff
	v_add3_u32 v61, v60, v68, 0x7fff
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s21
	v_cmp_o_f32_e64 s21, v60, v60
	v_bfe_u32 v60, v56, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s20
	v_bfe_u32 v62, v54, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s19
	v_bfe_u32 v65, v53, 16, 1
	v_add3_u32 v60, v56, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v56, v54, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v54, v54
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s21
	v_add3_u32 v54, v53, v65, 0x7fff
	v_cmp_o_f32_e64 s21, v53, v53
	v_cndmask_b16 v53.l, 0x7fff, v60.h, s19
	v_bfe_u32 v60, v51, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v50, 16, 1
	v_bfe_u32 v62, v49, 16, 1
	v_cmp_o_f32_e64 s19, v51, v51
	v_add3_u32 v60, v51, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v50, v50
	v_add3_u32 v51, v50, v56, 0x7fff
	v_add3_u32 v50, v49, v62, 0x7fff
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s21
	v_cmp_o_f32_e64 s21, v49, v49
	v_bfe_u32 v49, v48, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v47, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v60.h, s19
	v_bfe_u32 v56, v46, 16, 1
	v_add3_u32 v49, v48, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v48, v47, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v47, v47
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s21
	v_add3_u32 v47, v46, v56, 0x7fff
	v_cmp_o_f32_e64 s21, v46, v46
	v_cndmask_b16 v46.l, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v44, 16, 1
	v_bfe_u32 v51, v43, 16, 1
	v_cmp_o_f32_e64 s19, v45, v45
	v_add3_u32 v49, v45, v49, 0x7fff
	v_cmp_o_f32_e64 s20, v44, v44
	v_add3_u32 v45, v44, v48, 0x7fff
	v_add3_u32 v44, v43, v51, 0x7fff
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_cmp_o_f32_e64 s21, v43, v43
	v_bfe_u32 v43, v42, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v41, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v48, v40, 16, 1
	v_add3_u32 v43, v42, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v42, v42
	v_add3_u32 v42, v41, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v41, v41
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s21
	v_add3_u32 v41, v40, v48, 0x7fff
	v_cmp_o_f32_e64 s21, v40, v40
	v_cndmask_b16 v40.l, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v39, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v38, 16, 1
	v_bfe_u32 v45, v37, 16, 1
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v43, v39, v43, 0x7fff
	v_cmp_o_f32_e64 s20, v38, v38
	v_add3_u32 v39, v38, v42, 0x7fff
	v_add3_u32 v38, v37, v45, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_cmp_o_f32_e64 s21, v37, v37
	v_bfe_u32 v37, v36, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v35, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v42, v34, 16, 1
	v_add3_u32 v37, v36, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v36, v36
	v_add3_u32 v36, v35, v39, 0x7fff
	v_bfe_u32 v39, v33, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s21
	v_cmp_o_f32_e64 s20, v35, v35
	v_add3_u32 v35, v34, v42, 0x7fff
	v_cmp_o_f32_e64 s21, v34, v34
	v_add3_u32 v34, v33, v39, 0x7fff
	v_cmp_o_f32_e64 s22, v33, v33
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v33.h, 0x7fff, v36.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v35.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v34.h, s22
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v11, s45, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v49, v54, v61, s19
	v_cndmask_b32_e64 v51, v61, v54, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v34, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v52, v31, s19
	v_cndmask_b32_e64 v31, v31, v52, s19
	v_cndmask_b32_e64 v35, v58, v55, s19
	v_cndmask_b32_e64 v36, v55, v58, s19
	v_cndmask_b32_e64 v52, v50, v53, s19
	v_cndmask_b32_e64 v50, v53, v50, s19
	v_cndmask_b32_e64 v53, v44, v46, s19
	v_cndmask_b32_e64 v44, v46, v44, s19
	v_cndmask_b32_e64 v46, v40, v47, s19
	v_cndmask_b32_e64 v40, v47, v40, s19
	v_cndmask_b32_e64 v47, v33, v41, s19
	v_cndmask_b32_e64 v33, v41, v33, s19
	v_cndmask_b32_e64 v41, v0, v38, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v38, v0, s19
	v_cndmask_b32_e64 v38, 0x1054, v54, s19
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v16, 1, v11
	s_mov_b32 s20, 0x76543210
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_lshl_or_b32 v38, v38, 8, v38
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s18, s74, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v39, v57, v59, s19
	v_lshl_or_b32 v54, v54, 8, v54
	v_cndmask_b32_e64 v43, v70, v63, s19
	v_and_b32_e32 v38, 0x540054, v38
	v_cndmask_b32_e64 v48, v67, v64, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s17, s74, v16
	.loc	1 787 9                         ; ragged.py:787:9
	v_lshl_or_b32 v38, v38, 4, v38
	v_add_lshl_u32 v84, v11, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s16, s74, v15
	.loc	1 787 9                         ; ragged.py:787:9
	v_lshl_or_b32 v54, v54, 4, v54
	v_add_lshl_u32 v85, v16, v20, 1
	v_and_b32_e32 v38, 0x5040504, v38
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b32_e64 v37, v59, v57, s19
	v_cndmask_b32_e64 v42, v63, v70, s19
	v_cndmask_b32_e64 v45, v64, v67, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v51, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v44, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v34, v38
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s18, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s17, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s16, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s15, s74, v14
	.loc	1 787 9                         ; ragged.py:787:9
	v_perm_b32 v22, v22, v34, v54
	v_perm_b32 v34, v23, v25, v38
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v38
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v38
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v38
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v38
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v36, v35, v38
	v_perm_b32 v35, v36, v35, v54
	v_perm_b32 v36, v39, v37, v38
	v_perm_b32 v37, v39, v37, v54
	v_perm_b32 v39, v43, v42, v38
	v_perm_b32 v42, v43, v42, v54
	v_perm_b32 v43, v48, v45, v38
	v_perm_b32 v45, v48, v45, v54
	v_perm_b32 v48, v51, v49, v38
	v_perm_b32 v49, v51, v49, v54
	v_perm_b32 v51, v50, v52, v38
	v_perm_b32 v50, v50, v52, v54
	v_perm_b32 v52, v44, v53, v38
	v_perm_b32 v44, v44, v53, v54
	v_perm_b32 v53, v40, v46, v38
	v_perm_b32 v40, v40, v46, v54
	v_perm_b32 v46, v33, v47, v38
	v_perm_b32 v38, v0, v41, v38
	v_perm_b32 v0, v0, v41, v54
	v_mov_b16_e32 v41.l, v55.h
	v_mov_b16_e32 v41.h, v21.h
	s_and_b32 s21, s47, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s46
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 787 9                         ; ragged.py:787:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s14, s74, v13
	v_cmp_gt_i32_e64 s13, s74, v12
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v41, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s15, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s12, s74, v10
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v41, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s14, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s13, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s11, s74, v9
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s12, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_perm_b32 v33, v33, v47, v54
	v_mov_b16_e32 v54.l, v34.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s10, s74, v8
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v56.h, v21.h
	v_mov_b16_e32 v57.h, v21.h
	v_mov_b16_e32 v58.h, v21.h
	v_mov_b16_e32 v59.h, v21.h
	v_mov_b16_e32 v60.h, v21.h
	v_mov_b16_e32 v61.h, v21.h
	v_mov_b16_e32 v62.h, v21.h
	v_mov_b16_e32 v63.h, v21.h
	v_mov_b16_e32 v64.h, v21.h
	v_mov_b16_e32 v65.h, v21.h
	v_mov_b16_e32 v66.h, v21.h
	v_mov_b16_e32 v67.h, v21.h
	v_mov_b16_e32 v68.h, v21.h
	v_mov_b16_e32 v69.h, v21.h
	v_mov_b16_e32 v70.h, v21.h
	v_mov_b16_e32 v71.h, v21.h
	v_mov_b16_e32 v72.h, v21.h
	v_mov_b16_e32 v73.h, v21.h
	v_mov_b16_e32 v74.h, v21.h
	v_mov_b16_e32 v75.h, v21.h
	v_mov_b16_e32 v76.h, v21.h
	v_mov_b16_e32 v77.h, v21.h
	v_mov_b16_e32 v78.h, v21.h
	v_mov_b16_e32 v79.h, v21.h
	v_mov_b16_e32 v80.h, v21.h
	v_mov_b16_e32 v81.h, v21.h
	v_mov_b16_e32 v82.h, v21.h
	v_mov_b16_e32 v83.h, v21.h
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	s_clause 0x1
	buffer_store_b16 v21, v41, s[20:23], 0 offen
	buffer_store_b16 v34, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s9, s74, v7
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s11, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s8, s74, v6
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v47.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s10, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v34, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s9, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s7, s74, v5
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s8, s4
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s6, s74, v4
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v34, 0x80000000, v34, s19
	s_clause 0x1
	buffer_store_b16 v47, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 692 18                        ; ragged.py:692:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s5, s74, v3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s7, s4
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s1, s74, v2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v34, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s6, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 694 20                        ; ragged.py:694:20
	v_cmp_gt_i32_e64 s0, s74, v1
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s5, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s19, s1, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s0, s4
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s18, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s17, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s16, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s15, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s14, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s13, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s12, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s11, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s10, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s9, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s8, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s7, s3
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s6, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v64.l, v35.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s5, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s4, s1, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v67.l, v36.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v36, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s0, s3
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s18, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v66.l, v37.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v37, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s17, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v69.l, v39.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s16, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v39, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s15, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v42, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s14, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v68.l, v42.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s13, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v71.l, v43.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s12, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v43, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s11, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v45, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s10, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v70.l, v45.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s9, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v73.l, v48.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s8, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v48, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s7, s2
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v49, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s6, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s5, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v72.l, v49.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v74.l, v50.h
	v_mov_b16_e32 v75.l, v51.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v51, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v50, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v52, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v44.h
	v_mov_b16_e32 v77.l, v52.h
	v_mov_b16_e32 v78.l, v40.h
	v_mov_b16_e32 v79.l, v53.h
	v_mov_b16_e32 v80.l, v33.h
	v_mov_b16_e32 v81.l, v46.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_mov_b16_e32 v83.l, v38.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 790 18                        ; ragged.py:790:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 787 9                         ; ragged.py:787:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v44, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v53, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v40, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v46, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v33, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v38, v4, s[20:23], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 230
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 230
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11608
; TotalNumSgprs: 78
; NumVgprs: 230
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 230
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
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
