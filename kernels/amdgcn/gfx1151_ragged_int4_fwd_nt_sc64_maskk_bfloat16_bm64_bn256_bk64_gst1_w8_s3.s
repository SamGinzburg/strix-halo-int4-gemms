	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 702 0                         ; ragged.py:702:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s98, s[0:1], 0x4c
	s_load_b64 s[96:97], s[0:1], 0x54
.Ltmp0:
	.loc	1 730 25 prologue_end           ; ragged.py:730:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 741 32                        ; ragged.py:741:32
	v_and_b32_e32 v71, 15, v0
	.loc	1 741 18 is_stmt 0              ; ragged.py:741:18
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v5, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:728:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s98, 0xff
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:728:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
.Ltmp2:
	.loc	1 730 25 is_stmt 1              ; ragged.py:730:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v6, s5
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v6
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v50, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v18, 0
	s_xor_b32 s4, s4, s6
	.loc	1 742 36                        ; ragged.py:742:36
	v_and_b32_e32 v34, 0xf0, v0
	.loc	1 730 25                        ; ragged.py:730:25
	s_sub_i32 s4, s4, s6
	s_mov_b32 s72, 0
	.loc	1 732 33                        ; ragged.py:732:33
	s_sub_i32 s5, s97, s4
	.loc	1 733 24                        ; ragged.py:733:24
	s_mul_i32 s3, s4, s3
	.loc	1 732 22                        ; ragged.py:732:22
	s_min_i32 s5, s5, 1
	.loc	1 733 24                        ; ragged.py:733:24
	s_sub_i32 s2, s2, s3
	.loc	1 735 17                        ; ragged.py:735:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v17, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v17
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
	s_ashr_i32 s37, s7, 31
	s_sub_i32 s7, s8, s9
	s_add_i32 s8, s3, 1
	s_sub_i32 s9, s7, s6
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s3, 1
	s_cmp_ge_u32 s7, s6
	s_cselect_b32 s3, s8, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s42, s3, s37
	s_sub_i32 s6, s42, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 734 34                        ; ragged.py:734:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 734 20 is_stmt 0              ; ragged.py:734:20
	s_add_i32 s2, s2, s4
	.loc	1 737 20 is_stmt 1              ; ragged.py:737:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 738 23                        ; ragged.py:738:23
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s20, s12
	s_addc_u32 s3, s21, s13
	s_load_b64 s[38:39], s[2:3], 0x0
	.loc	1 739 24                        ; ragged.py:739:24
	s_add_u32 s2, s22, s12
	s_addc_u32 s3, s23, s13
	.loc	1 740 22                        ; ragged.py:740:22
	s_add_u32 s4, s24, s12
	s_addc_u32 s5, s25, s13
	.loc	1 739 24                        ; ragged.py:739:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 740 22                        ; ragged.py:740:22
	s_load_b64 s[18:19], s[4:5], 0x0
	.loc	1 742 18                        ; ragged.py:742:18
	s_lshl_b32 s71, s6, 8
	.loc	1 741 18                        ; ragged.py:741:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v19, s2, s38, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v20, null, s39, 0, s2
	.loc	1 824 25                        ; ragged.py:824:25
	v_add_nc_u32_e32 v17, s38, v71
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_u32 v72, vcc_lo, v19, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v73, null, 0, v20, vcc_lo
	v_add_co_u32 v74, vcc_lo, v19, 32
	v_add_co_ci_u32_e64 v75, null, 0, v20, vcc_lo
	v_add_co_u32 v76, vcc_lo, v19, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v77, null, 0, v20, vcc_lo
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[19:20]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[19:20]
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s3, s[10:11], v[72:73]
	v_cmp_le_i64_e64 s5, s[10:11], v[74:75]
	v_cmp_le_i64_e64 s6, s[10:11], v[76:77]
	.loc	1 743 48                        ; ragged.py:743:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[72:73]
	v_cmp_gt_i64_e64 s8, s[18:19], v[74:75]
	v_cmp_gt_i64_e64 s9, s[18:19], v[76:77]
	.loc	1 824 25 is_stmt 1              ; ragged.py:824:25
	v_add_nc_u32_e32 v19, 16, v17
	v_add_nc_u32_e32 v20, 32, v17
	v_add_nc_u32_e32 v21, 48, v17
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lt_i32 s96, 1
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 741 32 is_stmt 1              ; ragged.py:741:32
	v_lshrrev_b32_e32 v22, 5, v0
	s_clause 0x1
	s_load_b32 s97, s[0:1], 0x50
	s_load_b256 s[76:83], s[0:1], 0x0
                                        ; implicit-def: $vgpr230 : SGPR spill to VGPR lane
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v57, s71, v0
	v_writelane_b32 v230, s20, 0
	.loc	1 741 18                        ; ragged.py:741:18
	v_dual_mov_b32 v18, 0 :: v_dual_and_b32 v23, 0xe0, v0
	v_add_co_u32 v1, s0, s38, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s39, 0, s0
	v_writelane_b32 v230, s21, 1
	v_add_co_u32 v3, s0, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, s0
	v_add_co_u32 v5, s0, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, s0
	v_add_co_u32 v7, s0, v1, 24
	.loc	1 737 20                        ; ragged.py:737:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s40, s6, s12
	s_addc_u32 s41, s7, s13
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_ci_u32_e64 v8, null, 0, v2, s0
	v_add_co_u32 v9, s0, v1, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v2, s0
	v_add_co_u32 v11, s0, v1, 40
	.loc	1 831 25                        ; ragged.py:831:25
	s_load_b32 s39, s[40:41], 0x0
	.loc	1 741 18                        ; ragged.py:741:18
	v_add_co_ci_u32_e64 v12, null, 0, v2, s0
	v_add_co_u32 v13, s0, v1, 48
	v_add_co_ci_u32_e64 v14, null, 0, v2, s0
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v24, s71, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s8, s[10:11], v[11:12]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s16, s[18:19], v[11:12]
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v11, s38, v22
	v_writelane_b32 v230, s22, 2
	.loc	1 741 18 is_stmt 1              ; ragged.py:741:18
	v_add_co_u32 v15, s0, v1, 56
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v56, 0xf8, v24
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s9, s[10:11], v[13:14]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s17, s[18:19], v[13:14]
	v_add_nc_u32_e32 v13, 16, v11
	.loc	1 741 18 is_stmt 1              ; ragged.py:741:18
	v_add_co_ci_u32_e64 v16, null, 0, v2, s0
	v_writelane_b32 v230, s23, 3
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v52, 0xd8, v24
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s35, s98, v56
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v12, 8, v11
	v_mov_b32_e32 v56, 0
	v_mul_lo_u32 v76, v13, s97
	v_add_nc_u32_e32 v13, 48, v11
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v54, 0xe8, v24
	.loc	1 743 21                        ; ragged.py:743:21
	v_cmp_le_i64_e64 s0, s[10:11], v[1:2]
	v_cmp_le_i64_e64 s1, s[10:11], v[3:4]
	v_cmp_le_i64_e64 s5, s[10:11], v[5:6]
	v_cmp_le_i64_e64 s6, s[10:11], v[7:8]
	v_cmp_le_i64_e64 s7, s[10:11], v[9:10]
	v_cmp_le_i64_e64 s10, s[10:11], v[15:16]
	.loc	1 743 48 is_stmt 0              ; ragged.py:743:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[1:2]
	v_cmp_gt_i64_e64 s12, s[18:19], v[3:4]
	v_cmp_gt_i64_e64 s13, s[18:19], v[5:6]
	v_cmp_gt_i64_e64 s14, s[18:19], v[7:8]
	v_cmp_gt_i64_e64 s15, s[18:19], v[9:10]
	v_cmp_gt_i64_e64 s18, s[18:19], v[15:16]
	v_add_nc_u32_e32 v15, 32, v11
	.loc	1 793 19 is_stmt 1              ; ragged.py:793:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s98, s39
	s_lshl_b32 s40, s42, 8
	v_writelane_b32 v230, s24, 4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v55, 0xf0, v24
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s30, s98, v52
	v_mul_lo_u32 v75, v12, s97
	v_add_nc_u32_e32 v12, 40, v11
	v_mov_b32_e32 v52, 0
	v_mul_lo_u32 v80, v13, s97
	.loc	1 793 19                        ; ragged.py:793:19
	v_add3_u32 v13, s38, s40, v22
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s33, s98, v54
	v_add_nc_u32_e32 v14, 24, v11
	v_mov_b32_e32 v54, 0
	v_mul_lo_u32 v78, v15, s97
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v15, s96, v20
	s_mul_i32 s39, s38, s96
	s_lshl_b32 s37, s37, 8
	v_writelane_b32 v230, s25, 5
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v50, 0xc8, v24
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s34, s98, v55
	v_mul_lo_u32 v74, v11, s97
	v_add_nc_u32_e32 v11, 56, v11
	.loc	1 793 19                        ; ragged.py:793:19
	v_subrev_nc_u32_e32 v13, s37, v13
	v_mov_b32_e32 v55, 0
	v_mul_lo_u32 v79, v12, s97
	v_add3_u32 v12, s39, s40, v0
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s36, s98, v57
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v16, s96, v19
	v_mov_b32_e32 v57, 0
	v_mul_lo_u32 v77, v14, s97
	v_mul_lo_u32 v14, s96, v21
	v_writelane_b32 v230, s26, 6
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v40, 0x78, v24
	v_or_b32_e32 v48, 0xb8, v24
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s28, s98, v50
	.loc	1 793 19                        ; ragged.py:793:19
	v_subrev_nc_u32_e32 v12, s37, v12
	v_lshlrev_b32_e32 v84, 1, v15
	v_dual_mov_b32 v50, 0 :: v_dual_add_nc_u32 v15, 0xd8, v13
	v_mul_lo_u32 v81, v11, s97
	v_add_nc_u32_e32 v11, 0xf8, v13
	v_writelane_b32 v230, s27, 7
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v36, 0x58, v24
	v_or_b32_e32 v42, 0x88, v24
	v_or_b32_e32 v43, 0x90, v24
	v_or_b32_e32 v45, 0xa0, v24
	v_or_b32_e32 v47, 0xb0, v24
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s69, s10, s18
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s18, s98, v40
	v_cmp_gt_i32_e64 s26, s98, v48
	.loc	1 793 19                        ; ragged.py:793:19
	v_lshlrev_b32_e32 v82, 1, v12
	v_lshlrev_b32_e32 v83, 1, v14
	v_lshlrev_b32_e32 v85, 1, v16
	v_add_nc_u32_e32 v12, 0xe8, v13
	v_add_nc_u32_e32 v14, 0xe0, v13
	v_add_nc_u32_e32 v16, 0xd0, v13
	v_mov_b32_e32 v48, 0
	v_mul_lo_u32 v87, s97, v11
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v11, 0xf0, v13
	v_mul_lo_u32 v91, s97, v15
	v_add_nc_u32_e32 v15, 0xb0, v13
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v30, 48, v24
	v_or_b32_e32 v37, 0x60, v24
	v_or_b32_e32 v38, 0x68, v24
	v_or_b32_e32 v39, 0x70, v24
	v_or_b32_e32 v41, 0x80, v24
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s102, s6, s14
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s14, s98, v36
	v_cmp_gt_i32_e64 s20, s98, v42
	v_cmp_gt_i32_e64 s21, s98, v43
	v_cmp_gt_i32_e64 s23, s98, v45
	v_cmp_gt_i32_e64 s25, s98, v47
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_mov_b32_e32 v47, 0
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v89, s97, v12
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v12, 0xc0, v13
	v_mul_lo_u32 v90, s97, v14
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v14, 0xb8, v13
	v_mul_lo_u32 v92, s97, v16
	v_add_nc_u32_e32 v16, 0xa8, v13
	v_mov_b32_e32 v42, 0
	v_mul_lo_u32 v88, s97, v11
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v11, 0xc8, v13
	v_mul_lo_u32 v96, s97, v15
	v_add_nc_u32_e32 v15, 0x88, v13
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v26, 16, v24
	v_or_b32_e32 v31, 56, v24
	v_or_b32_e32 v32, 64, v24
	v_or_b32_e32 v33, 0x48, v24
	v_or_b32_e32 v35, 0x50, v24
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s103, s7, s15
	s_and_b32 s104, s8, s16
	s_and_b32 vcc_hi, s9, s17
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s9, s98, v30
	v_cmp_gt_i32_e64 s15, s98, v37
	v_cmp_gt_i32_e64 s16, s98, v38
	v_cmp_gt_i32_e64 s17, s98, v39
	v_cmp_gt_i32_e64 s19, s98, v41
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v4, 24, v1
	v_mov_b32_e32 v41, 0
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v94, s97, v12
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v12, 0x98, v13
	v_mul_lo_u32 v95, s97, v14
	v_add_nc_u32_e32 v14, 0x90, v13
	v_mov_b32_e32 v38, 0
	v_mul_lo_u32 v93, s97, v11
	v_add_nc_u32_e32 v11, 0xa0, v13
	v_mov_b32_e32 v37, 0
	v_mul_lo_u32 v97, s97, v16
	v_add_nc_u32_e32 v16, 0x80, v13
	v_mov_b32_e32 v30, 0
	v_mul_lo_u32 v101, s97, v15
	v_add_nc_u32_e32 v15, 0x60, v13
	v_mul_lo_u32 v22, s96, v17
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v25, 8, v24
	v_or_b32_e32 v27, 24, v24
	v_or_b32_e32 v28, 32, v24
	v_or_b32_e32 v29, 40, v24
	.loc	1 743 20                        ; ragged.py:743:20
	s_and_b32 s99, s0, s11
	s_and_b32 s100, s1, s12
	s_and_b32 s101, s5, s13
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s5, s98, v26
	v_cmp_gt_i32_e64 s10, s98, v31
	v_cmp_gt_i32_e64 s11, s98, v32
	v_cmp_gt_i32_e64 s12, s98, v33
	v_cmp_gt_i32_e64 s13, s98, v35
	v_lshl_or_b32 v71, v71, 5, v4
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v7, 5, v0
	v_mov_b32_e32 v35, 0
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v99, s97, v12
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v12, 0x70, v13
	v_mul_lo_u32 v100, s97, v14
	v_add_nc_u32_e32 v14, 0x68, v13
	v_mov_b32_e32 v32, 0
	v_mul_lo_u32 v98, s97, v11
	v_add_nc_u32_e32 v11, 0x78, v13
	v_mov_b32_e32 v31, 0
	v_mul_lo_u32 v102, s97, v16
	v_add_nc_u32_e32 v16, 0x58, v13
	v_mov_b32_e32 v26, 0
	v_mul_lo_u32 v106, s97, v15
	v_add_nc_u32_e32 v15, 56, v13
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v3, 0x7f, v0
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v2, 0x88, v2
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s1, s98, v25
	v_cmp_gt_i32_e64 s6, s98, v27
	v_cmp_gt_i32_e64 s7, s98, v28
	v_cmp_gt_i32_e64 s8, s98, v29
	v_lshl_or_b32 v73, v23, 4, v71
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v10, 2, v34
	v_dual_mov_b32 v62, 0 :: v_dual_and_b32 v7, 32, v7
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v86, 1, v22
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v104, s97, v12
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v12, 0x48, v13
	v_mov_b32_e32 v28, 0
	v_mul_lo_u32 v103, s97, v11
	v_add_nc_u32_e32 v11, 0x50, v13
	v_mov_b32_e32 v27, 0
	v_mul_lo_u32 v105, s97, v14
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v14, 64, v13
	v_mul_lo_u32 v107, s97, v16
	v_add_nc_u32_e32 v16, 48, v13
	v_mov_b32_e32 v22, 0
	v_mul_lo_u32 v111, s97, v15
	v_add_nc_u32_e32 v15, 16, v13
	v_xor_b32_e32 v72, v2, v3
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v44, 0x98, v24
	v_or_b32_e32 v46, 0xa8, v24
	v_or_b32_e32 v49, 0xc0, v24
	v_or_b32_e32 v51, 0xd0, v24
	v_or_b32_e32 v53, 0xe0, v24
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s98, v24
	v_xor_b32_e32 v9, 24, v73
	v_dual_mov_b32 v58, 0 :: v_dual_and_b32 v1, 28, v1
	v_add3_u32 v7, 0, v10, v7
	.loc	1 793 19                        ; ragged.py:793:19
	v_mul_lo_u32 v109, s97, v12
	v_mul_lo_u32 v112, s97, v16
	v_add_nc_u32_e32 v12, 32, v13
	v_add_nc_u32_e32 v16, 8, v13
	v_mul_lo_u32 v116, s97, v15
	v_mov_b32_e32 v24, 0
	v_mul_lo_u32 v108, s97, v11
	v_add_nc_u32_e32 v11, 40, v13
	v_mov_b32_e32 v15, 0
	v_mul_lo_u32 v110, s97, v14
	v_add_nc_u32_e32 v14, 24, v13
	v_xor_b32_e32 v2, 0x110, v72
	v_xor_b32_e32 v3, 8, v71
	v_xor_b32_e32 v4, 16, v71
	v_xor_b32_e32 v5, 24, v71
	v_xor_b32_e32 v6, 8, v73
	v_xor_b32_e32 v8, 16, v73
	v_dual_mov_b32 v61, 0 :: v_dual_lshlrev_b32 v10, 1, v34
	v_mul_lo_u32 v118, s97, v13
	v_add_nc_u32_e32 v125, 0, v9
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v126, v7, v1
	v_mul_lo_u32 v115, s97, v14
	v_mov_b32_e32 v7, 0
	v_mul_lo_u32 v117, s97, v16
	v_mov_b32_e32 v16, 0
	v_mul_lo_u32 v113, s97, v11
	v_mov_b32_e32 v11, 0
	v_mul_lo_u32 v114, s97, v12
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s22, s98, v44
	v_cmp_gt_i32_e64 s24, s98, v46
	v_cmp_gt_i32_e64 s27, s98, v49
	v_cmp_gt_i32_e64 s29, s98, v51
	v_cmp_gt_i32_e64 s31, s98, v53
	v_dual_mov_b32 v69, 0 :: v_dual_and_b32 v70, 31, v0
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v119, 0, v2
	v_add_nc_u32_e32 v120, 0, v3
	v_add_nc_u32_e32 v121, 0, v4
	v_dual_mov_b32 v3, 0 :: v_dual_add_nc_u32 v122, 0, v5
	v_add_nc_u32_e32 v123, 0, v6
	v_dual_mov_b32 v1, 0 :: v_dual_add_nc_u32 v124, 0, v8
	v_dual_mov_b32 v4, 0 :: v_dual_add_nc_u32 v127, 0, v10
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v51, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v44, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v8, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_mov_b32_e32 v2, 0
	s_and_b32 s85, s77, 0xffff
	s_mov_b32 s84, s76
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	s_and_b32 s89, s79, 0xffff
	s_mov_b32 s88, s78
	s_and_b32 s81, s81, 0xffff
	s_and_b32 s93, s83, 0xffff
	s_mov_b32 s92, s82
	.loc	1 793 19                        ; ragged.py:793:19
	s_lshl_b32 s70, s98, 1
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_cmp_gt_i32_e64 s37, s97, v70
	v_add_nc_u32_e32 v128, v74, v70
	v_add_nc_u32_e32 v129, v75, v70
	v_add_nc_u32_e32 v130, v76, v70
	v_add_nc_u32_e32 v131, v77, v70
	s_and_b32 s38, s99, s37
	s_and_b32 s39, s100, s37
	v_add_nc_u32_e32 v132, v78, v70
	v_add_nc_u32_e32 v133, v79, v70
	v_add_nc_u32_e32 v134, v80, v70
	v_add_nc_u32_e32 v135, v81, v70
	s_and_b32 s40, s101, s37
	v_cndmask_b32_e64 v128, 0x80000000, v128, s38
	s_and_b32 s41, s102, s37
	v_cndmask_b32_e64 v129, 0x80000000, v129, s39
	s_and_b32 s42, s103, s37
	s_and_b32 s43, s104, s37
	s_and_b32 s44, vcc_hi, s37
	s_and_b32 s45, s69, s37
	v_cndmask_b32_e64 v130, 0x80000000, v130, s40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s41
	v_cndmask_b32_e64 v132, 0x80000000, v132, s42
	v_cndmask_b32_e64 v133, 0x80000000, v133, s43
	v_cndmask_b32_e64 v134, 0x80000000, v134, s44
	v_cndmask_b32_e64 v135, 0x80000000, v135, s45
	v_add_nc_u32_e32 v136, v118, v70
	.loc	1 808 34 is_stmt 1              ; ragged.py:808:34
	s_clause 0x7
	buffer_load_u8 v128, v128, s[84:87], 0 offen
	buffer_load_u8 v129, v129, s[84:87], 0 offen
	buffer_load_u8 v130, v130, s[84:87], 0 offen
	buffer_load_u8 v131, v131, s[84:87], 0 offen
	buffer_load_u8 v132, v132, s[84:87], 0 offen
	buffer_load_u8 v133, v133, s[84:87], 0 offen
	buffer_load_u8 v134, v134, s[84:87], 0 offen
	buffer_load_u8 v135, v135, s[84:87], 0 offen
	v_add_nc_u32_e32 v137, v117, v70
	v_add_nc_u32_e32 v138, v116, v70
	s_and_b32 s38, s0, s37
	v_add_nc_u32_e32 v139, v115, v70
	s_and_b32 s39, s1, s37
	v_add_nc_u32_e32 v140, v114, v70
	v_add_nc_u32_e32 v141, v113, v70
	v_add_nc_u32_e32 v142, v112, v70
	v_add_nc_u32_e32 v143, v111, v70
	v_add_nc_u32_e32 v144, v110, v70
	v_add_nc_u32_e32 v145, v109, v70
	v_add_nc_u32_e32 v146, v108, v70
	v_add_nc_u32_e32 v147, v107, v70
	v_add_nc_u32_e32 v148, v106, v70
	v_add_nc_u32_e32 v149, v105, v70
	v_add_nc_u32_e32 v150, v104, v70
	v_add_nc_u32_e32 v151, v103, v70
	v_add_nc_u32_e32 v152, v102, v70
	v_add_nc_u32_e32 v153, v101, v70
	v_add_nc_u32_e32 v154, v100, v70
	v_add_nc_u32_e32 v155, v99, v70
	v_add_nc_u32_e32 v156, v98, v70
	v_add_nc_u32_e32 v157, v97, v70
	v_add_nc_u32_e32 v158, v96, v70
	v_add_nc_u32_e32 v159, v95, v70
	v_add_nc_u32_e32 v160, v94, v70
	v_add_nc_u32_e32 v161, v93, v70
	v_add_nc_u32_e32 v162, v92, v70
	v_add_nc_u32_e32 v163, v91, v70
	v_add_nc_u32_e32 v164, v90, v70
	v_add_nc_u32_e32 v165, v89, v70
	s_and_b32 s40, s5, s37
	v_add_nc_u32_e32 v166, v88, v70
	v_add_nc_u32_e32 v167, v87, v70
	v_cndmask_b32_e64 v136, 0x80000000, v136, s38
	s_and_b32 s41, s6, s37
	v_cndmask_b32_e64 v137, 0x80000000, v137, s39
	s_and_b32 s42, s7, s37
	s_and_b32 s43, s8, s37
	s_and_b32 s44, s9, s37
	s_and_b32 s45, s10, s37
	s_and_b32 s46, s11, s37
	s_and_b32 s47, s12, s37
	s_and_b32 s48, s13, s37
	s_and_b32 s49, s14, s37
	s_and_b32 s50, s15, s37
	s_and_b32 s51, s16, s37
	s_and_b32 s52, s17, s37
	s_and_b32 s53, s18, s37
	s_and_b32 s54, s19, s37
	s_and_b32 s55, s20, s37
	s_and_b32 s56, s21, s37
	s_and_b32 s57, s22, s37
	s_and_b32 s58, s23, s37
	s_and_b32 s59, s24, s37
	s_and_b32 s60, s25, s37
	s_and_b32 s61, s26, s37
	s_and_b32 s62, s27, s37
	s_and_b32 s63, s28, s37
	s_and_b32 s64, s29, s37
	s_and_b32 s65, s30, s37
	s_and_b32 s66, s31, s37
	s_and_b32 s67, s33, s37
	v_cndmask_b32_e64 v138, 0x80000000, v138, s40
	s_and_b32 s68, s34, s37
	s_and_b32 s37, s35, s37
	v_cndmask_b32_e64 v139, 0x80000000, v139, s41
	.loc	1 809 34                        ; ragged.py:809:34
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	v_cndmask_b32_e64 v140, 0x80000000, v140, s42
	v_cndmask_b32_e64 v141, 0x80000000, v141, s43
	v_cndmask_b32_e64 v142, 0x80000000, v142, s44
	v_cndmask_b32_e64 v143, 0x80000000, v143, s45
	v_cndmask_b32_e64 v144, 0x80000000, v144, s46
	v_cndmask_b32_e64 v145, 0x80000000, v145, s47
	v_cndmask_b32_e64 v146, 0x80000000, v146, s48
	v_cndmask_b32_e64 v147, 0x80000000, v147, s49
	v_cndmask_b32_e64 v148, 0x80000000, v148, s50
	v_cndmask_b32_e64 v149, 0x80000000, v149, s51
	v_cndmask_b32_e64 v150, 0x80000000, v150, s52
	v_cndmask_b32_e64 v151, 0x80000000, v151, s53
	v_cndmask_b32_e64 v152, 0x80000000, v152, s54
	v_cndmask_b32_e64 v153, 0x80000000, v153, s55
	v_cndmask_b32_e64 v154, 0x80000000, v154, s56
	v_cndmask_b32_e64 v155, 0x80000000, v155, s57
	v_cndmask_b32_e64 v156, 0x80000000, v156, s58
	v_cndmask_b32_e64 v157, 0x80000000, v157, s59
	v_cndmask_b32_e64 v158, 0x80000000, v158, s60
	v_cndmask_b32_e64 v159, 0x80000000, v159, s61
	v_cndmask_b32_e64 v160, 0x80000000, v160, s62
	v_cndmask_b32_e64 v161, 0x80000000, v161, s63
	v_cndmask_b32_e64 v162, 0x80000000, v162, s64
	v_cndmask_b32_e64 v163, 0x80000000, v163, s65
	v_cndmask_b32_e64 v164, 0x80000000, v164, s66
	v_cndmask_b32_e64 v165, 0x80000000, v165, s67
	v_cndmask_b32_e64 v166, 0x80000000, v166, s68
	v_cndmask_b32_e64 v167, 0x80000000, v167, s37
	s_clause 0x1f
	buffer_load_u8 v136, v136, s[88:91], 0 offen
	buffer_load_u8 v137, v137, s[88:91], 0 offen
	buffer_load_u8 v138, v138, s[88:91], 0 offen
	buffer_load_u8 v139, v139, s[88:91], 0 offen
	buffer_load_u8 v140, v140, s[88:91], 0 offen
	buffer_load_u8 v141, v141, s[88:91], 0 offen
	buffer_load_u8 v142, v142, s[88:91], 0 offen
	buffer_load_u8 v143, v143, s[88:91], 0 offen
	buffer_load_u8 v144, v144, s[88:91], 0 offen
	buffer_load_u8 v145, v145, s[88:91], 0 offen
	buffer_load_u8 v146, v146, s[88:91], 0 offen
	buffer_load_u8 v147, v147, s[88:91], 0 offen
	buffer_load_u8 v148, v148, s[88:91], 0 offen
	buffer_load_u8 v149, v149, s[88:91], 0 offen
	buffer_load_u8 v150, v150, s[88:91], 0 offen
	buffer_load_u8 v151, v151, s[88:91], 0 offen
	buffer_load_u8 v152, v152, s[88:91], 0 offen
	buffer_load_u8 v153, v153, s[88:91], 0 offen
	buffer_load_u8 v154, v154, s[88:91], 0 offen
	buffer_load_u8 v155, v155, s[88:91], 0 offen
	buffer_load_u8 v156, v156, s[88:91], 0 offen
	buffer_load_u8 v157, v157, s[88:91], 0 offen
	buffer_load_u8 v158, v158, s[88:91], 0 offen
	buffer_load_u8 v159, v159, s[88:91], 0 offen
	buffer_load_u8 v160, v160, s[88:91], 0 offen
	buffer_load_u8 v161, v161, s[88:91], 0 offen
	buffer_load_u8 v162, v162, s[88:91], 0 offen
	buffer_load_u8 v163, v163, s[88:91], 0 offen
	buffer_load_u8 v164, v164, s[88:91], 0 offen
	buffer_load_u8 v165, v165, s[88:91], 0 offen
	buffer_load_u8 v182, v166, s[88:91], 0 offen
	buffer_load_u8 v183, v167, s[88:91], 0 offen
	.loc	1 808 34                        ; ragged.py:808:34
	v_add_nc_u32_e32 v184, 0, v72
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 823 40                        ; ragged.py:823:40
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	.loc	1 830 40                        ; ragged.py:830:40
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	.loc	1 793 19                        ; ragged.py:793:19
	v_add_nc_u32_e32 v70, 32, v70
	s_add_i32 s96, s96, -1
	.loc	1 808 34                        ; ragged.py:808:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v184, v128
	s_waitcnt vmcnt(37)
	ds_store_b8 v184, v130 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v184, v132 offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b8 v184, v134 offset:1536
	ds_store_b8 v119, v129
	ds_store_b8 v119, v131 offset:512
	ds_store_b8 v119, v133 offset:1024
	s_waitcnt vmcnt(32)
	ds_store_b8 v119, v135 offset:1536
	v_add_nc_u32_e32 v128, 0, v71
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[166:169], v128 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v128 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[170:173], v120 offset1:1
	ds_load_2addr_stride64_b64 v[202:205], v120 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[174:177], v121 offset1:1
	ds_load_2addr_stride64_b64 v[206:209], v121 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[178:181], v122 offset1:1
	ds_load_2addr_stride64_b64 v[210:213], v122 offset0:2 offset1:3
	.loc	1 809 34                        ; ragged.py:809:34
	v_add_nc_u32_e32 v128, 0, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v184, v136
	s_waitcnt vmcnt(29)
	ds_store_b8 v184, v138 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v184, v140 offset:1024
	s_waitcnt vmcnt(25)
	ds_store_b8 v184, v142 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v184, v144 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b8 v184, v146 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v184, v148 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b8 v184, v150 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v184, v152 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b8 v184, v154 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v184, v156 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b8 v184, v158 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v184, v160 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b8 v184, v162 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v184, v164 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v184, v182 offset:7680
	ds_store_b8 v119, v137
	ds_store_b8 v119, v139 offset:512
	ds_store_b8 v119, v141 offset:1024
	ds_store_b8 v119, v143 offset:1536
	ds_store_b8 v119, v145 offset:2048
	ds_store_b8 v119, v147 offset:2560
	ds_store_b8 v119, v149 offset:3072
	ds_store_b8 v119, v151 offset:3584
	ds_store_b8 v119, v153 offset:4096
	ds_store_b8 v119, v155 offset:4608
	ds_store_b8 v119, v157 offset:5120
	ds_store_b8 v119, v159 offset:5632
	ds_store_b8 v119, v161 offset:6144
	ds_store_b8 v119, v163 offset:6656
	ds_store_b8 v119, v165 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v119, v183 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[214:217], v128 offset1:8
	ds_load_2addr_stride64_b64 v[218:221], v123 offset1:8
	ds_load_2addr_stride64_b64 v[222:225], v124 offset1:8
	ds_load_2addr_stride64_b64 v[226:229], v125 offset1:8
	.loc	1 810 31                        ; ragged.py:810:31
	v_dual_mov_b32 v135, s79 :: v_dual_mov_b32 v134, s78
	v_dual_mov_b32 v133, s77 :: v_dual_mov_b32 v132, s76
	v_dual_mov_b32 v131, s75 :: v_dual_mov_b32 v130, s74
	v_dual_mov_b32 v129, s73 :: v_dual_mov_b32 v128, s72
	.loc	1 793 19                        ; ragged.py:793:19
	s_cmp_lg_u32 s96, 0
	.loc	1 810 31                        ; ragged.py:810:31
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[214:215], v[166:167], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[216:217], v[166:167], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[214:215], v[168:169], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[216:217], v[168:169], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[218:219], v[170:171], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[220:221], v[170:171], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[218:219], v[172:173], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[220:221], v[172:173], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[214:215], v[200:201], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[222:223], v[174:175], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[224:225], v[174:175], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[222:223], v[176:177], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[224:225], v[176:177], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[214:215], v[198:199], v[128:135] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[136:143], v[226:227], v[178:179], v[136:143] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[228:229], v[178:179], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[226:227], v[180:181], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[228:229], v[180:181], v[160:167] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[216:217], v[198:199], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[216:217], v[200:201], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[218:219], v[202:203], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[220:221], v[202:203], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[218:219], v[204:205], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[220:221], v[204:205], v[192:199] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v128, v136
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[222:223], v[206:207], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[224:225], v[206:207], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[222:223], v[208:209], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[224:225], v[208:209], v[192:199] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v129, v137
	.loc	1 810 31                        ; ragged.py:810:31
	v_wmma_i32_16x16x16_iu4 v[168:175], v[226:227], v[210:211], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[176:183], v[228:229], v[210:211], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[226:227], v[212:213], v[184:191] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[192:199], v[228:229], v[212:213], v[192:199] neg_lo:[1,1,0]
	.loc	1 821 27                        ; ragged.py:821:27
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
	.loc	1 823 40                        ; ragged.py:823:40
	v_cndmask_b32_e64 v192, 0x80000000, v86, s4
	v_cndmask_b32_e64 v193, 0x80000000, v85, s3
	v_cndmask_b32_e64 v194, 0x80000000, v84, s2
	v_cndmask_b32_e32 v195, 0x80000000, v83, vcc_lo
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v134, v142
	.loc	1 823 40                        ; ragged.py:823:40
	s_clause 0x3
	buffer_load_u16 v192, v192, s[80:83], 0 offen
	buffer_load_u16 v193, v193, s[80:83], 0 offen
	buffer_load_u16 v194, v194, s[80:83], 0 offen
	buffer_load_u16 v195, v195, s[80:83], 0 offen
	.loc	1 821 27                        ; ragged.py:821:27
	v_cvt_f32_i32_e32 v142, v150
	v_cvt_f32_i32_e32 v150, v158
	v_cvt_f32_i32_e32 v158, v166
	v_cvt_f32_i32_e32 v135, v143
	v_cvt_f32_i32_e32 v143, v151
	v_cvt_f32_i32_e32 v151, v159
	v_cvt_f32_i32_e32 v159, v167
	v_cvt_f32_i32_e32 v167, v175
	v_cvt_f32_i32_e32 v132, v140
	v_cvt_f32_i32_e32 v140, v148
	v_cvt_f32_i32_e32 v148, v156
	v_cvt_f32_i32_e32 v156, v164
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v172, v180
	v_cvt_f32_i32_e32 v180, v188
	v_cvt_f32_i32_e32 v188, v196
	v_cvt_f32_i32_e32 v133, v141
	v_cvt_f32_i32_e32 v141, v149
	v_cvt_f32_i32_e32 v175, v183
	v_cvt_f32_i32_e32 v183, v191
	v_cvt_f32_i32_e32 v191, v199
	v_cvt_f32_i32_e32 v149, v157
	v_cvt_f32_i32_e32 v157, v165
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v173, v181
	v_cvt_f32_i32_e32 v174, v182
	v_cvt_f32_i32_e32 v181, v189
	v_cvt_f32_i32_e32 v182, v190
	v_cvt_f32_i32_e32 v189, v197
	v_cvt_f32_i32_e32 v190, v198
	.loc	1 793 19                        ; ragged.py:793:19
	v_add_nc_u32_e32 v84, 2, v84
	v_add_nc_u32_e32 v86, 2, v86
	v_add_nc_u32_e32 v83, 2, v83
	v_add_nc_u32_e32 v85, 2, v85
	.loc	1 823 40                        ; ragged.py:823:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v195, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 828 21                        ; ragged.py:828:21
	v_dual_mul_f32 v177, v177, v195 :: v_dual_lshlrev_b32 v194, 16, v194
	v_dual_mul_f32 v167, v167, v194 :: v_dual_lshlrev_b32 v192, 16, v192
	v_dual_mul_f32 v160, v160, v194 :: v_dual_lshlrev_b32 v193, 16, v193
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v161, v161, v194 :: v_dual_mul_f32 v196, v128, v192
	.loc	1 830 40                        ; ragged.py:830:40
	v_cndmask_b32_e64 v128, 0x80000000, v82, s36
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v199, v131, v192
	v_mul_f32_e32 v197, v129, v192
	v_mul_f32_e32 v198, v130, v192
	v_mul_f32_e32 v200, v132, v192
	.loc	1 830 40                        ; ragged.py:830:40
	buffer_load_u16 v128, v128, s[92:95], 0 offen
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v201, v133, v192
	v_mul_f32_e32 v202, v134, v192
	v_mul_f32_e32 v203, v135, v192
	v_mul_f32_e32 v204, v136, v192
	v_mul_f32_e32 v205, v137, v192
	v_mul_f32_e32 v206, v138, v192
	v_mul_f32_e32 v207, v139, v192
	v_mul_f32_e32 v208, v140, v192
	v_mul_f32_e32 v209, v141, v192
	v_mul_f32_e32 v210, v142, v192
	v_mul_f32_e32 v192, v143, v192
	.loc	1 835 21                        ; ragged.py:835:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 21                        ; ragged.py:828:21
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
	v_dual_mul_f32 v159, v159, v193 :: v_dual_mul_f32 v162, v162, v194
	v_mul_f32_e32 v179, v179, v195
	v_mul_f32_e32 v163, v163, v194
	v_dual_mul_f32 v164, v164, v194 :: v_dual_mul_f32 v181, v181, v195
	v_mul_f32_e32 v165, v165, v194
	v_dual_mul_f32 v166, v166, v194 :: v_dual_mul_f32 v183, v183, v195
	v_dual_mul_f32 v168, v168, v194 :: v_dual_mul_f32 v185, v185, v195
	v_dual_mul_f32 v169, v169, v194 :: v_dual_mul_f32 v176, v176, v195
	v_dual_mul_f32 v170, v170, v194 :: v_dual_mul_f32 v187, v187, v195
	v_dual_mul_f32 v171, v171, v194 :: v_dual_mul_f32 v178, v178, v195
	v_dual_mul_f32 v172, v172, v194 :: v_dual_mul_f32 v189, v189, v195
	v_dual_mul_f32 v173, v173, v194 :: v_dual_mul_f32 v180, v180, v195
	v_dual_mul_f32 v174, v174, v194 :: v_dual_mul_f32 v191, v191, v195
	v_dual_mul_f32 v175, v175, v194 :: v_dual_mul_f32 v182, v182, v195
	.loc	1 793 19                        ; ragged.py:793:19
	v_add_nc_u32_e32 v82, s70, v82
	.loc	1 830 40                        ; ragged.py:830:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v128, 16, v128
	.loc	1 835 21                        ; ragged.py:835:21
	ds_store_b32 v126, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[128:131], v127
	ds_load_b128 v[132:135], v127 offset:16
	ds_load_b128 v[136:139], v127 offset:512
	ds_load_b128 v[140:143], v127 offset:528
	.loc	1 828 21                        ; ragged.py:828:21
	v_mul_f32_e32 v184, v184, v195
	v_mul_f32_e32 v186, v186, v195
	v_mul_f32_e32 v188, v188, v195
	v_mul_f32_e32 v190, v190, v195
	.loc	1 836 17                        ; ragged.py:836:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v18, v196, v128 :: v_dual_fmac_f32 v63, v203, v135
	v_dual_fmac_f32 v69, v197, v129 :: v_dual_fmac_f32 v68, v198, v130
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v59, v207, v139
	v_dual_fmac_f32 v67, v199, v131 :: v_dual_fmac_f32 v66, v200, v132
	v_fmac_f32_e32 v53, v145, v129
	v_dual_fmac_f32 v65, v201, v133 :: v_dual_fmac_f32 v64, v202, v134
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v55, v192, v143
	v_dual_fmac_f32 v62, v204, v136 :: v_dual_fmac_f32 v51, v147, v131
	v_dual_fmac_f32 v61, v205, v137 :: v_dual_fmac_f32 v60, v206, v138
	v_dual_fmac_f32 v49, v149, v133 :: v_dual_fmac_f32 v58, v208, v140
	v_fmac_f32_e32 v47, v151, v135
	v_dual_fmac_f32 v57, v209, v141 :: v_dual_fmac_f32 v56, v210, v142
	v_dual_fmac_f32 v45, v153, v137 :: v_dual_fmac_f32 v54, v144, v128
	v_dual_fmac_f32 v43, v155, v139 :: v_dual_fmac_f32 v52, v146, v130
	v_dual_fmac_f32 v41, v157, v141 :: v_dual_fmac_f32 v50, v148, v132
	v_dual_fmac_f32 v39, v159, v143 :: v_dual_fmac_f32 v48, v150, v134
	v_dual_fmac_f32 v37, v161, v129 :: v_dual_fmac_f32 v46, v152, v136
	v_dual_fmac_f32 v35, v163, v131 :: v_dual_fmac_f32 v44, v154, v138
	v_fmac_f32_e32 v33, v164, v132
	v_dual_fmac_f32 v42, v156, v140 :: v_dual_fmac_f32 v31, v166, v134
	v_dual_fmac_f32 v40, v158, v142 :: v_dual_fmac_f32 v29, v168, v136
	v_dual_fmac_f32 v38, v160, v128 :: v_dual_fmac_f32 v27, v170, v138
	v_dual_fmac_f32 v36, v162, v130 :: v_dual_fmac_f32 v25, v172, v140
	v_dual_fmac_f32 v32, v165, v133 :: v_dual_fmac_f32 v23, v174, v142
	v_dual_fmac_f32 v30, v167, v135 :: v_dual_fmac_f32 v15, v177, v129
	v_dual_fmac_f32 v28, v169, v137 :: v_dual_fmac_f32 v13, v179, v131
	v_dual_fmac_f32 v26, v171, v139 :: v_dual_fmac_f32 v11, v181, v133
	v_dual_fmac_f32 v24, v173, v141 :: v_dual_fmac_f32 v9, v183, v135
	v_dual_fmac_f32 v22, v175, v143 :: v_dual_fmac_f32 v7, v185, v137
	v_dual_fmac_f32 v16, v176, v128 :: v_dual_fmac_f32 v5, v187, v139
	v_dual_fmac_f32 v14, v178, v130 :: v_dual_fmac_f32 v3, v189, v141
	v_dual_fmac_f32 v12, v180, v132 :: v_dual_fmac_f32 v1, v191, v143
	v_fmac_f32_e32 v10, v182, v134
	v_fmac_f32_e32 v8, v184, v136
	v_fmac_f32_e32 v6, v186, v138
	v_fmac_f32_e32 v4, v188, v140
	v_fmac_f32_e32 v2, v190, v142
	.loc	1 793 19                        ; ragged.py:793:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_readlane_b32 s20, v230, 0
	v_readlane_b32 s26, v230, 6
	v_readlane_b32 s27, v230, 7
	v_readlane_b32 s21, v230, 1
	v_readlane_b32 s22, v230, 2
	v_readlane_b32 s23, v230, 3
	v_readlane_b32 s24, v230, 4
	v_readlane_b32 s25, v230, 5
.LBB0_4:                                ; %._crit_edge
	.loc	1 839 9 is_stmt 1               ; ragged.py:839:9
	v_bfe_u32 v87, v18, 16, 1
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v86, v17, s98
	v_mul_lo_u32 v17, v21, s98
	.loc	1 839 9                         ; ragged.py:839:9
	v_bfe_u32 v21, v69, 16, 1
	v_bfe_u32 v88, v68, 16, 1
	v_add3_u32 v87, v18, v87, 0x7fff
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s20, v69, v69
	v_add3_u32 v18, v69, v21, 0x7fff
	v_add3_u32 v21, v68, v88, 0x7fff
	v_cmp_o_f32_e64 s21, v68, v68
	v_bfe_u32 v68, v67, 16, 1
	v_bfe_u32 v69, v66, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v87.h, s19
	v_bfe_u32 v87, v65, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s20
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v67, v66, v69, 0x7fff
	v_cmp_o_f32_e64 s20, v66, v66
	v_add3_u32 v66, v65, v87, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s21
	v_cmp_o_f32_e64 s21, v65, v65
	v_bfe_u32 v65, v64, 16, 1
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s20
	v_bfe_u32 v67, v63, 16, 1
	v_cndmask_b16 v21.h, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v62, 16, 1
	v_add3_u32 v65, v64, v65, 0x7fff
	v_cmp_o_f32_e64 s19, v64, v64
	v_add3_u32 v64, v63, v67, 0x7fff
	v_cmp_o_f32_e64 s20, v63, v63
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s21
	v_add3_u32 v63, v62, v68, 0x7fff
	v_cmp_o_f32_e64 s21, v62, v62
	v_cndmask_b16 v62.l, 0x7fff, v65.h, s19
	v_bfe_u32 v65, v61, 16, 1
	v_cndmask_b16 v62.h, 0x7fff, v64.h, s20
	v_bfe_u32 v64, v60, 16, 1
	v_bfe_u32 v67, v59, 16, 1
	v_cmp_o_f32_e64 s19, v61, v61
	v_add3_u32 v65, v61, v65, 0x7fff
	v_cmp_o_f32_e64 s20, v60, v60
	v_add3_u32 v61, v60, v64, 0x7fff
	v_add3_u32 v60, v59, v67, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v63.h, s21
	v_cmp_o_f32_e64 s21, v59, v59
	v_bfe_u32 v59, v58, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v61.h, s20
	v_bfe_u32 v61, v57, 16, 1
	v_cndmask_b16 v63.h, 0x7fff, v65.h, s19
	v_bfe_u32 v64, v56, 16, 1
	v_add3_u32 v59, v58, v59, 0x7fff
	v_cmp_o_f32_e64 s19, v58, v58
	v_add3_u32 v58, v57, v61, 0x7fff
	v_cmp_o_f32_e64 s20, v57, v57
	v_cndmask_b16 v60.h, 0x7fff, v60.h, s21
	v_add3_u32 v57, v56, v64, 0x7fff
	v_cmp_o_f32_e64 s21, v56, v56
	v_cndmask_b16 v56.l, 0x7fff, v59.h, s19
	v_bfe_u32 v59, v55, 16, 1
	v_cndmask_b16 v56.h, 0x7fff, v58.h, s20
	v_bfe_u32 v58, v54, 16, 1
	v_bfe_u32 v61, v53, 16, 1
	v_cmp_o_f32_e64 s19, v55, v55
	v_add3_u32 v59, v55, v59, 0x7fff
	v_cmp_o_f32_e64 s20, v54, v54
	v_add3_u32 v55, v54, v58, 0x7fff
	v_add3_u32 v54, v53, v61, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v57.h, s21
	v_cmp_o_f32_e64 s21, v53, v53
	v_bfe_u32 v53, v52, 16, 1
	v_cndmask_b16 v54.l, 0x7fff, v55.h, s20
	v_bfe_u32 v55, v51, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s19
	v_bfe_u32 v58, v50, 16, 1
	v_add3_u32 v53, v52, v53, 0x7fff
	v_cmp_o_f32_e64 s19, v52, v52
	v_add3_u32 v52, v51, v55, 0x7fff
	v_cmp_o_f32_e64 s20, v51, v51
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s21
	v_add3_u32 v51, v50, v58, 0x7fff
	v_cmp_o_f32_e64 s21, v50, v50
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s19
	v_bfe_u32 v53, v49, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s20
	v_bfe_u32 v52, v48, 16, 1
	v_bfe_u32 v55, v47, 16, 1
	v_cmp_o_f32_e64 s19, v49, v49
	v_add3_u32 v53, v49, v53, 0x7fff
	v_cmp_o_f32_e64 s20, v48, v48
	v_add3_u32 v49, v48, v52, 0x7fff
	v_add3_u32 v48, v47, v55, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s21
	v_cmp_o_f32_e64 s21, v47, v47
	v_bfe_u32 v47, v46, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s20
	v_bfe_u32 v49, v45, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s19
	v_bfe_u32 v52, v44, 16, 1
	v_add3_u32 v47, v46, v47, 0x7fff
	v_cmp_o_f32_e64 s19, v46, v46
	v_add3_u32 v46, v45, v49, 0x7fff
	v_cmp_o_f32_e64 s20, v45, v45
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s21
	v_add3_u32 v45, v44, v52, 0x7fff
	v_cmp_o_f32_e64 s21, v44, v44
	v_cndmask_b16 v44.l, 0x7fff, v47.h, s19
	v_bfe_u32 v47, v43, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s20
	v_bfe_u32 v46, v42, 16, 1
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e64 s19, v43, v43
	v_add3_u32 v47, v43, v47, 0x7fff
	v_cmp_o_f32_e64 s20, v42, v42
	v_add3_u32 v43, v42, v46, 0x7fff
	v_add3_u32 v42, v41, v49, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s21
	v_cmp_o_f32_e64 s21, v41, v41
	v_bfe_u32 v41, v40, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s20
	v_bfe_u32 v43, v39, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s19
	v_bfe_u32 v46, v38, 16, 1
	v_add3_u32 v41, v40, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v40, v39, v43, 0x7fff
	v_cmp_o_f32_e64 s20, v39, v39
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s21
	v_add3_u32 v39, v38, v46, 0x7fff
	v_cmp_o_f32_e64 s21, v38, v38
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s19
	v_bfe_u32 v41, v37, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s20
	v_bfe_u32 v40, v36, 16, 1
	v_bfe_u32 v43, v35, 16, 1
	v_cmp_o_f32_e64 s19, v37, v37
	v_add3_u32 v41, v37, v41, 0x7fff
	v_cmp_o_f32_e64 s20, v36, v36
	v_add3_u32 v37, v36, v40, 0x7fff
	v_add3_u32 v36, v35, v43, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s21
	v_cmp_o_f32_e64 s21, v35, v35
	v_bfe_u32 v35, v33, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s20
	v_bfe_u32 v37, v32, 16, 1
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s19
	v_bfe_u32 v40, v31, 16, 1
	v_add3_u32 v35, v33, v35, 0x7fff
	v_cmp_o_f32_e64 s19, v33, v33
	v_add3_u32 v33, v32, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v32, v32
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s21
	v_add3_u32 v32, v31, v40, 0x7fff
	v_cmp_o_f32_e64 s21, v31, v31
	v_cndmask_b16 v31.l, 0x7fff, v35.h, s19
	v_bfe_u32 v35, v30, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v29, 16, 1
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s19, v30, v30
	v_add3_u32 v35, v30, v35, 0x7fff
	v_cmp_o_f32_e64 s20, v29, v29
	v_add3_u32 v30, v29, v33, 0x7fff
	v_add3_u32 v29, v28, v37, 0x7fff
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_cmp_o_f32_e64 s21, v28, v28
	v_bfe_u32 v28, v27, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v26, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v35.h, s19
	v_bfe_u32 v33, v25, 16, 1
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v27, v27
	v_add3_u32 v27, v26, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v26, v26
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s21
	v_add3_u32 v26, v25, v33, 0x7fff
	v_cmp_o_f32_e64 s21, v25, v25
	v_cndmask_b16 v25.l, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v24, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v23, 16, 1
	v_bfe_u32 v30, v22, 16, 1
	v_cmp_o_f32_e64 s19, v24, v24
	v_add3_u32 v28, v24, v28, 0x7fff
	v_cmp_o_f32_e64 s20, v23, v23
	v_add3_u32 v24, v23, v27, 0x7fff
	v_add3_u32 v23, v22, v30, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_cmp_o_f32_e64 s21, v22, v22
	v_bfe_u32 v22, v16, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v24.h, s20
	v_bfe_u32 v24, v15, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v27, v14, 16, 1
	v_add3_u32 v22, v16, v22, 0x7fff
	v_cmp_o_f32_e64 s19, v16, v16
	v_add3_u32 v16, v15, v24, 0x7fff
	v_cmp_o_f32_e64 s20, v15, v15
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s21
	v_add3_u32 v15, v14, v27, 0x7fff
	v_cmp_o_f32_e64 s21, v14, v14
	v_cndmask_b16 v14.l, 0x7fff, v22.h, s19
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s20
	v_bfe_u32 v16, v12, 16, 1
	v_bfe_u32 v24, v11, 16, 1
	v_cmp_o_f32_e64 s19, v13, v13
	v_add3_u32 v22, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s20, v12, v12
	v_add3_u32 v13, v12, v16, 0x7fff
	v_add3_u32 v12, v11, v24, 0x7fff
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s21
	v_cmp_o_f32_e64 s21, v11, v11
	v_bfe_u32 v11, v10, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s20
	v_bfe_u32 v13, v9, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v22.h, s19
	v_bfe_u32 v16, v8, 16, 1
	v_add3_u32 v11, v10, v11, 0x7fff
	v_cmp_o_f32_e64 s19, v10, v10
	v_add3_u32 v10, v9, v13, 0x7fff
	v_cmp_o_f32_e64 s20, v9, v9
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s21
	v_add3_u32 v9, v8, v16, 0x7fff
	v_cmp_o_f32_e64 s21, v8, v8
	v_cndmask_b16 v8.l, 0x7fff, v11.h, s19
	v_bfe_u32 v11, v7, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v10.h, s20
	v_bfe_u32 v10, v6, 16, 1
	v_bfe_u32 v13, v5, 16, 1
	v_cmp_o_f32_e64 s19, v7, v7
	v_add3_u32 v11, v7, v11, 0x7fff
	v_cmp_o_f32_e64 s20, v6, v6
	v_add3_u32 v7, v6, v10, 0x7fff
	v_add3_u32 v6, v5, v13, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s21
	v_cmp_o_f32_e64 s21, v5, v5
	v_bfe_u32 v5, v4, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v7.h, s20
	v_bfe_u32 v7, v3, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v11.h, s19
	v_bfe_u32 v10, v2, 16, 1
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cmp_o_f32_e64 s19, v4, v4
	v_add3_u32 v4, v3, v7, 0x7fff
	v_bfe_u32 v7, v1, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s21
	v_cmp_o_f32_e64 s20, v3, v3
	v_add3_u32 v3, v2, v10, 0x7fff
	v_dual_mov_b32 v37, 0x5410 :: v_dual_and_b32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v2, v2
	v_add3_u32 v2, v1, v7, 0x7fff
	v_cmp_o_f32_e64 s22, v1, v1
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v2.h, s22
	.loc	1 742 36                        ; ragged.py:742:36
	v_lshrrev_b32_e32 v34, 1, v34
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v28, v38, v45, s19
	v_cndmask_b32_e64 v30, v45, v38, s19
	v_cndmask_b32_e64 v35, v32, v36, s19
	v_cndmask_b32_e64 v32, v36, v32, s19
	v_cndmask_b32_e64 v36, v26, v29, s19
	v_cndmask_b32_e64 v26, v29, v26, s19
	v_cndmask_b32_e64 v29, v23, v25, s19
	v_cndmask_b32_e64 v23, v25, v23, s19
	v_cndmask_b32_e64 v25, v12, v14, s19
	v_cndmask_b32_e64 v12, v14, v12, s19
	v_cndmask_b32_e64 v14, v8, v15, s19
	v_cndmask_b32_e64 v8, v15, v8, s19
	v_cndmask_b32_e64 v15, v1, v9, s19
	v_cndmask_b32_e64 v1, v9, v1, s19
	v_cndmask_b32_e64 v9, v0, v6, s19
	v_mov_b32_e32 v38, 0x7632
	v_cndmask_b32_e64 v0, v6, v0, s19
	v_cndmask_b32_e64 v6, 0x1054, v37, s19
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v79, s71, v34
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v3, v18, v66, s19
	v_cndmask_b32_e64 v37, 0x3276, v38, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v6, v6, 8, v6
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v84, 1, v79
	v_or_b32_e32 v83, 2, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_lshl_or_b32 v37, v37, 8, v37
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s18, s98, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_and_b32_e32 v6, 0x540054, v6
	v_cndmask_b32_e64 v2, v66, v18, s19
	v_cndmask_b32_e64 v5, v21, v62, s19
	v_and_b32_e32 v37, 0x760076, v37
	v_cndmask_b32_e64 v10, v63, v56, s19
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e64 v13, v60, v57, s19
	v_cndmask_b32_e64 v18, v54, v51, s19
	v_cndmask_b32_e64 v22, v50, v48, s19
	v_cndmask_b32_e64 v27, v44, v42, s19
	v_cndmask_b32_e64 v33, v31, v39, s19
	v_cndmask_b32_e64 v31, v39, v31, s19
	v_permlanex16_b32 v3, v3, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v37, v37, 4, v37
	v_and_b32_e32 v6, 0x5040504, v6
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s17, s98, v84
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v67, v79, v86, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s16, s98, v83
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v68, v84, v86, 1
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v82, 3, v79
	.loc	1 840 13                        ; ragged.py:840:13
	v_mul_lo_u32 v85, v19, s98
	v_mul_lo_u32 v19, v20, s98
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v20.h, 0
	v_cndmask_b32_e64 v4, v62, v21, s19
	v_cndmask_b32_e64 v7, v56, v63, s19
	v_cndmask_b32_e64 v11, v57, v60, s19
	v_cndmask_b32_e64 v16, v51, v54, s19
	v_cndmask_b32_e64 v21, v48, v50, s19
	v_cndmask_b32_e64 v24, v42, v44, s19
	v_permlanex16_b32 v5, v5, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x7060706, v37
	v_permlanex16_b32 v8, v8, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v3, v2, v6
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s18, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v69, v83, v86, 1
	v_cndmask_b32_e64 v67, 0x80000000, v67, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s17, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v81, 4, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v68, 0x80000000, v68, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s16, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v80, 5, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s15, s98, v82
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v2, v3, v2, v37
	v_perm_b32 v3, v5, v4, v6
	v_perm_b32 v4, v5, v4, v37
	v_perm_b32 v5, v10, v7, v6
	v_perm_b32 v7, v10, v7, v37
	v_perm_b32 v10, v13, v11, v6
	v_perm_b32 v11, v13, v11, v37
	v_perm_b32 v13, v18, v16, v6
	v_perm_b32 v16, v18, v16, v37
	v_perm_b32 v18, v22, v21, v6
	v_perm_b32 v21, v22, v21, v37
	v_perm_b32 v22, v27, v24, v6
	v_perm_b32 v24, v27, v24, v37
	v_perm_b32 v27, v30, v28, v6
	v_perm_b32 v28, v30, v28, v37
	v_perm_b32 v30, v31, v33, v6
	v_perm_b32 v31, v31, v33, v37
	v_perm_b32 v33, v32, v35, v6
	v_perm_b32 v32, v32, v35, v37
	v_perm_b32 v35, v26, v36, v6
	v_perm_b32 v26, v26, v36, v37
	v_perm_b32 v36, v23, v29, v6
	v_perm_b32 v23, v23, v29, v37
	v_perm_b32 v29, v12, v25, v6
	v_perm_b32 v12, v12, v25, v37
	v_perm_b32 v25, v8, v14, v6
	v_perm_b32 v8, v8, v14, v37
	v_perm_b32 v14, v1, v15, v6
	v_perm_b32 v6, v0, v9, v6
	v_perm_b32 v0, v0, v9, v37
	v_mov_b16_e32 v9.l, v38.h
	v_mov_b16_e32 v9.h, v20.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v69, 0x80000000, v69, s19
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v78, 6, v79
	.loc	1 839 9                         ; ragged.py:839:9
	buffer_store_b16 v38, v67, s[20:23], 0 offen
	v_add_lshl_u32 v38, v82, v86, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s14, s98, v81
	v_cmp_gt_i32_e64 s13, s98, v80
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v20.l, v2.h
	s_clause 0x1
	buffer_store_b16 v9, v68, s[20:23], 0 offen
	buffer_store_b16 v2, v69, s[20:23], 0 offen
	v_add_lshl_u32 v2, v81, v86, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s15, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v77, 7, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s12, s98, v78
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v9, 0x80000000, v38, s19
	v_add_lshl_u32 v38, v80, v86, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s14, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v76, 0x80, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v67, v78, v86, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s13, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v75, 0x81, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s11, s98, v77
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v38, 0x80000000, v38, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s12, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v74, 0x82, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_perm_b32 v1, v1, v15, v37
	v_mov_b16_e32 v37.l, v3.h
	v_mov_b16_e32 v37.h, v20.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s10, s98, v76
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v67, 0x80000000, v67, s19
	s_clause 0x1
	buffer_store_b16 v20, v9, s[20:23], 0 offen
	buffer_store_b16 v3, v2, s[20:23], 0 offen
	v_add_lshl_u32 v2, v77, v86, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s9, s98, v75
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v76, v86, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s11, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v73, 0x83, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s8, s98, v74
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v15.l, v4.h
	s_clause 0x1
	buffer_store_b16 v37, v38, s[20:23], 0 offen
	buffer_store_b16 v4, v67, s[20:23], 0 offen
	v_add_lshl_u32 v4, v75, v86, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s10, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v72, 0x84, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v15.h, v20.h
	v_add_lshl_u32 v9, v74, v86, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s9, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v71, 0x85, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s7, s98, v73
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s8, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v70, 0x86, v79
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v40.l, v5.h
	v_mov_b16_e32 v40.h, v20.h
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s6, s98, v72
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s19
	s_clause 0x1
	buffer_store_b16 v15, v2, s[20:23], 0 offen
	buffer_store_b16 v5, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v73, v86, 1
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s5, s98, v71
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v72, v86, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s7, s4
	.loc	1 742 18                        ; ragged.py:742:18
	v_or_b32_e32 v34, 0x87, v79
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s1, s98, v70
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v40, v4, s[20:23], 0 offen
	buffer_store_b16 v7, v9, s[20:23], 0 offen
	v_add_lshl_u32 v4, v71, v86, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s6, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v39.l, v7.h
	v_mov_b16_e32 v39.h, v20.h
	v_add_lshl_u32 v5, v70, v86, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s5, s4
	.loc	1 744 20                        ; ragged.py:744:20
	v_cmp_gt_i32_e64 s0, s98, v34
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s19
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s19, s1, s4
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v42.l, v10.h
	v_mov_b16_e32 v42.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s19
	s_clause 0x1
	buffer_store_b16 v39, v2, s[20:23], 0 offen
	buffer_store_b16 v10, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v34, v86, 1
	v_add_lshl_u32 v3, v79, v85, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s0, s4
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v42, v4, s[20:23], 0 offen
	buffer_store_b16 v11, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v84, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s18, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v41.l, v11.h
	v_mov_b16_e32 v41.h, v20.h
	v_add_lshl_u32 v5, v83, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s17, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v44.l, v13.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s16, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v44.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_store_b16 v41, v2, s[20:23], 0 offen
	buffer_store_b16 v13, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v82, v85, 1
	v_add_lshl_u32 v3, v81, v85, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s15, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v44, v4, s[20:23], 0 offen
	buffer_store_b16 v16, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v80, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s14, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v43.l, v16.h
	v_mov_b16_e32 v43.h, v20.h
	v_add_lshl_u32 v5, v78, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s13, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v46.l, v18.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s12, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v46.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_store_b16 v43, v2, s[20:23], 0 offen
	buffer_store_b16 v18, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v77, v85, 1
	v_add_lshl_u32 v3, v76, v85, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s11, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v46, v4, s[20:23], 0 offen
	buffer_store_b16 v21, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v75, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s10, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v45.l, v21.h
	v_mov_b16_e32 v45.h, v20.h
	v_add_lshl_u32 v5, v74, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s9, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v48.l, v22.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s8, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v48.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_store_b16 v45, v2, s[20:23], 0 offen
	buffer_store_b16 v22, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v73, v85, 1
	v_add_lshl_u32 v3, v72, v85, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s7, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v48, v4, s[20:23], 0 offen
	buffer_store_b16 v24, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v71, v85, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s6, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v47.l, v24.h
	v_mov_b16_e32 v47.h, v20.h
	v_add_lshl_u32 v5, v70, v85, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s5, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v50.l, v27.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s4, s1, s3
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v50.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	s_clause 0x1
	buffer_store_b16 v47, v2, s[20:23], 0 offen
	buffer_store_b16 v27, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v34, v85, 1
	v_add_lshl_u32 v3, v79, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s0, s3
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v50, v4, s[20:23], 0 offen
	buffer_store_b16 v28, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v84, v19, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s18, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v49.l, v28.h
	v_mov_b16_e32 v49.h, v20.h
	v_add_lshl_u32 v5, v83, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s17, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v52.l, v30.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s16, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v52.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_store_b16 v49, v2, s[20:23], 0 offen
	buffer_store_b16 v30, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v82, v19, 1
	v_add_lshl_u32 v3, v81, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s15, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v52, v4, s[20:23], 0 offen
	buffer_store_b16 v31, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v80, v19, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s14, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v51.l, v31.h
	v_mov_b16_e32 v51.h, v20.h
	v_add_lshl_u32 v5, v78, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s13, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v54.l, v33.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s12, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v54.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_store_b16 v51, v2, s[20:23], 0 offen
	buffer_store_b16 v33, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v77, v19, 1
	v_add_lshl_u32 v3, v76, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s11, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v54, v4, s[20:23], 0 offen
	buffer_store_b16 v32, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v75, v19, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s10, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v53.l, v32.h
	v_mov_b16_e32 v53.h, v20.h
	v_add_lshl_u32 v5, v74, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s9, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v56.l, v35.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s8, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v56.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_store_b16 v53, v2, s[20:23], 0 offen
	buffer_store_b16 v35, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v73, v19, 1
	v_add_lshl_u32 v3, v72, v19, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s7, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v56, v4, s[20:23], 0 offen
	buffer_store_b16 v26, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v71, v19, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s6, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v55.l, v26.h
	v_mov_b16_e32 v55.h, v20.h
	v_add_lshl_u32 v5, v70, v19, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s5, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v58.l, v36.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s3, s1, s2
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v58.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_clause 0x1
	buffer_store_b16 v55, v2, s[20:23], 0 offen
	buffer_store_b16 v36, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v34, v19, 1
	v_add_lshl_u32 v3, v79, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s0, s2
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v58, v4, s[20:23], 0 offen
	buffer_store_b16 v23, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v84, v17, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v57.l, v23.h
	v_mov_b16_e32 v57.h, v20.h
	v_add_lshl_u32 v5, v83, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v60.l, v29.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v60.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_store_b16 v57, v2, s[20:23], 0 offen
	buffer_store_b16 v29, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v82, v17, 1
	v_add_lshl_u32 v3, v81, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v60, v4, s[20:23], 0 offen
	buffer_store_b16 v12, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v80, v17, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v59.l, v12.h
	v_mov_b16_e32 v59.h, v20.h
	v_add_lshl_u32 v5, v78, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v62.l, v25.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v62.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_store_b16 v59, v2, s[20:23], 0 offen
	buffer_store_b16 v25, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v77, v17, 1
	v_add_lshl_u32 v3, v76, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	s_clause 0x1
	buffer_store_b16 v62, v4, s[20:23], 0 offen
	buffer_store_b16 v8, v5, s[20:23], 0 offen
	v_add_lshl_u32 v4, v75, v17, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v5, v74, v17, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v61.l, v8.h
	v_mov_b16_e32 v61.h, v20.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v64.l, v14.h
	v_mov_b16_e32 v64.h, v20.h
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	s_clause 0x1
	buffer_store_b16 v61, v2, s[20:23], 0 offen
	buffer_store_b16 v14, v3, s[20:23], 0 offen
	v_add_lshl_u32 v2, v73, v17, 1
	v_mov_b16_e32 v63.l, v1.h
	s_clause 0x1
	buffer_store_b16 v64, v4, s[20:23], 0 offen
	buffer_store_b16 v1, v5, s[20:23], 0 offen
	v_add_lshl_u32 v1, v72, v17, 1
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v3, v71, v17, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_add_lshl_u32 v4, v70, v17, 1
	v_add_lshl_u32 v5, v34, v17, 1
	v_mov_b16_e32 v63.h, v20.h
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_mov_b16_e32 v66.l, v6.h
	v_mov_b16_e32 v66.h, v20.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 842 18                        ; ragged.py:842:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 839 9                         ; ragged.py:839:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_mov_b16_e32 v65.l, v0.h
	v_mov_b16_e32 v65.h, v20.h
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b16 v63, v2, s[20:23], 0 offen
	buffer_store_b16 v6, v1, s[20:23], 0 offen
	buffer_store_b16 v66, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v4, s[20:23], 0 offen
	buffer_store_b16 v65, v5, s[20:23], 0 offen
	.loc	1 702 5                         ; ragged.py:702:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 231
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 231
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12136
; TotalNumSgprs: 107
; NumVgprs: 231
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 231
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
	.short	728                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 8
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     231
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
