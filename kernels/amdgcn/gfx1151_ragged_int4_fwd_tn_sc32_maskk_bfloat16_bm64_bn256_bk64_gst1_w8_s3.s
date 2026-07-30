	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 810 0                         ; ragged.py:810:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 838 25 prologue_end           ; ragged.py:838:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 849 18                        ; ragged.py:849:18
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:836:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:836:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
.Ltmp2:
	.loc	1 838 25 is_stmt 1              ; ragged.py:838:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v53, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v66, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v84, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 840 33                        ; ragged.py:840:33
	s_sub_i32 s5, s35, s4
	.loc	1 841 24                        ; ragged.py:841:24
	s_mul_i32 s3, s4, s3
	.loc	1 840 22                        ; ragged.py:840:22
	s_min_i32 s5, s5, 1
	.loc	1 841 24                        ; ragged.py:841:24
	s_sub_i32 s2, s2, s3
	.loc	1 843 17                        ; ragged.py:843:17
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 849 32                        ; ragged.py:849:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 843 17                        ; ragged.py:843:17
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
	.loc	1 842 34                        ; ragged.py:842:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 842 20 is_stmt 0              ; ragged.py:842:20
	s_add_i32 s2, s2, s4
	.loc	1 845 20 is_stmt 1              ; ragged.py:845:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 846 23                        ; ragged.py:846:23
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 847 24                        ; ragged.py:847:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 848 22                        ; ragged.py:848:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 847 24                        ; ragged.py:847:24
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 848 22                        ; ragged.py:848:22
	s_load_b64 s[14:15], s[4:5], 0x0
	v_mov_b32_e32 v91, 0
	.loc	1 850 18                        ; ragged.py:850:18
	s_lshl_b32 s24, s6, 8
	.loc	1 849 18                        ; ragged.py:849:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s2
	.loc	1 932 25                        ; ragged.py:932:25
	v_add_nc_u32_e32 v68, s10, v1
	.loc	1 849 18                        ; ragged.py:849:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e32 vcc_lo, s[12:13], v[2:3]
	.loc	1 851 48 is_stmt 0              ; ragged.py:851:48
	v_cmp_gt_i64_e64 s2, s[14:15], v[2:3]
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s3, s[12:13], v[4:5]
	v_cmp_le_i64_e64 s5, s[12:13], v[6:7]
	v_cmp_le_i64_e64 s6, s[12:13], v[8:9]
	.loc	1 851 48                        ; ragged.py:851:48
	v_cmp_gt_i64_e64 s7, s[14:15], v[4:5]
	v_cmp_gt_i64_e64 s8, s[14:15], v[6:7]
	v_cmp_gt_i64_e64 s9, s[14:15], v[8:9]
	.loc	1 932 25 is_stmt 1              ; ragged.py:932:25
	v_add_nc_u32_e32 v70, 16, v68
	v_add_nc_u32_e32 v71, 32, v68
	v_add_nc_u32_e32 v72, 48, v68
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 901 19                        ; ragged.py:901:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s25, s[0:1], 0x50
	s_load_b32 s35, s[0:1], 0x48
	s_load_b256 s[16:23], s[0:1], 0x0
	.loc	1 849 18 is_stmt 1              ; ragged.py:849:18
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v3, 63, v0
	v_lshrrev_b32_e32 v10, 1, v0
	v_dual_mov_b32 v86, 0 :: v_dual_lshlrev_b32 v13, 5, v0
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v97, 0, v1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v9, s24, v0
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v11, 2, v84
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v12, 1, v0
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v15, 0x70, v10
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v13, 32, v13
	.loc	1 845 20                        ; ragged.py:845:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s28
	s_addc_u32 s1, s7, s29
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v10, s10, v3
	.loc	1 939 25                        ; ragged.py:939:25
	s_load_b32 s6, s[0:1], 0x0
	.loc	1 849 18                        ; ragged.py:849:18
	v_add_co_u32 v1, s0, s10, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s11, 0, s0
	.loc	1 915 39                        ; ragged.py:915:39
	s_mul_i32 s7, s25, s33
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v16, 28, v12
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s1, s[12:13], v[1:2]
	.loc	1 851 48 is_stmt 0              ; ragged.py:851:48
	v_cmp_gt_i64_e64 s5, s[14:15], v[1:2]
	v_add3_u32 v1, 0, v11, v13
	v_dual_mov_b32 v89, 0 :: v_dual_lshlrev_b32 v14, 1, v84
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v109, v97, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v110, v1, v16
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v111, 0, v14
	v_or_b32_e32 v4, 0x300, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s7, s6, v[9:10]
	v_or_b32_e32 v5, 0x3f0, v0
	v_or_b32_e32 v6, 0x700, v0
	v_or_b32_e32 v7, 0xb00, v0
	v_or_b32_e32 v8, 0xf00, v0
	.loc	1 898 28 is_stmt 1              ; ragged.py:898:28
	v_lshrrev_b32_e32 v92, 6, v0
	.loc	1 932 25                        ; ragged.py:932:25
	v_mul_lo_u32 v93, v68, s34
	.loc	1 901 19                        ; ragged.py:901:19
	v_mad_u64_u32 v[13:14], null, s33, 3, v[11:12]
	v_mad_u64_u32 v[14:15], null, s33, 5, v[11:12]
	v_mad_u64_u32 v[15:16], null, s33, 6, v[11:12]
	v_mad_u64_u32 v[16:17], null, s33, 7, v[11:12]
	v_mad_u64_u32 v[17:18], null, s33, 9, v[11:12]
	v_mad_u64_u32 v[18:19], null, s33, 10, v[11:12]
	v_mad_u64_u32 v[19:20], null, s33, 11, v[11:12]
	v_mad_u64_u32 v[20:21], null, s33, 12, v[11:12]
	v_mad_u64_u32 v[21:22], null, s33, 13, v[11:12]
	v_mad_u64_u32 v[22:23], null, s33, 14, v[11:12]
	.loc	1 932 25                        ; ragged.py:932:25
	v_mul_lo_u32 v94, v70, s34
	v_mul_lo_u32 v95, v71, s34
	v_mul_lo_u32 v96, v72, s34
	.loc	1 901 19                        ; ragged.py:901:19
	v_mad_u64_u32 v[23:24], null, s33, 15, v[11:12]
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v104, 0, v4
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v105, 0, v5
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v106, 0, v6
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v107, 0, v7
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v108, 0, v8
	v_mov_b32_e32 v1, s8
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s0, s33, v9
	.loc	1 901 19                        ; ragged.py:901:19
	v_or_b32_e32 v98, 12, v92
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v99, s33, v11
	v_lshl_add_u32 v100, s33, 1, v11
	v_lshl_add_u32 v101, s33, 2, v11
	v_lshl_add_u32 v102, s33, 3, v11
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v103, 0, v0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, s9
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v8, s15
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v3, s10
	v_mov_b32_e32 v5, s12
	v_mov_b32_e32 v7, s14
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s18
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s40, s1, s5
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s29, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s23, 0xffff
	.loc	1 939 25                        ; ragged.py:939:25
	s_mul_i32 s41, s34, s6
	s_mov_b32 s36, s22
	s_mov_b32 s18, s30
	s_mov_b32 s19, s31
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 903 28                        ; ragged.py:903:28
	s_lshl_b32 s1, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s5, s1, 1
	s_or_b32 s42, s1, 2
	s_or_b32 s7, s1, 3
	s_or_b32 s6, s1, 4
	s_or_b32 s39, s1, 5
	s_or_b32 s38, s1, 6
	s_or_b32 s23, s1, 7
	s_or_b32 s22, s1, 8
	s_or_b32 s15, s1, 9
	s_or_b32 s14, s1, 10
	s_or_b32 s13, s1, 11
	s_or_b32 s12, s1, 12
	s_or_b32 s11, s1, 13
	s_or_b32 s10, s1, 14
	s_or_b32 s9, s1, 15
	s_mul_i32 s43, s1, s33
	s_cmp_lt_i32 s1, s25
	v_add_nc_u32_e32 v117, s43, v11
	v_add_nc_u32_e32 v118, s43, v99
	v_add_nc_u32_e32 v119, s43, v100
	v_add_nc_u32_e32 v120, s43, v13
	v_add_nc_u32_e32 v121, s43, v101
	v_add_nc_u32_e32 v122, s43, v14
	v_add_nc_u32_e32 v123, s43, v15
	v_add_nc_u32_e32 v124, s43, v16
	v_add_nc_u32_e32 v125, s43, v102
	v_add_nc_u32_e32 v126, s43, v17
	v_add_nc_u32_e32 v127, s43, v18
	v_add_nc_u32_e32 v128, s43, v19
	v_add_nc_u32_e32 v129, s43, v20
	v_add_nc_u32_e32 v130, s43, v21
	v_add_nc_u32_e32 v131, s43, v22
	v_add_nc_u32_e32 v132, s43, v23
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s5, s25
	v_or_b32_e32 v112, s1, v92
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s42, s25
	v_or_b32_e32 v114, s1, v98
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s7, s25
	v_or_b32_e32 v115, 4, v112
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s6, s25
	v_or_b32_e32 v116, 8, v112
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s39, s25
	v_cmp_gt_i32_e64 s1, s25, v112
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s38, s25
	v_mad_u64_u32 v[112:113], null, v112, s35, v[10:11]
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s23, s25
	v_cmp_gt_i32_e64 s5, s25, v114
	s_cselect_b32 s23, -1, 0
	s_cmp_lt_i32 s22, s25
	v_mad_u64_u32 v[113:114], null, v114, s35, v[10:11]
	s_cselect_b32 s22, -1, 0
	s_cmp_lt_i32 s15, s25
	v_cmp_gt_i32_e64 s6, s25, v115
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s14, s25
	v_mad_u64_u32 v[114:115], null, v115, s35, v[10:11]
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s13, s25
	v_cmp_gt_i32_e64 s7, s25, v116
	s_cselect_b32 s13, -1, 0
	s_cmp_lt_i32 s12, s25
	v_mad_u64_u32 v[115:116], null, v116, s35, v[10:11]
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s11, s25
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s10, s25
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s9, s25
	s_cselect_b32 s9, -1, 0
	s_and_b32 s1, s40, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v112, 0x80000000, v112, s1
	s_and_b32 s1, s40, s6
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	s_and_b32 s1, s40, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v115, 0x80000000, v115, s1
	s_and_b32 s1, s40, s5
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	s_and_b32 s1, s0, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v116, 0x80000000, v117, s1
	s_and_b32 s1, s0, s44
	v_cndmask_b32_e64 v117, 0x80000000, v118, s1
	s_and_b32 s1, s0, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v118, 0x80000000, v119, s1
	s_and_b32 s1, s0, s45
	v_cndmask_b32_e64 v119, 0x80000000, v120, s1
	s_and_b32 s1, s0, s46
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v120, 0x80000000, v121, s1
	s_and_b32 s1, s0, s39
	.loc	1 938 40                        ; ragged.py:938:40
	s_mov_b32 s39, s31
	v_cndmask_b32_e64 v121, 0x80000000, v122, s1
	s_and_b32 s1, s0, s38
	s_mov_b32 s38, s30
	v_cndmask_b32_e64 v122, 0x80000000, v123, s1
	s_and_b32 s1, s0, s23
	.loc	1 931 40                        ; ragged.py:931:40
	s_mov_b32 s23, s31
	v_cndmask_b32_e64 v123, 0x80000000, v124, s1
	s_and_b32 s1, s0, s22
	s_mov_b32 s22, s30
	v_cndmask_b32_e64 v124, 0x80000000, v125, s1
	s_and_b32 s1, s0, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v125, 0x80000000, v126, s1
	s_and_b32 s1, s0, s14
	v_cndmask_b32_e64 v126, 0x80000000, v127, s1
	s_and_b32 s1, s0, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v127, 0x80000000, v128, s1
	s_and_b32 s1, s0, s12
	v_cndmask_b32_e64 v128, 0x80000000, v129, s1
	s_and_b32 s1, s0, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v129, 0x80000000, v130, s1
	s_and_b32 s1, s0, s10
	v_cndmask_b32_e64 v130, 0x80000000, v131, s1
	s_and_b32 s1, s0, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v131, 0x80000000, v132, s1
	.loc	1 916 34                        ; ragged.py:916:34
	s_clause 0x3
	buffer_load_u8 v112, v112, s[16:19], 0 offen
	buffer_load_u8 v114, v114, s[16:19], 0 offen
	buffer_load_u8 v115, v115, s[16:19], 0 offen
	buffer_load_u8 v113, v113, s[16:19], 0 offen
	.loc	1 917 34                        ; ragged.py:917:34
	s_clause 0xf
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v117, v117, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	buffer_load_u8 v120, v120, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	buffer_load_u8 v126, v126, s[28:31], 0 offen
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	buffer_load_u8 v119, v119, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v127, v127, s[28:31], 0 offen
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v131, v131, s[28:31], 0 offen
	.loc	1 916 34                        ; ragged.py:916:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 939 25                        ; ragged.py:939:25
	s_add_i32 s1, s8, s41
	.loc	1 916 34                        ; ragged.py:916:34
	s_waitcnt vmcnt(19)
	ds_store_b8 v103, v112
	s_waitcnt vmcnt(18)
	ds_store_b8 v103, v114 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v103, v115 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v104, v113
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 918 31                        ; ragged.py:918:31
	ds_load_u8 v112, v97 offset:192
	ds_load_u8 v113, v97 offset:128
	ds_load_u8 v114, v97 offset:208
	ds_load_u8 v115, v97 offset:144
	ds_load_u8 v145, v97 offset:224
	ds_load_u8 v146, v97 offset:160
	ds_load_u8 v155, v97 offset:240
	ds_load_u8 v156, v97 offset:176
	ds_load_u8 v132, v97 offset:448
	ds_load_u8 v133, v97 offset:384
	ds_load_u8 v134, v97 offset:464
	ds_load_u8 v135, v97 offset:400
	ds_load_u8 v142, v97 offset:480
	ds_load_u8 v143, v97 offset:416
	ds_load_u8 v153, v97 offset:496
	ds_load_u8 v154, v97 offset:432
	ds_load_u8 v136, v97 offset:320
	ds_load_u8 v137, v97 offset:256
	ds_load_u8 v138, v97 offset:336
	ds_load_u8 v140, v97 offset:272
	ds_load_u8 v141, v97 offset:352
	ds_load_u8 v148, v97 offset:288
	ds_load_u8 v152, v97 offset:368
	ds_load_u8 v157, v97 offset:304
	ds_load_u8 v147, v97 offset:64
	ds_load_u8 v149, v97
	ds_load_u8 v150, v97 offset:80
	ds_load_u8 v158, v97 offset:96
	ds_load_u8 v159, v97 offset:112
	ds_load_u8 v160, v97 offset:16
	ds_load_u8 v161, v97 offset:32
	ds_load_u8 v162, v97 offset:48
	ds_load_u8 v163, v97 offset:960
	ds_load_u8 v164, v97 offset:896
	ds_load_u8 v165, v97 offset:976
	ds_load_u8 v166, v97 offset:912
	ds_load_u8 v167, v97 offset:992
	ds_load_u8 v168, v97 offset:928
	ds_load_u8 v169, v105
	ds_load_u8 v170, v97 offset:944
	ds_load_u8 v171, v97 offset:832
	ds_load_u8 v172, v97 offset:768
	ds_load_u8 v173, v97 offset:848
	ds_load_u8 v174, v97 offset:784
	ds_load_u8 v175, v97 offset:864
	ds_load_u8 v176, v97 offset:800
	ds_load_u8 v177, v97 offset:880
	ds_load_u8 v178, v97 offset:816
	ds_load_u8 v179, v97 offset:704
	ds_load_u8 v180, v97 offset:640
	ds_load_u8 v181, v97 offset:720
	ds_load_u8 v182, v97 offset:656
	ds_load_u8 v183, v97 offset:736
	ds_load_u8 v184, v97 offset:672
	ds_load_u8 v185, v97 offset:752
	ds_load_u8 v186, v97 offset:688
	ds_load_u8 v187, v97 offset:576
	ds_load_u8 v188, v97 offset:512
	ds_load_u8 v189, v97 offset:592
	ds_load_u8 v190, v97 offset:528
	ds_load_u8 v191, v97 offset:608
	ds_load_u8 v192, v97 offset:544
	ds_load_u8 v193, v97 offset:624
	ds_load_u8 v194, v97 offset:560
	.loc	1 917 34                        ; ragged.py:917:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v103, v116
	s_waitcnt vmcnt(14)
	ds_store_b8 v103, v117 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v103, v118 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v103, v120 offset:1024
	s_waitcnt vmcnt(11)
	ds_store_b8 v103, v121 offset:1280
	s_waitcnt vmcnt(10)
	ds_store_b8 v103, v122 offset:1536
	s_waitcnt vmcnt(9)
	ds_store_b8 v103, v124 offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b8 v103, v125 offset:2304
	s_waitcnt vmcnt(7)
	ds_store_b8 v103, v126 offset:2560
	s_waitcnt vmcnt(6)
	ds_store_b8 v103, v128 offset:3072
	s_waitcnt vmcnt(5)
	ds_store_b8 v103, v129 offset:3328
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v119
	s_waitcnt vmcnt(3)
	ds_store_b8 v106, v123
	s_waitcnt vmcnt(2)
	ds_store_b8 v107, v127
	s_waitcnt vmcnt(1)
	ds_store_b8 v103, v130 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v108, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 918 31                        ; ragged.py:918:31
	ds_load_u8 v116, v109 offset:1280
	ds_load_u8 v117, v109 offset:1024
	ds_load_u8 v118, v109 offset:1792
	ds_load_u8 v119, v109 offset:1536
	ds_load_u8 v120, v109 offset:256
	ds_load_u8 v121, v109
	ds_load_u8 v122, v109 offset:768
	v_perm_b32 v151, v113, v112, 0xc0c0004
	ds_load_u8 v112, v109 offset:512
	v_perm_b32 v139, v137, v136, 0xc0c0004
	v_perm_b32 v144, v133, v132, 0xc0c0004
	v_perm_b32 v128, v172, v171, 0xc0c0004
	ds_load_u8 v113, v109 offset:3328
	ds_load_u8 v123, v109 offset:3072
	v_perm_b32 v129, v164, v163, 0xc0c0004
	ds_load_u8 v163, v109 offset:3840
	ds_load_u8 v164, v109 offset:3584
	v_perm_b32 v131, v180, v179, 0xc0c0004
	v_perm_b32 v132, v140, v138, 0xc0c0004
	ds_load_u8 v171, v109 offset:2304
	ds_load_u8 v172, v109 offset:2048
	v_perm_b32 v133, v135, v134, 0xc0c0004
	v_perm_b32 v134, v160, v150, 0xc0c0004
	ds_load_u8 v160, v109 offset:2816
	v_perm_b32 v135, v115, v114, 0xc0c0004
	ds_load_u8 v115, v109 offset:2560
	v_perm_b32 v136, v174, v173, 0xc0c0004
	v_perm_b32 v137, v166, v165, 0xc0c0004
	ds_load_u8 v165, v109 offset:1664
	ds_load_u8 v166, v109 offset:1408
	ds_load_u8 v174, v109 offset:1152
	v_perm_b32 v140, v182, v181, 0xc0c0004
	v_perm_b32 v141, v148, v141, 0xc0c0004
	ds_load_u8 v179, v109 offset:896
	ds_load_u8 v180, v109 offset:640
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v161, v158, 0xc0c0004
	ds_load_u8 v161, v109 offset:384
	ds_load_u8 v181, v109 offset:128
	v_perm_b32 v145, v146, v145, 0xc0c0004
	v_perm_b32 v146, v176, v175, 0xc0c0004
	v_perm_b32 v148, v168, v167, 0xc0c0004
	ds_load_u8 v168, v109 offset:3456
	ds_load_u8 v176, v109 offset:3200
	ds_load_u8 v182, v109 offset:2944
	v_perm_b32 v150, v184, v183, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v154, v162, v159, 0xc0c0004
	ds_load_u8 v162, v109 offset:2432
	ds_load_u8 v184, v109 offset:2176
	ds_load_u8 v173, v109 offset:1920
	ds_load_u8 v175, v109 offset:3968
	ds_load_u8 v167, v109 offset:3712
	ds_load_u8 v183, v109 offset:2688
	v_perm_b32 v147, v149, v147, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v124, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v125, v119, v118, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v126, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v127, v112, v122, 0xc0c0004
	v_perm_b32 v130, v188, v187, 0xc0c0004
	v_perm_b32 v158, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v112, v123, v113, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v113, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v114, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v115, v115, v160, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v116, v174, v166, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v118, v181, v161, 0xc0c0004
	v_perm_b32 v119, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v120, v176, v168, 0xc0c0004
	v_lshl_or_b32 v161, v144, 16, v139
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v117, v165, v173, 0xc0c0004
	v_lshl_or_b32 v160, v151, 16, v147
	v_lshl_or_b32 v177, v125, 16, v124
	v_lshl_or_b32 v176, v127, 16, v126
	v_perm_b32 v138, v190, v189, 0xc0c0004
	v_perm_b32 v152, v157, v152, 0xc0c0004
	v_perm_b32 v155, v156, v155, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v121, v167, v175, 0xc0c0004
	v_perm_b32 v122, v184, v162, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v183, v182, 0xc0c0004
	v_lshl_or_b32 v163, v129, 16, v128
	v_lshl_or_b32 v162, v131, 16, v130
	v_lshl_or_b32 v165, v133, 16, v132
	v_lshl_or_b32 v164, v135, 16, v134
	v_lshl_or_b32 v179, v113, 16, v112
	v_lshl_or_b32 v178, v115, 16, v114
	v_lshl_or_b32 v181, v117, 16, v116
	v_lshl_or_b32 v180, v119, 16, v118
	v_wmma_i32_16x16x16_iu4 v[112:119], v[176:177], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v156, v194, v193, 0xc0c0004
	v_perm_b32 v157, v186, v185, 0xc0c0004
	v_perm_b32 v159, v170, v169, 0xc0c0004
	v_lshl_or_b32 v167, v137, 16, v136
	v_lshl_or_b32 v166, v140, 16, v138
	v_lshl_or_b32 v169, v142, 16, v141
	v_lshl_or_b32 v168, v145, 16, v143
	v_lshl_or_b32 v173, v153, 16, v152
	v_lshl_or_b32 v172, v155, 16, v154
	v_lshl_or_b32 v183, v121, 16, v120
	v_lshl_or_b32 v182, v123, 16, v122
	v_wmma_i32_16x16x16_iu4 v[120:127], v[180:181], v[160:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[176:177], v[164:165], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[180:181], v[164:165], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[178:179], v[162:163], v[112:119] neg_lo:[1,1,0]
	v_perm_b32 v149, v192, v191, 0xc0c0004
	v_lshl_or_b32 v174, v157, 16, v156
	v_lshl_or_b32 v175, v159, 16, v158
	v_wmma_i32_16x16x16_iu4 v[120:127], v[182:183], v[162:163], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[128:135], v[178:179], v[166:167], v[128:135] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[136:143], v[182:183], v[166:167], v[136:143] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v160, v112
	v_cvt_f32_i32_e32 v161, v113
	v_cvt_f32_i32_e32 v162, v114
	v_cvt_f32_i32_e32 v163, v115
	v_cvt_f32_i32_e32 v164, v116
	v_cvt_f32_i32_e32 v165, v117
	v_cvt_f32_i32_e32 v166, v118
	v_cvt_f32_i32_e32 v167, v119
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[176:177], v[172:173], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v171, v148, 16, v146
	v_lshl_or_b32 v170, v150, 16, v149
	v_wmma_i32_16x16x16_iu4 v[144:151], v[176:177], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[180:181], v[168:169], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[178:179], v[174:175], v[112:119] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[178:179], v[170:171], v[144:151] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v120, v120
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[152:159], v[182:183], v[170:171], v[152:159] neg_lo:[1,1,0]
	.loc	1 939 25                        ; ragged.py:939:25
	s_mul_i32 s1, s1, s33
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v168, v112
	v_cvt_f32_i32_e32 v169, v113
	v_cvt_f32_i32_e32 v170, v114
	v_cvt_f32_i32_e32 v171, v115
	v_cvt_f32_i32_e32 v176, v116
	v_cvt_f32_i32_e32 v177, v117
	v_cvt_f32_i32_e32 v178, v118
	v_cvt_f32_i32_e32 v179, v119
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[180:181], v[172:173], v[1:8] neg_lo:[1,1,0]
	.loc	1 931 40                        ; ragged.py:931:40
	v_add_lshl_u32 v172, s8, v93, 1
	v_add_lshl_u32 v173, s8, v94, 1
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[112:119], v[182:183], v[174:175], v[112:119] neg_lo:[1,1,0]
	.loc	1 931 40                        ; ragged.py:931:40
	v_add_lshl_u32 v174, s8, v95, 1
	v_add_lshl_u32 v175, s8, v96, 1
	v_cndmask_b32_e64 v172, 0x80000000, v172, s4
	v_cndmask_b32_e64 v173, 0x80000000, v173, s3
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 931 40                        ; ragged.py:931:40
	v_cndmask_b32_e64 v174, 0x80000000, v174, s2
	v_cndmask_b32_e32 v175, 0x80000000, v175, vcc_lo
	s_clause 0x3
	buffer_load_u16 v172, v172, s[20:23], 0 offen
	buffer_load_u16 v173, v173, s[20:23], 0 offen
	buffer_load_u16 v174, v174, s[20:23], 0 offen
	buffer_load_u16 v175, v175, s[20:23], 0 offen
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v125, v125
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
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 945 17                        ; ragged.py:945:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 901 19                        ; ragged.py:901:19
	s_cmp_lg_u32 s8, s34
	.loc	1 931 40                        ; ragged.py:931:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v172, 16, v172
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v180, v120, v172
	.loc	1 938 40                        ; ragged.py:938:40
	v_add_lshl_u32 v120, v9, s1, 1
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v181, v121, v172
	v_mul_f32_e32 v182, v122, v172
	v_mul_f32_e32 v183, v123, v172
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v184, v124, v172 :: v_dual_lshlrev_b32 v121, 16, v173
	.loc	1 938 40                        ; ragged.py:938:40
	v_cndmask_b32_e64 v120, 0x80000000, v120, s0
	.loc	1 936 21                        ; ragged.py:936:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v186, v126, v172 :: v_dual_lshlrev_b32 v123, 16, v175
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v131, v131, v121 :: v_dual_lshlrev_b32 v122, 16, v174
	.loc	1 938 40                        ; ragged.py:938:40
	buffer_load_u16 v120, v120, s[36:39], 0 offen
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v160, v160, v172
	v_mul_f32_e32 v161, v161, v172
	v_mul_f32_e32 v162, v162, v172
	v_mul_f32_e32 v163, v163, v172
	v_mul_f32_e32 v164, v164, v172
	v_mul_f32_e32 v165, v165, v172
	v_mul_f32_e32 v166, v166, v172
	v_mul_f32_e32 v167, v167, v172
	v_mul_f32_e32 v185, v125, v172
	v_dual_mul_f32 v172, v127, v172 :: v_dual_mul_f32 v133, v133, v121
	.loc	1 943 21                        ; ragged.py:943:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v128, v128, v121
	v_mul_f32_e32 v129, v129, v121
	v_mul_f32_e32 v130, v130, v121
	v_dual_mul_f32 v132, v132, v121 :: v_dual_mul_f32 v145, v145, v122
	v_dual_mul_f32 v134, v134, v121 :: v_dual_mul_f32 v147, v147, v122
	v_dual_mul_f32 v136, v136, v121 :: v_dual_mul_f32 v149, v149, v122
	v_dual_mul_f32 v137, v137, v121 :: v_dual_mul_f32 v144, v144, v122
	v_dual_mul_f32 v138, v138, v121 :: v_dual_mul_f32 v151, v151, v122
	v_dual_mul_f32 v139, v139, v121 :: v_dual_mul_f32 v146, v146, v122
	v_dual_mul_f32 v140, v140, v121 :: v_dual_mul_f32 v153, v153, v122
	v_dual_mul_f32 v141, v141, v121 :: v_dual_mul_f32 v148, v148, v122
	v_dual_mul_f32 v142, v142, v121 :: v_dual_mul_f32 v155, v155, v122
	v_dual_mul_f32 v143, v143, v121 :: v_dual_mul_f32 v150, v150, v122
	v_dual_mul_f32 v152, v152, v122 :: v_dual_mul_f32 v169, v169, v123
	v_dual_mul_f32 v154, v154, v122 :: v_dual_mul_f32 v171, v171, v123
	v_dual_mul_f32 v156, v156, v122 :: v_dual_mul_f32 v175, v178, v123
	v_dual_mul_f32 v157, v157, v122 :: v_dual_mul_f32 v168, v168, v123
	v_dual_mul_f32 v158, v158, v122 :: v_dual_mul_f32 v173, v176, v123
	v_dual_mul_f32 v159, v159, v122 :: v_dual_mul_f32 v170, v170, v123
	v_mul_f32_e32 v174, v177, v123
	v_mul_f32_e32 v176, v179, v123
	v_mul_f32_e32 v177, v112, v123
	v_mul_f32_e32 v178, v113, v123
	v_mul_f32_e32 v179, v114, v123
	v_mul_f32_e32 v187, v115, v123
	v_mul_f32_e32 v188, v116, v123
	v_mul_f32_e32 v189, v117, v123
	v_mul_f32_e32 v190, v118, v123
	v_mul_f32_e32 v191, v119, v123
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v135, v135, v121 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 943 21                        ; ragged.py:943:21
	ds_store_b32 v110, v120
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v111
	ds_load_b128 v[116:119], v111 offset:16
	ds_load_b128 v[120:123], v111 offset:512
	ds_load_b128 v[124:127], v111 offset:528
	.loc	1 944 17                        ; ragged.py:944:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v66, v160, v112 :: v_dual_fmac_f32 v91, v161, v113
	v_dual_fmac_f32 v90, v162, v114 :: v_dual_fmac_f32 v89, v163, v115
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v78, v185, v125
	v_dual_fmac_f32 v88, v164, v116 :: v_dual_fmac_f32 v87, v165, v117
	v_dual_fmac_f32 v86, v166, v118 :: v_dual_fmac_f32 v85, v167, v119
	v_dual_fmac_f32 v74, v129, v113 :: v_dual_fmac_f32 v83, v180, v120
	v_dual_fmac_f32 v82, v181, v121 :: v_dual_fmac_f32 v81, v182, v122
	v_dual_fmac_f32 v80, v183, v123 :: v_dual_fmac_f32 v77, v186, v126
	v_fmac_f32_e32 v79, v184, v124
	v_dual_fmac_f32 v76, v172, v127 :: v_dual_fmac_f32 v73, v130, v114
	v_dual_fmac_f32 v75, v128, v112 :: v_dual_fmac_f32 v64, v134, v118
	v_dual_fmac_f32 v69, v131, v115 :: v_dual_fmac_f32 v62, v136, v120
	v_dual_fmac_f32 v67, v132, v116 :: v_dual_fmac_f32 v60, v138, v122
	v_dual_fmac_f32 v65, v133, v117 :: v_dual_fmac_f32 v58, v140, v124
	v_dual_fmac_f32 v63, v135, v119 :: v_dual_fmac_f32 v56, v142, v126
	v_dual_fmac_f32 v61, v137, v121 :: v_dual_fmac_f32 v54, v144, v112
	v_dual_fmac_f32 v59, v139, v123 :: v_dual_fmac_f32 v52, v146, v114
	v_dual_fmac_f32 v57, v141, v125 :: v_dual_fmac_f32 v50, v148, v116
	v_dual_fmac_f32 v55, v143, v127 :: v_dual_fmac_f32 v48, v150, v118
	v_dual_fmac_f32 v53, v145, v113 :: v_dual_fmac_f32 v46, v152, v120
	v_dual_fmac_f32 v51, v147, v115 :: v_dual_fmac_f32 v44, v154, v122
	v_dual_fmac_f32 v49, v149, v117 :: v_dual_fmac_f32 v42, v156, v124
	v_dual_fmac_f32 v47, v151, v119 :: v_dual_fmac_f32 v40, v158, v126
	v_dual_fmac_f32 v45, v153, v121 :: v_dual_fmac_f32 v38, v168, v112
	v_dual_fmac_f32 v43, v155, v123 :: v_dual_fmac_f32 v36, v170, v114
	v_dual_fmac_f32 v41, v157, v125 :: v_dual_fmac_f32 v32, v175, v118
	v_dual_fmac_f32 v39, v159, v127 :: v_dual_fmac_f32 v34, v173, v116
	v_dual_fmac_f32 v37, v169, v113 :: v_dual_fmac_f32 v28, v179, v122
	v_dual_fmac_f32 v35, v171, v115 :: v_dual_fmac_f32 v30, v177, v120
	v_dual_fmac_f32 v33, v174, v117 :: v_dual_fmac_f32 v26, v188, v124
	v_dual_fmac_f32 v31, v176, v119 :: v_dual_fmac_f32 v24, v190, v126
	v_dual_fmac_f32 v29, v178, v121 :: v_dual_fmac_f32 v12, v191, v127
	v_fmac_f32_e32 v27, v187, v123
	v_fmac_f32_e32 v25, v189, v125
	.loc	1 901 19                        ; ragged.py:901:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 947 9                         ; ragged.py:947:9
	v_bfe_u32 v22, v66, 16, 1
	v_bfe_u32 v23, v91, 16, 1
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v21, v68, s33
	.loc	1 947 9                         ; ragged.py:947:9
	v_cmp_o_f32_e64 s19, v66, v66
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v20, v70, s33
	.loc	1 947 9                         ; ragged.py:947:9
	v_add3_u32 v68, v66, v22, 0x7fff
	v_add3_u32 v23, v91, v23, 0x7fff
	v_bfe_u32 v70, v90, 16, 1
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v19, v71, s33
	.loc	1 947 9                         ; ragged.py:947:9
	v_cmp_o_f32_e64 s20, v91, v91
	v_cndmask_b16 v23.l, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v89, 16, 1
	v_add3_u32 v66, v90, v70, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_bfe_u32 v70, v88, 16, 1
	v_bfe_u32 v71, v87, 16, 1
	v_add3_u32 v68, v89, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v89, v89
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v18, v72, s33
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s20
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s21
	v_add3_u32 v70, v88, v70, 0x7fff
	v_cmp_o_f32_e64 s20, v88, v88
	v_add3_u32 v71, v87, v71, 0x7fff
	v_cmp_o_f32_e64 s21, v87, v87
	v_cndmask_b16 v66.h, 0x7fff, v68.h, s19
	v_bfe_u32 v68, v86, 16, 1
	v_bfe_u32 v72, v85, 16, 1
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s20
	v_cndmask_b16 v70.h, 0x7fff, v71.h, s21
	v_bfe_u32 v71, v83, 16, 1
	v_add3_u32 v68, v86, v68, 0x7fff
	v_cmp_o_f32_e64 s19, v86, v86
	v_add3_u32 v72, v85, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v85, v85
	.loc	1 850 36                        ; ragged.py:850:36
	v_lshrrev_b32_e32 v1, 1, v84
	.loc	1 947 9                         ; ragged.py:947:9
	v_add3_u32 v71, v83, v71, 0x7fff
	v_cmp_o_f32_e64 s21, v83, v83
	v_cndmask_b16 v68.l, 0x7fff, v68.h, s19
	v_bfe_u32 v83, v82, 16, 1
	v_cndmask_b16 v68.h, 0x7fff, v72.h, s20
	v_bfe_u32 v72, v81, 16, 1
	v_bfe_u32 v84, v80, 16, 1
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s21
	v_add3_u32 v83, v82, v83, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_add3_u32 v72, v81, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_add3_u32 v81, v80, v84, 0x7fff
	v_cmp_o_f32_e64 s21, v80, v80
	v_bfe_u32 v80, v79, 16, 1
	v_bfe_u32 v82, v78, 16, 1
	v_cndmask_b16 v71.h, 0x7fff, v83.h, s19
	v_cndmask_b16 v72.l, 0x7fff, v72.h, s20
	v_cndmask_b16 v72.h, 0x7fff, v81.h, s21
	v_bfe_u32 v81, v77, 16, 1
	v_add3_u32 v80, v79, v80, 0x7fff
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v79, v78, v82, 0x7fff
	v_cmp_o_f32_e64 s20, v78, v78
	v_add3_u32 v78, v77, v81, 0x7fff
	v_cmp_o_f32_e64 s21, v77, v77
	v_cndmask_b16 v77.l, 0x7fff, v80.h, s19
	v_bfe_u32 v80, v76, 16, 1
	v_cndmask_b16 v77.h, 0x7fff, v79.h, s20
	v_bfe_u32 v79, v75, 16, 1
	v_bfe_u32 v81, v74, 16, 1
	v_cmp_o_f32_e64 s19, v76, v76
	v_add3_u32 v80, v76, v80, 0x7fff
	v_cmp_o_f32_e64 s20, v75, v75
	v_add3_u32 v76, v75, v79, 0x7fff
	v_add3_u32 v75, v74, v81, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s21
	v_cmp_o_f32_e64 s21, v74, v74
	v_bfe_u32 v74, v73, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v76.h, s20
	v_bfe_u32 v76, v69, 16, 1
	v_cndmask_b16 v78.h, 0x7fff, v80.h, s19
	v_bfe_u32 v79, v67, 16, 1
	v_add3_u32 v74, v73, v74, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v73, v69, v76, 0x7fff
	v_cmp_o_f32_e64 s20, v69, v69
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s21
	v_add3_u32 v69, v67, v79, 0x7fff
	v_cmp_o_f32_e64 s21, v67, v67
	v_cndmask_b16 v67.l, 0x7fff, v74.h, s19
	v_bfe_u32 v74, v65, 16, 1
	v_cndmask_b16 v67.h, 0x7fff, v73.h, s20
	v_bfe_u32 v73, v64, 16, 1
	v_bfe_u32 v76, v63, 16, 1
	v_cmp_o_f32_e64 s19, v65, v65
	v_add3_u32 v74, v65, v74, 0x7fff
	v_cmp_o_f32_e64 s20, v64, v64
	v_add3_u32 v65, v64, v73, 0x7fff
	v_add3_u32 v64, v63, v76, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v69.h, s21
	v_cmp_o_f32_e64 s21, v63, v63
	v_bfe_u32 v63, v62, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s20
	v_bfe_u32 v65, v61, 16, 1
	v_cndmask_b16 v69.h, 0x7fff, v74.h, s19
	v_bfe_u32 v73, v60, 16, 1
	v_add3_u32 v63, v62, v63, 0x7fff
	v_cmp_o_f32_e64 s19, v62, v62
	v_add3_u32 v62, v61, v65, 0x7fff
	v_cmp_o_f32_e64 s20, v61, v61
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s21
	v_add3_u32 v61, v60, v73, 0x7fff
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
	v_cmp_o_f32_e64 s20, v31, v31
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s21
	v_add3_u32 v31, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v30, v30
	v_cndmask_b16 v30.l, 0x7fff, v33.h, s19
	v_bfe_u32 v33, v29, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s20
	v_bfe_u32 v32, v28, 16, 1
	v_bfe_u32 v35, v27, 16, 1
	v_cmp_o_f32_e64 s19, v29, v29
	v_add3_u32 v33, v29, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v28, v28
	v_add3_u32 v29, v28, v32, 0x7fff
	v_add3_u32 v28, v27, v35, 0x7fff
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s21
	v_cmp_o_f32_e64 s21, v27, v27
	v_bfe_u32 v27, v26, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s20
	v_bfe_u32 v29, v25, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s19
	v_bfe_u32 v32, v24, 16, 1
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cmp_o_f32_e64 s19, v26, v26
	v_add3_u32 v26, v25, v29, 0x7fff
	v_bfe_u32 v29, v12, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s21
	v_cmp_o_f32_e64 s20, v25, v25
	v_add3_u32 v25, v24, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v24, v24
	v_add3_u32 v24, v12, v29, 0x7fff
	v_cmp_o_f32_e64 s22, v12, v12
	v_cndmask_b16 v12.l, 0x7fff, v27.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v12.h, 0x7fff, v26.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v25.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v24.h, s22
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v11, s24, v1
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v47, v54, v61, s19
	v_cndmask_b32_e64 v50, v61, v54, s19
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v51, v48, v55, s19
	v_cndmask_b32_e64 v48, v55, v48, s19
	v_cndmask_b32_e64 v53, v49, v52, s19
	v_cndmask_b32_e64 v49, v52, v49, s19
	v_cndmask_b32_e64 v52, v43, v46, s19
	v_cndmask_b32_e64 v43, v46, v43, s19
	v_cndmask_b32_e64 v46, v40, v42, s19
	v_cndmask_b32_e64 v40, v42, v40, s19
	v_cndmask_b32_e64 v42, v34, v36, s19
	v_cndmask_b32_e64 v34, v36, v34, s19
	v_cndmask_b32_e64 v36, v30, v37, s19
	v_cndmask_b32_e64 v30, v37, v30, s19
	v_cndmask_b32_e64 v37, v12, v31, s19
	v_cndmask_b32_e64 v12, v31, v12, s19
	v_cndmask_b32_e64 v31, v0, v28, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v28, v0, s19
	v_cndmask_b32_e64 v28, 0x1054, v54, s19
	v_cndmask_b32_e64 v24, v70, v23, s19
	v_cndmask_b32_e64 v23, v23, v70, s19
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v17, 1, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_lshl_or_b32 v28, v28, 8, v28
	s_mov_b32 s20, 0x76543210
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v16, 2, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_and_b32_e32 v28, 0x540054, v28
	v_cndmask_b32_e64 v26, v66, v68, s19
	v_cndmask_b32_e64 v29, v71, v77, s19
	v_and_b32_e32 v54, 0x760076, v54
	v_cndmask_b32_e64 v33, v72, v78, s19
	v_lshl_or_b32 v28, v28, 4, v28
	v_cndmask_b32_e64 v38, v75, v69, s19
	v_cndmask_b32_e64 v41, v67, v64, s19
	v_cndmask_b32_e64 v45, v60, v58, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v28, 0x5040504, v28
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s17, s33, v17
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v84, v11, v21, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s16, s33, v16
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v85, v17, v21, 1
	v_mov_b16_e32 v22.h, 0
	v_cndmask_b32_e64 v25, v68, v66, s19
	v_cndmask_b32_e64 v27, v77, v71, s19
	v_cndmask_b32_e64 v32, v78, v72, s19
	v_cndmask_b32_e64 v35, v69, v75, s19
	v_cndmask_b32_e64 v39, v64, v67, s19
	v_cndmask_b32_e64 v44, v58, v60, s19
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v33, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v41, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v48, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v23, v24, v28
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s18, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v15, 3, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v86, v16, v21, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s17, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v14, 4, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s16, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_perm_b32 v23, v23, v24, v54
	v_perm_b32 v24, v26, v25, v28
	v_perm_b32 v25, v26, v25, v54
	v_perm_b32 v26, v29, v27, v28
	v_perm_b32 v27, v29, v27, v54
	v_perm_b32 v29, v33, v32, v28
	v_perm_b32 v32, v33, v32, v54
	v_perm_b32 v33, v38, v35, v28
	v_perm_b32 v35, v38, v35, v54
	v_perm_b32 v38, v41, v39, v28
	v_perm_b32 v39, v41, v39, v54
	v_perm_b32 v41, v45, v44, v28
	v_perm_b32 v44, v45, v44, v54
	v_perm_b32 v45, v50, v47, v28
	v_perm_b32 v47, v50, v47, v54
	v_perm_b32 v50, v48, v51, v28
	v_perm_b32 v48, v48, v51, v54
	v_perm_b32 v51, v49, v53, v28
	v_perm_b32 v49, v49, v53, v54
	v_perm_b32 v53, v43, v52, v28
	v_perm_b32 v43, v43, v52, v54
	v_perm_b32 v52, v40, v46, v28
	v_perm_b32 v40, v40, v46, v54
	v_perm_b32 v46, v34, v42, v28
	v_perm_b32 v34, v34, v42, v54
	v_perm_b32 v42, v30, v36, v28
	v_perm_b32 v30, v30, v36, v54
	v_perm_b32 v36, v12, v37, v28
	v_perm_b32 v28, v0, v31, v28
	v_perm_b32 v0, v0, v31, v54
	v_mov_b16_e32 v31.l, v55.h
	v_mov_b16_e32 v31.h, v22.h
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s15, s33, v15
	.loc	1 947 9                         ; ragged.py:947:9
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v13, 5, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s14, s33, v14
	.loc	1 947 9                         ; ragged.py:947:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v15, v21, 1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v22.l, v23.h
	s_clause 0x1
	buffer_store_b16 v31, v85, s[20:23], 0 offen
	buffer_store_b16 v23, v86, s[20:23], 0 offen
	v_add_lshl_u32 v23, v14, v21, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s15, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s13, s33, v13
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v31, 0x80000000, v55, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s14, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v55, v13, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v84, v10, v21, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s13, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s10, s33, v8
	.loc	1 947 9                         ; ragged.py:947:9
	v_perm_b32 v12, v12, v37, v54
	v_mov_b16_e32 v37.h, v22.h
	v_mov_b16_e32 v54.h, v22.h
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
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s12, s4
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v22, v31, s[20:23], 0 offen
	buffer_store_b16 v24, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v9, v21, 1
	v_mov_b16_e32 v54.l, v24.h
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	v_add_lshl_u32 v23, v8, v21, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s11, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s8, s33, v6
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v24, v7, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s10, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v37.l, v25.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v25, v84, s[20:23], 0 offen
	v_add_lshl_u32 v25, v6, v21, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s9, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s8, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v57.l, v26.h
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	buffer_store_b16 v26, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v5, v21, 1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v23, v4, v21, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s7, s4
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v57, v24, s[20:23], 0 offen
	buffer_store_b16 v27, v25, s[20:23], 0 offen
	v_add_lshl_u32 v24, v3, v21, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s6, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v56.l, v27.h
	v_add_lshl_u32 v25, v2, v21, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s0, s33, v1
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s5, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v21, v1, v21, 1
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s1, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v59.l, v29.h
	v_cndmask_b32_e64 v25, 0x80000000, v25, s19
	s_clause 0x1
	buffer_store_b16 v56, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v11, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s0, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v23, v17, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s18, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v58.l, v32.h
	s_clause 0x1
	buffer_store_b16 v59, v24, s[20:23], 0 offen
	buffer_store_b16 v32, v25, s[20:23], 0 offen
	v_add_lshl_u32 v24, v16, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s17, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v61.l, v33.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s16, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v58, v21, s[20:23], 0 offen
	buffer_store_b16 v33, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v15, v20, 1
	v_add_lshl_u32 v22, v14, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s15, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v61, v23, s[20:23], 0 offen
	buffer_store_b16 v35, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v13, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s14, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v60.l, v35.h
	v_add_lshl_u32 v24, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s13, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v63.l, v38.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s12, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v60, v21, s[20:23], 0 offen
	buffer_store_b16 v38, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v9, v20, 1
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s11, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v63, v23, s[20:23], 0 offen
	buffer_store_b16 v39, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s10, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v62.l, v39.h
	v_add_lshl_u32 v24, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s9, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v65.l, v41.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s8, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v62, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_add_lshl_u32 v21, v5, v20, 1
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s7, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v65, v23, s[20:23], 0 offen
	buffer_store_b16 v44, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s6, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v64.l, v44.h
	v_add_lshl_u32 v24, v2, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s5, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s1, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v67.l, v45.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	s_clause 0x1
	buffer_store_b16 v64, v21, s[20:23], 0 offen
	buffer_store_b16 v45, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s0, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v22, v17, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s18, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v66.l, v47.h
	s_clause 0x1
	buffer_store_b16 v67, v23, s[20:23], 0 offen
	buffer_store_b16 v47, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v16, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s17, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v69.l, v50.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s16, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v66, v20, s[20:23], 0 offen
	buffer_store_b16 v50, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v15, v19, 1
	v_add_lshl_u32 v21, v14, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s15, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v69, v22, s[20:23], 0 offen
	buffer_store_b16 v48, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s14, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v68.l, v48.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s13, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v71.l, v51.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s12, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v68, v20, s[20:23], 0 offen
	buffer_store_b16 v51, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s11, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v71, v22, s[20:23], 0 offen
	buffer_store_b16 v49, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s10, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v70.l, v49.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s9, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v73.l, v53.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s8, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v70, v20, s[20:23], 0 offen
	buffer_store_b16 v53, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s7, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v73, v22, s[20:23], 0 offen
	buffer_store_b16 v43, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s6, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v23, v2, v19, 1
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s5, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v11, v11, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v72.l, v43.h
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v74.l, v40.h
	v_mov_b16_e32 v75.l, v52.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v17, v17, v18, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v16, v16, v18, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x5
	buffer_store_b16 v72, v20, s[20:23], 0 offen
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v75, v22, s[20:23], 0 offen
	buffer_store_b16 v40, v23, s[20:23], 0 offen
	buffer_store_b16 v74, v19, s[20:23], 0 offen
	buffer_store_b16 v46, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v15, v18, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v14, v14, v18, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v13, v13, v18, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v10, v10, v18, 1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v9, v9, v18, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v8, v8, v18, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v7, v7, v18, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v6, v6, v18, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v5, v5, v18, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v4, v4, v18, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v3, v3, v18, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v2, v2, v18, 1
	v_add_lshl_u32 v1, v1, v18, 1
	v_mov_b16_e32 v76.l, v34.h
	v_mov_b16_e32 v77.l, v46.h
	v_mov_b16_e32 v78.l, v30.h
	v_mov_b16_e32 v79.l, v42.h
	v_mov_b16_e32 v80.l, v12.h
	v_mov_b16_e32 v81.l, v36.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v83.l, v28.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v17, s[20:23], 0 offen
	buffer_store_b16 v34, v16, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v42, v14, s[20:23], 0 offen
	buffer_store_b16 v79, v13, s[20:23], 0 offen
	buffer_store_b16 v30, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v36, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v12, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v28, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 810 5                         ; ragged.py:810:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 195
		.amdhsa_next_free_sgpr 47
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 195
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11660
; TotalNumSgprs: 49
; NumVgprs: 195
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 49
; NumVGPRsForWavesPerEU: 195
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
	.short	836                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     195
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
