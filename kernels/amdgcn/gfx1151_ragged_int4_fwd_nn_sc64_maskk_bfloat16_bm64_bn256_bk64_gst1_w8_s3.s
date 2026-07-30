	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 810 0                         ; ragged.py:810:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x4c
	s_load_b64 s[28:29], s[0:1], 0x54
.Ltmp0:
	.loc	1 838 25 prologue_end           ; ragged.py:838:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v92, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:836:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s30, 0xff
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:836:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
.Ltmp2:
	.loc	1 838 25 is_stmt 1              ; ragged.py:838:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v141, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v127, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_mov_b32 s36, 0
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 840 33                        ; ragged.py:840:33
	s_sub_i32 s5, s29, s4
	.loc	1 841 24                        ; ragged.py:841:24
	s_mul_i32 s3, s4, s3
	.loc	1 840 22                        ; ragged.py:840:22
	s_min_i32 s5, s5, 1
	.loc	1 841 24                        ; ragged.py:841:24
	s_sub_i32 s2, s2, s3
	.loc	1 843 17                        ; ragged.py:843:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 849 32                        ; ragged.py:849:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 843 17                        ; ragged.py:843:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
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
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s20, s12
	s_addc_u32 s3, s21, s13
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 847 24                        ; ragged.py:847:24
	s_add_u32 s2, s22, s12
	s_addc_u32 s3, s23, s13
	.loc	1 848 22                        ; ragged.py:848:22
	s_add_u32 s4, s24, s12
	s_addc_u32 s5, s25, s13
	.loc	1 847 24                        ; ragged.py:847:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 848 22                        ; ragged.py:848:22
	s_load_b64 s[18:19], s[4:5], 0x0
	.loc	1 850 18                        ; ragged.py:850:18
	s_lshl_b32 s22, s6, 8
	.loc	1 849 18                        ; ragged.py:849:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s2
	.loc	1 932 25                        ; ragged.py:932:25
	v_add_nc_u32_e32 v109, s20, v1
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
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 851 48 is_stmt 0              ; ragged.py:851:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 851 48                        ; ragged.py:851:48
	v_cmp_gt_i64_e64 s7, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	.loc	1 932 25 is_stmt 1              ; ragged.py:932:25
	v_add_nc_u32_e32 v111, 16, v109
	v_add_nc_u32_e32 v114, 32, v109
	v_add_nc_u32_e32 v115, 48, v109
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 901 19                        ; ragged.py:901:19
	s_cmp_lt_i32 s28, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_load_b64 s[6:7], s[0:1], 0x20
	.loc	1 849 32 is_stmt 1              ; ragged.py:849:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_clause 0x1
	s_load_b32 s23, s[0:1], 0x50
	s_load_b256 s[40:47], s[0:1], 0x0
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v41, s22, v0
	.loc	1 849 18                        ; ragged.py:849:18
	v_dual_mov_b32 v108, 0 :: v_dual_and_b32 v19, 0xe0, v0
	v_add_co_u32 v2, s0, s20, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s21, 0, s0
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v161, 0, v0
	v_add_co_u32 v4, s0, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, s0
	v_add_co_u32 v6, s0, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, s0
	.loc	1 845 20                        ; ragged.py:845:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s6, s12
	s_addc_u32 s13, s7, s13
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s1, s[10:11], v[4:5]
	.loc	1 939 25                        ; ragged.py:939:25
	s_load_b32 s35, s[12:13], 0x0
	.loc	1 851 48                        ; ragged.py:851:48
	v_cmp_gt_i64_e64 s12, s[18:19], v[4:5]
	.loc	1 849 18                        ; ragged.py:849:18
	v_add_co_u32 v8, s0, v2, 24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, s0
	v_add_co_u32 v10, s0, v2, 32
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s24, s1, s12
	.loc	1 915 39                        ; ragged.py:915:39
	s_mul_i32 s1, s23, s30
	.loc	1 849 18                        ; ragged.py:849:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, s0
	v_add_co_u32 v12, s0, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, s0
	v_add_co_u32 v14, s0, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, s0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[42:43], null, s1, s35, v[41:42]
	v_add_co_u32 v16, s0, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, s0
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	.loc	1 901 19                        ; ragged.py:901:19
	v_mad_u64_u32 v[43:44], null, s30, 3, v[42:43]
	.loc	1 851 21                        ; ragged.py:851:21
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	v_cmp_le_i64_e64 s7, s[10:11], v[10:11]
	v_cmp_le_i64_e64 s8, s[10:11], v[12:13]
	v_cmp_le_i64_e64 s9, s[10:11], v[14:15]
	v_cmp_le_i64_e64 s10, s[10:11], v[16:17]
	.loc	1 851 48 is_stmt 0              ; ragged.py:851:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[2:3]
	.loc	1 901 19 is_stmt 1              ; ragged.py:901:19
	v_mad_u64_u32 v[44:45], null, s30, 5, v[42:43]
	v_mad_u64_u32 v[45:46], null, s30, 6, v[42:43]
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v3, 1, v0
	v_mad_u64_u32 v[46:47], null, s30, 7, v[42:43]
	v_mad_u64_u32 v[47:48], null, s30, 9, v[42:43]
	.loc	1 851 48                        ; ragged.py:851:48
	v_cmp_gt_i64_e64 s15, s[18:19], v[10:11]
	v_lshrrev_b32_e32 v11, 1, v19
	.loc	1 901 19                        ; ragged.py:901:19
	v_mad_u64_u32 v[48:49], null, s30, 10, v[42:43]
	v_mad_u64_u32 v[49:50], null, s30, 11, v[42:43]
	v_mad_u64_u32 v[50:51], null, s30, 12, v[42:43]
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v5, 24, v3
	v_mad_u64_u32 v[51:52], null, s30, 13, v[42:43]
	v_mad_u64_u32 v[52:53], null, s30, 14, v[42:43]
	v_add3_u32 v148, 0, v1, v11
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v11, s20, v18
	v_mad_u64_u32 v[53:54], null, s30, 15, v[42:43]
	v_mad_u64_u32 v[54:55], null, s30, 17, v[42:43]
	v_mad_u64_u32 v[55:56], null, s30, 18, v[42:43]
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_lshl_or_b32 v147, v1, 5, v5
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_mad_u64_u32 v[56:57], null, s30, 19, v[42:43]
	v_mad_u64_u32 v[57:58], null, s30, 20, v[42:43]
	.loc	1 851 48                        ; ragged.py:851:48
	v_cmp_gt_i64_e64 s13, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s14, s[18:19], v[8:9]
	v_cmp_gt_i64_e64 s16, s[18:19], v[12:13]
	v_cmp_gt_i64_e64 s17, s[18:19], v[14:15]
	v_cmp_gt_i64_e64 s18, s[18:19], v[16:17]
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v17, 8, v11
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v18, 16, v11
	.loc	1 901 19                        ; ragged.py:901:19
	v_mad_u64_u32 v[58:59], null, s30, 21, v[42:43]
	v_mad_u64_u32 v[59:60], null, s30, 22, v[42:43]
	v_mad_u64_u32 v[60:61], null, s30, 23, v[42:43]
	v_xor_b32_e32 v146, v2, v4
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v16, 2, v127
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v1, 32, v1
	v_mad_u64_u32 v[61:62], null, s30, 24, v[42:43]
	v_mad_u64_u32 v[62:63], null, s30, 25, v[42:43]
	v_mul_lo_u32 v149, v11, s23
	v_mul_lo_u32 v150, v17, s23
	v_mul_lo_u32 v151, v18, s23
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v17, 24, v11
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v18, 32, v11
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v19, 40, v11
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v20, 48, v11
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v11, 56, v11
	v_mad_u64_u32 v[63:64], null, s30, 26, v[42:43]
	v_mad_u64_u32 v[64:65], null, s30, 27, v[42:43]
	v_mad_u64_u32 v[65:66], null, s30, 28, v[42:43]
	v_xor_b32_e32 v2, 0x110, v146
	v_xor_b32_e32 v4, 8, v147
	v_xor_b32_e32 v5, 16, v147
	v_xor_b32_e32 v6, 24, v147
	v_or_b32_e32 v7, 0x300, v0
	v_or_b32_e32 v8, 0x700, v0
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_or_b32_e32 v12, 0x1300, v0
	v_or_b32_e32 v13, 0x1700, v0
	v_or_b32_e32 v14, 0x1b00, v0
	v_or_b32_e32 v15, 0x1f00, v0
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v1, 0, v16, v1
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v16, 1, v127
	v_mad_u64_u32 v[66:67], null, s30, 29, v[42:43]
	v_mad_u64_u32 v[67:68], null, s30, 30, v[42:43]
	v_mul_lo_u32 v152, v17, s23
	v_mul_lo_u32 v153, v18, s23
	v_mul_lo_u32 v154, v19, s23
	v_mul_lo_u32 v155, v20, s23
	v_mul_lo_u32 v156, v11, s23
	v_mad_u64_u32 v[68:69], null, s30, 31, v[42:43]
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s21, s0, s11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s0, s30, v41
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v157, 0, v2
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v158, 0, v4
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v159, 0, v5
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v160, 0, v6
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v162, 0, v7
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v163, 0, v8
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v164, 0, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v165, 0, v10
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v166, 0, v12
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v167, 0, v13
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v168, 0, v14
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v169, 0, v15
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v170, v1, v3
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v171, 0, v16
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v77, 0
	.loc	1 851 20                        ; ragged.py:851:20
	s_and_b32 s25, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s29, s8, s16
	s_and_b32 s31, s9, s17
	s_and_b32 s33, s10, s18
	.loc	1 939 25                        ; ragged.py:939:25
	s_mul_i32 s34, s28, s35
	s_and_b32 s9, s41, 0xffff
	s_mov_b32 s8, s40
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s43, 0xffff
	s_mov_b32 s12, s42
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s17, s47, 0xffff
	s_mov_b32 s16, s46
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s20, s36
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 903 28 is_stmt 1              ; ragged.py:903:28
	s_lshl_b32 s1, s20, 5
	.loc	1 901 19                        ; ragged.py:901:19
	v_add_nc_u32_e32 v4, s30, v42
	v_lshl_add_u32 v5, s30, 1, v42
	v_lshl_add_u32 v6, s30, 2, v42
	v_lshl_add_u32 v7, s30, 3, v42
	v_lshl_add_u32 v8, s30, 4, v42
	s_or_b32 s5, s1, 1
	s_or_b32 s18, s1, 2
	s_or_b32 s19, s1, 3
	s_or_b32 s35, s1, 4
	s_or_b32 s46, s1, 5
	s_or_b32 s47, s1, 6
	s_or_b32 s48, s1, 7
	s_or_b32 s49, s1, 8
	s_or_b32 s50, s1, 9
	s_or_b32 s51, s1, 10
	s_or_b32 s52, s1, 11
	s_or_b32 s53, s1, 12
	s_or_b32 s54, s1, 13
	s_or_b32 s55, s1, 14
	s_or_b32 s56, s1, 15
	s_or_b32 s57, s1, 16
	s_or_b32 s58, s1, 17
	s_or_b32 s59, s1, 18
	s_or_b32 s60, s1, 19
	s_or_b32 s61, s1, 20
	s_or_b32 s62, s1, 21
	s_or_b32 s63, s1, 22
	s_or_b32 s64, s1, 23
	s_or_b32 s65, s1, 24
	s_or_b32 s66, s1, 25
	s_or_b32 s67, s1, 26
	s_or_b32 s68, s1, 27
	s_or_b32 s69, s1, 28
	s_or_b32 s70, s1, 29
	s_or_b32 s71, s1, 30
	s_or_b32 s72, s1, 31
	s_cmp_lt_i32 s1, s23
	s_mul_i32 s73, s1, s30
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s5, s23
	v_add_nc_u32_e32 v9, s73, v42
	v_add_nc_u32_e32 v10, s73, v43
	v_add_nc_u32_e32 v11, s73, v44
	v_add_nc_u32_e32 v12, s73, v45
	v_add_nc_u32_e32 v13, s73, v46
	v_add_nc_u32_e32 v14, s73, v47
	v_add_nc_u32_e32 v15, s73, v48
	v_add_nc_u32_e32 v16, s73, v49
	v_add_nc_u32_e32 v17, s73, v50
	v_add_nc_u32_e32 v18, s73, v51
	v_add_nc_u32_e32 v19, s73, v52
	v_add_nc_u32_e32 v20, s73, v53
	v_add_nc_u32_e32 v21, s73, v54
	v_add_nc_u32_e32 v22, s73, v55
	v_add_nc_u32_e32 v23, s73, v56
	v_add_nc_u32_e32 v24, s73, v57
	v_add_nc_u32_e32 v25, s73, v58
	v_add_nc_u32_e32 v26, s73, v59
	v_add_nc_u32_e32 v27, s73, v60
	v_add_nc_u32_e32 v28, s73, v61
	v_add_nc_u32_e32 v29, s73, v62
	v_add_nc_u32_e32 v30, s73, v63
	v_add_nc_u32_e32 v31, s73, v64
	v_add_nc_u32_e32 v32, s73, v65
	v_add_nc_u32_e32 v33, s73, v66
	v_add_nc_u32_e32 v34, s73, v67
	v_add_nc_u32_e32 v35, s73, v68
	v_add_nc_u32_e32 v4, s73, v4
	v_add_nc_u32_e32 v5, s73, v5
	v_add_nc_u32_e32 v6, s73, v6
	v_add_nc_u32_e32 v7, s73, v7
	v_add_nc_u32_e32 v8, s73, v8
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s18, s23
	.loc	1 898 28                        ; ragged.py:898:28
	v_and_b32_e32 v3, 31, v0
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s19, s23
	.loc	1 917 34                        ; ragged.py:917:34
	s_mov_b32 s14, s10
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s35, s23
	v_or_b32_e32 v3, s1, v3
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s46, s23
	s_mov_b32 s15, s11
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s47, s23
	v_cmp_gt_i32_e64 s1, s23, v3
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s48, s23
	v_add_nc_u32_e32 v36, v149, v3
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s49, s23
	v_add_nc_u32_e32 v37, v150, v3
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s50, s23
	v_add_nc_u32_e32 v38, v151, v3
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s51, s23
	v_add_nc_u32_e32 v39, v152, v3
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s52, s23
	v_add_nc_u32_e32 v40, v153, v3
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s53, s23
	v_add_nc_u32_e32 v69, v154, v3
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s54, s23
	v_add_nc_u32_e32 v70, v155, v3
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s55, s23
	v_add_nc_u32_e32 v3, v156, v3
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s56, s23
	.loc	1 916 34                        ; ragged.py:916:34
	v_add_nc_u32_e32 v1, 0, v146
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s57, s23
	v_add_nc_u32_e32 v2, 0, v147
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s58, s23
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s59, s23
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s60, s23
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s61, s23
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s62, s23
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s63, s23
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s64, s23
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s65, s23
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s66, s23
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s67, s23
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s68, s23
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s69, s23
	s_cselect_b32 s69, -1, 0
	s_cmp_lt_i32 s70, s23
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s71, s23
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s72, s23
	s_cselect_b32 s72, -1, 0
	s_and_b32 s5, s21, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s5
	s_and_b32 s5, s24, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s5
	s_and_b32 s5, s25, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	s_and_b32 s5, s6, s1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s5
	s_and_b32 s5, s7, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	s_and_b32 s5, s29, s1
	v_cndmask_b32_e64 v69, 0x80000000, v69, s5
	s_and_b32 s5, s31, s1
	s_and_b32 s1, s33, s1
	v_cndmask_b32_e64 v70, 0x80000000, v70, s5
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	s_and_b32 s1, s0, s74
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s1
	s_and_b32 s1, s0, s73
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	s_and_b32 s1, s0, s18
	.loc	1 938 40                        ; ragged.py:938:40
	s_mov_b32 s18, s10
	v_cndmask_b32_e64 v5, 0x80000000, v5, s1
	s_and_b32 s1, s0, s19
	s_mov_b32 s19, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	s_and_b32 s1, s0, s35
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	s_and_b32 s1, s0, s46
	.loc	1 931 40                        ; ragged.py:931:40
	s_mov_b32 s46, s10
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	s_and_b32 s1, s0, s47
	s_mov_b32 s47, s11
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	s_and_b32 s1, s0, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	s_and_b32 s1, s0, s49
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	s_and_b32 s1, s0, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	s_and_b32 s1, s0, s51
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	s_and_b32 s1, s0, s52
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	s_and_b32 s1, s0, s53
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	s_and_b32 s1, s0, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	s_and_b32 s1, s0, s55
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_and_b32 s1, s0, s56
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s1
	s_and_b32 s1, s0, s57
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	s_and_b32 s1, s0, s58
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	s_and_b32 s1, s0, s59
	v_cndmask_b32_e64 v22, 0x80000000, v22, s1
	s_and_b32 s1, s0, s60
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	s_and_b32 s1, s0, s61
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	s_and_b32 s1, s0, s62
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	s_and_b32 s1, s0, s63
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	s_and_b32 s1, s0, s64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v27, 0x80000000, v27, s1
	s_and_b32 s1, s0, s65
	v_cndmask_b32_e64 v28, 0x80000000, v28, s1
	s_and_b32 s1, s0, s66
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v29, 0x80000000, v29, s1
	s_and_b32 s1, s0, s67
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	s_and_b32 s1, s0, s68
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	s_and_b32 s1, s0, s69
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	s_and_b32 s1, s0, s70
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_and_b32 s1, s0, s71
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_and_b32 s1, s0, s72
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 916 34                        ; ragged.py:916:34
	s_clause 0x7
	buffer_load_u8 v36, v36, s[8:11], 0 offen
	buffer_load_u8 v38, v38, s[8:11], 0 offen
	buffer_load_u8 v40, v40, s[8:11], 0 offen
	buffer_load_u8 v70, v70, s[8:11], 0 offen
	buffer_load_u8 v3, v3, s[8:11], 0 offen
	buffer_load_u8 v69, v69, s[8:11], 0 offen
	buffer_load_u8 v39, v39, s[8:11], 0 offen
	buffer_load_u8 v37, v37, s[8:11], 0 offen
	.loc	1 917 34                        ; ragged.py:917:34
	s_clause 0x1f
	buffer_load_u8 v71, v9, s[12:15], 0 offen
	buffer_load_u8 v4, v4, s[12:15], 0 offen
	buffer_load_u8 v5, v5, s[12:15], 0 offen
	buffer_load_u8 v6, v6, s[12:15], 0 offen
	buffer_load_u8 v72, v11, s[12:15], 0 offen
	buffer_load_u8 v73, v12, s[12:15], 0 offen
	buffer_load_u8 v7, v7, s[12:15], 0 offen
	buffer_load_u8 v74, v14, s[12:15], 0 offen
	buffer_load_u8 v75, v15, s[12:15], 0 offen
	buffer_load_u8 v76, v17, s[12:15], 0 offen
	buffer_load_u8 v172, v18, s[12:15], 0 offen
	buffer_load_u8 v173, v19, s[12:15], 0 offen
	buffer_load_u8 v8, v8, s[12:15], 0 offen
	buffer_load_u8 v174, v21, s[12:15], 0 offen
	buffer_load_u8 v175, v22, s[12:15], 0 offen
	buffer_load_u8 v176, v24, s[12:15], 0 offen
	buffer_load_u8 v177, v25, s[12:15], 0 offen
	buffer_load_u8 v178, v26, s[12:15], 0 offen
	buffer_load_u8 v179, v28, s[12:15], 0 offen
	buffer_load_u8 v180, v29, s[12:15], 0 offen
	buffer_load_u8 v181, v30, s[12:15], 0 offen
	buffer_load_u8 v182, v32, s[12:15], 0 offen
	buffer_load_u8 v183, v33, s[12:15], 0 offen
	buffer_load_u8 v184, v34, s[12:15], 0 offen
	buffer_load_u8 v185, v13, s[12:15], 0 offen
	buffer_load_u8 v186, v10, s[12:15], 0 offen
	buffer_load_u8 v187, v20, s[12:15], 0 offen
	buffer_load_u8 v188, v16, s[12:15], 0 offen
	buffer_load_u8 v189, v27, s[12:15], 0 offen
	buffer_load_u8 v190, v23, s[12:15], 0 offen
	buffer_load_u8 v191, v35, s[12:15], 0 offen
	buffer_load_u8 v192, v31, s[12:15], 0 offen
	.loc	1 916 34                        ; ragged.py:916:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 939 25                        ; ragged.py:939:25
	s_add_i32 s1, s20, s34
	.loc	1 916 34                        ; ragged.py:916:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v1, v36
	s_waitcnt vmcnt(38)
	ds_store_b8 v1, v38 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v1, v40 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v1, v70 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v157, v37
	ds_store_b8 v157, v39 offset:512
	ds_store_b8 v157, v69 offset:1024
	ds_store_b8 v157, v3 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[25:28], v2 offset1:1
	ds_load_2addr_stride64_b64 v[9:12], v2 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[29:32], v158 offset1:1
	ds_load_2addr_stride64_b64 v[13:16], v158 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v159 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v159 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v160 offset1:1
	ds_load_2addr_stride64_b64 v[21:24], v160 offset0:2 offset1:3
	.loc	1 917 34                        ; ragged.py:917:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v161, v71
	s_waitcnt vmcnt(30)
	ds_store_b8 v161, v4 offset:256
	s_waitcnt vmcnt(29)
	ds_store_b8 v161, v5 offset:512
	s_waitcnt vmcnt(28)
	ds_store_b8 v161, v6 offset:1024
	s_waitcnt vmcnt(27)
	ds_store_b8 v161, v72 offset:1280
	s_waitcnt vmcnt(26)
	ds_store_b8 v161, v73 offset:1536
	s_waitcnt vmcnt(25)
	ds_store_b8 v161, v7 offset:2048
	s_waitcnt vmcnt(24)
	ds_store_b8 v161, v74 offset:2304
	s_waitcnt vmcnt(23)
	ds_store_b8 v161, v75 offset:2560
	s_waitcnt vmcnt(22)
	ds_store_b8 v161, v76 offset:3072
	s_waitcnt vmcnt(21)
	ds_store_b8 v161, v172 offset:3328
	s_waitcnt vmcnt(20)
	ds_store_b8 v161, v173 offset:3584
	s_waitcnt vmcnt(19)
	ds_store_b8 v161, v8 offset:4096
	s_waitcnt vmcnt(18)
	ds_store_b8 v161, v174 offset:4352
	s_waitcnt vmcnt(17)
	ds_store_b8 v161, v175 offset:4608
	s_waitcnt vmcnt(16)
	ds_store_b8 v161, v176 offset:5120
	s_waitcnt vmcnt(15)
	ds_store_b8 v161, v177 offset:5376
	s_waitcnt vmcnt(14)
	ds_store_b8 v161, v178 offset:5632
	s_waitcnt vmcnt(13)
	ds_store_b8 v161, v179 offset:6144
	s_waitcnt vmcnt(12)
	ds_store_b8 v161, v180 offset:6400
	s_waitcnt vmcnt(11)
	ds_store_b8 v161, v181 offset:6656
	s_waitcnt vmcnt(10)
	ds_store_b8 v161, v182 offset:7168
	s_waitcnt vmcnt(9)
	ds_store_b8 v161, v183 offset:7424
	s_waitcnt vmcnt(8)
	ds_store_b8 v161, v184 offset:7680
	s_waitcnt vmcnt(6)
	ds_store_b8 v162, v186
	ds_store_b8 v163, v185
	s_waitcnt vmcnt(4)
	ds_store_b8 v164, v188
	ds_store_b8 v165, v187
	s_waitcnt vmcnt(2)
	ds_store_b8 v166, v190
	ds_store_b8 v167, v189
	s_waitcnt vmcnt(0)
	ds_store_b8 v168, v192
	ds_store_b8 v169, v191
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 918 31                        ; ragged.py:918:31
	ds_load_u8 v1, v148 offset:1280
	ds_load_u8 v2, v148 offset:1024
	ds_load_u8 v3, v148 offset:1792
	ds_load_u8 v4, v148 offset:1536
	ds_load_u8 v172, v148 offset:1920
	ds_load_u8 v173, v148 offset:1664
	ds_load_u8 v174, v148 offset:1408
	ds_load_u8 v175, v148 offset:1152
	ds_load_u8 v5, v148 offset:256
	ds_load_u8 v6, v148
	ds_load_u8 v7, v148 offset:768
	ds_load_u8 v8, v148 offset:512
	ds_load_u8 v176, v148 offset:896
	ds_load_u8 v177, v148 offset:640
	ds_load_u8 v178, v148 offset:384
	ds_load_u8 v179, v148 offset:128
	ds_load_u8 v71, v148 offset:3328
	ds_load_u8 v72, v148 offset:3072
	ds_load_u8 v180, v148 offset:3456
	ds_load_u8 v73, v148 offset:3840
	ds_load_u8 v74, v148 offset:3584
	ds_load_u8 v181, v148 offset:3200
	ds_load_u8 v75, v148 offset:2304
	ds_load_u8 v76, v148 offset:2048
	ds_load_u8 v182, v148 offset:2432
	ds_load_u8 v183, v148 offset:2816
	ds_load_u8 v184, v148 offset:2560
	ds_load_u8 v185, v148 offset:5376
	ds_load_u8 v186, v148 offset:5120
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v2, v148 offset:5888
	ds_load_u8 v6, v148 offset:4352
	ds_load_u8 v8, v148 offset:4096
	ds_load_u8 v192, v148 offset:4480
	ds_load_u8 v195, v148 offset:4224
	ds_load_u8 v191, v148 offset:2176
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v69, v7, 16, v5
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v5, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v7, v74, v73, 0xc0c0004
	ds_load_u8 v187, v148 offset:7424
	ds_load_u8 v196, v148 offset:8064
	ds_load_u8 v197, v148 offset:7808
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v71, v76, v75, 0xc0c0004
	ds_load_u8 v75, v148 offset:7168
	ds_load_u8 v4, v148 offset:5632
	v_lshl_or_b32 v70, v3, 16, v1
	ds_load_u8 v1, v148 offset:4864
	ds_load_u8 v3, v148 offset:4608
	v_lshl_or_b32 v72, v7, 16, v5
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v186, v185, 0xc0c0004
	v_perm_b32 v73, v184, v183, 0xc0c0004
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	v_perm_b32 v172, v173, v172, 0xc0c0004
	v_perm_b32 v173, v179, v178, 0xc0c0004
	v_lshl_or_b32 v71, v73, 16, v71
	v_perm_b32 v175, v177, v176, 0xc0c0004
	ds_load_u8 v193, v148 offset:5504
	ds_load_u8 v194, v148 offset:5248
	ds_load_u8 v198, v148 offset:7552
	ds_load_u8 v199, v148 offset:7296
	.loc	1 939 25                        ; ragged.py:939:25
	s_mul_i32 s1, s1, s30
	.loc	1 918 31                        ; ragged.py:918:31
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v2, v4, v2, 0xc0c0004
	ds_load_u8 v4, v148 offset:7936
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	v_lshl_or_b32 v74, v2, 16, v5
	ds_load_u8 v2, v148 offset:7680
	v_lshl_or_b32 v73, v1, 16, v6
	v_perm_b32 v1, v75, v187, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v4, 0xc0c0004
	ds_load_u8 v3, v148 offset:6400
	ds_load_u8 v4, v148 offset:6144
	ds_load_u8 v5, v148 offset:6912
	ds_load_u8 v6, v148 offset:6656
	ds_load_u8 v200, v148 offset:6528
	ds_load_u8 v201, v148 offset:6272
	v_lshl_or_b32 v76, v2, 16, v1
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v75, v4, 16, v3
	v_dual_mov_b32 v1, s36 :: v_dual_mov_b32 v2, s37
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_wmma_i32_16x16x16_iu4 v[183:190], v[69:70], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[183:190], v[71:72], v[29:30], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[73:74], v[33:34], v[183:190] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[183:190], v[75:76], v[37:38], v[183:190] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v202, v183
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v203, v184
	.loc	1 918 31                        ; ragged.py:918:31
	v_lshl_or_b32 v184, v172, 16, v174
	v_lshl_or_b32 v183, v175, 16, v173
	ds_load_u8 v173, v148 offset:3712
	ds_load_u8 v174, v148 offset:3968
	ds_load_u8 v175, v148 offset:2688
	ds_load_u8 v176, v148 offset:2944
	v_perm_b32 v172, v181, v180, 0xc0c0004
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v204, v185
	v_cvt_f32_i32_e32 v205, v186
	v_cvt_f32_i32_e32 v206, v187
	v_cvt_f32_i32_e32 v207, v188
	v_cvt_f32_i32_e32 v189, v189
	v_cvt_f32_i32_e32 v190, v190
	.loc	1 918 31                        ; ragged.py:918:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v173, v173, v174, 0xc0c0004
	v_perm_b32 v174, v191, v182, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v181, v173, 16, v172
	v_perm_b32 v172, v194, v193, 0xc0c0004
	v_lshl_or_b32 v180, v175, 16, v174
	ds_load_u8 v173, v148 offset:5760
	ds_load_u8 v174, v148 offset:6016
	ds_load_u8 v175, v148 offset:4736
	ds_load_u8 v176, v148 offset:4992
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v173, v173, v174, 0xc0c0004
	v_perm_b32 v174, v195, v192, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v186, v173, 16, v172
	v_perm_b32 v172, v199, v198, 0xc0c0004
	v_lshl_or_b32 v185, v175, 16, v174
	ds_load_u8 v175, v148 offset:6784
	ds_load_u8 v176, v148 offset:7040
	v_perm_b32 v173, v197, v196, 0xc0c0004
	v_perm_b32 v174, v201, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v173, 16, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v175, v175, v176, 0xc0c0004
	v_lshl_or_b32 v187, v175, 16, v174
	v_wmma_i32_16x16x16_iu4 v[172:179], v[183:184], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[180:181], v[29:30], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[185:186], v[33:34], v[172:179] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[187:188], v[37:38], v[172:179] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v33, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v34, v173
	v_cvt_f32_i32_e32 v37, v174
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v38, v175
	v_cvt_f32_i32_e32 v182, v176
	v_cvt_f32_i32_e32 v191, v177
	v_cvt_f32_i32_e32 v192, v178
	v_cvt_f32_i32_e32 v193, v179
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[172:179], v[69:70], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[71:72], v[31:32], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[73:74], v[35:36], v[172:179] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[75:76], v[39:40], v[172:179] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v194, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v195, v173
	v_cvt_f32_i32_e32 v196, v174
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v175
	v_cvt_f32_i32_e32 v198, v176
	v_cvt_f32_i32_e32 v199, v177
	v_cvt_f32_i32_e32 v200, v178
	v_cvt_f32_i32_e32 v201, v179
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[172:179], v[183:184], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[172:179], v[180:181], v[31:32], v[172:179] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[185:186], v[35:36], v[172:179] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[13:14], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[172:179], v[187:188], v[39:40], v[172:179] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[17:18], v[25:32] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v35, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v36, v173
	v_cvt_f32_i32_e32 v39, v174
	v_cvt_f32_i32_e32 v40, v175
	v_cvt_f32_i32_e32 v172, v176
	v_cvt_f32_i32_e32 v173, v177
	v_cvt_f32_i32_e32 v174, v178
	v_cvt_f32_i32_e32 v175, v179
	v_cvt_f32_i32_e32 v176, v25
	v_cvt_f32_i32_e32 v177, v26
	v_cvt_f32_i32_e32 v178, v27
	v_cvt_f32_i32_e32 v179, v28
	v_cvt_f32_i32_e32 v208, v29
	v_cvt_f32_i32_e32 v209, v30
	v_cvt_f32_i32_e32 v210, v31
	v_cvt_f32_i32_e32 v211, v32
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[183:184], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[13:14], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[17:18], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[21:22], v[25:32] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v9, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v26
	v_cvt_f32_i32_e32 v13, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v17, v29
	v_cvt_f32_i32_e32 v18, v30
	v_cvt_f32_i32_e32 v21, v31
	v_cvt_f32_i32_e32 v22, v32
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[69:70], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[71:72], v[15:16], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[19:20], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[23:24], v[25:32] neg_lo:[1,1,0]
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v69, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v70, v26
	v_cvt_f32_i32_e32 v71, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v28
	v_cvt_f32_i32_e32 v73, v29
	v_cvt_f32_i32_e32 v74, v30
	v_cvt_f32_i32_e32 v75, v31
	v_cvt_f32_i32_e32 v76, v32
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[183:184], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 932 25                        ; ragged.py:932:25
	v_mul_lo_u32 v11, v109, s28
	v_mul_lo_u32 v12, v111, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[15:16], v[25:32] neg_lo:[1,1,0]
	.loc	1 932 25                        ; ragged.py:932:25
	v_mul_lo_u32 v15, v114, s28
	v_mul_lo_u32 v16, v115, s28
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[19:20], v[25:32] neg_lo:[1,1,0]
	.loc	1 938 40                        ; ragged.py:938:40
	v_add_lshl_u32 v19, v41, s1, 1
	.loc	1 931 40                        ; ragged.py:931:40
	v_add_lshl_u32 v11, s20, v11, 1
	v_add_lshl_u32 v12, s20, v12, 1
	v_add_lshl_u32 v15, s20, v15, 1
	v_add_lshl_u32 v16, s20, v16, 1
	.loc	1 938 40                        ; ragged.py:938:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 931 40                        ; ragged.py:931:40
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 938 40                        ; ragged.py:938:40
	buffer_load_u16 v19, v19, s[16:19], 0 offen
	.loc	1 931 40                        ; ragged.py:931:40
	s_clause 0x3
	buffer_load_u16 v11, v11, s[44:47], 0 offen
	buffer_load_u16 v12, v12, s[44:47], 0 offen
	buffer_load_u16 v15, v15, s[44:47], 0 offen
	buffer_load_u16 v16, v16, s[44:47], 0 offen
	.loc	1 918 31                        ; ragged.py:918:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[187:188], v[23:24], v[25:32] neg_lo:[1,1,0]
	.loc	1 943 21                        ; ragged.py:943:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 17                        ; ragged.py:945:17
	s_add_i32 s20, s20, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 929 27                        ; ragged.py:929:27
	v_cvt_f32_i32_e32 v1, v25
	v_cvt_f32_i32_e32 v3, v27
	v_cvt_f32_i32_e32 v2, v26
	v_cvt_f32_i32_e32 v4, v28
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v8, v32
	.loc	1 901 19                        ; ragged.py:901:19
	s_cmp_lg_u32 s20, s28
	.loc	1 938 40                        ; ragged.py:938:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 931 40                        ; ragged.py:931:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 943 21                        ; ragged.py:943:21
	ds_store_b32 v170, v19
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v19, v202, v11
	v_mul_f32_e32 v20, v203, v11
	v_mul_f32_e32 v23, v204, v11
	v_mul_f32_e32 v24, v205, v11
	v_mul_f32_e32 v25, v206, v11
	v_mul_f32_e32 v26, v207, v11
	v_mul_f32_e32 v27, v189, v11
	v_mul_f32_e32 v28, v190, v11
	v_mul_f32_e32 v29, v33, v11
	v_mul_f32_e32 v30, v34, v11
	v_mul_f32_e32 v31, v37, v11
	v_mul_f32_e32 v32, v38, v11
	v_mul_f32_e32 v33, v182, v11
	v_mul_f32_e32 v34, v191, v11
	v_mul_f32_e32 v37, v192, v11
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v38, v193, v11 :: v_dual_lshlrev_b32 v11, 16, v12
	.loc	1 943 21                        ; ragged.py:943:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 936 21                        ; ragged.py:936:21
	v_mul_f32_e32 v12, v194, v11
	v_mul_f32_e32 v180, v195, v11
	v_mul_f32_e32 v181, v196, v11
	v_mul_f32_e32 v182, v197, v11
	v_mul_f32_e32 v183, v198, v11
	v_mul_f32_e32 v184, v199, v11
	v_mul_f32_e32 v185, v200, v11
	v_mul_f32_e32 v186, v201, v11
	v_mul_f32_e32 v35, v35, v11
	v_mul_f32_e32 v36, v36, v11
	v_mul_f32_e32 v39, v39, v11
	v_mul_f32_e32 v40, v40, v11
	v_mul_f32_e32 v172, v172, v11
	v_mul_f32_e32 v173, v173, v11
	v_mul_f32_e32 v174, v174, v11
	v_mul_f32_e32 v175, v175, v11
	.loc	1 931 40                        ; ragged.py:931:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v11, 16, v15
	.loc	1 936 21                        ; ragged.py:936:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v190, v9, v11 :: v_dual_lshlrev_b32 v9, 16, v16
	v_mul_f32_e32 v15, v176, v11
	v_mul_f32_e32 v176, v177, v11
	v_mul_f32_e32 v177, v178, v11
	v_mul_f32_e32 v188, v210, v11
	v_mul_f32_e32 v189, v211, v11
	v_mul_f32_e32 v191, v10, v11
	v_mul_f32_e32 v13, v13, v11
	v_mul_f32_e32 v17, v17, v11
	v_mul_f32_e32 v18, v18, v11
	v_mul_f32_e32 v10, v69, v9
	v_mul_f32_e32 v16, v71, v9
	v_dual_mul_f32 v69, v72, v9 :: v_dual_mul_f32 v178, v179, v11
	v_mul_f32_e32 v179, v208, v11
	v_mul_f32_e32 v187, v209, v11
	v_mul_f32_e32 v14, v14, v11
	v_mul_f32_e32 v71, v74, v9
	v_mul_f32_e32 v22, v22, v11
	v_mul_f32_e32 v72, v75, v9
	v_mul_f32_e32 v74, v1, v9
	v_mul_f32_e32 v21, v21, v11
	v_mul_f32_e32 v11, v70, v9
	v_mul_f32_e32 v70, v73, v9
	v_mul_f32_e32 v73, v76, v9
	v_mul_f32_e32 v75, v2, v9
	v_mul_f32_e32 v76, v3, v9
	v_mul_f32_e32 v192, v4, v9
	v_mul_f32_e32 v193, v5, v9
	v_mul_f32_e32 v194, v6, v9
	v_mul_f32_e32 v195, v7, v9
	v_mul_f32_e32 v196, v8, v9
	.loc	1 943 21                        ; ragged.py:943:21
	ds_load_b128 v[1:4], v171
	ds_load_b128 v[5:8], v171 offset:16
	.loc	1 944 17                        ; ragged.py:944:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v108, v19, v1 :: v_dual_fmac_f32 v145, v20, v2
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v144, v23, v3 :: v_dual_fmac_f32 v85, v73, v8
	v_fmac_f32_e32 v143, v24, v4
	v_fmac_f32_e32 v130, v12, v1
	v_dual_fmac_f32 v129, v180, v2 :: v_dual_fmac_f32 v126, v182, v4
	v_dual_fmac_f32 v92, v10, v1 :: v_dual_fmac_f32 v91, v11, v2
	.loc	1 943 21                        ; ragged.py:943:21
	ds_load_b128 v[9:12], v171 offset:512
	.loc	1 944 17                        ; ragged.py:944:17
	v_fmac_f32_e32 v128, v181, v3
	v_dual_fmac_f32 v90, v16, v3 :: v_dual_fmac_f32 v89, v69, v4
	v_fmac_f32_e32 v105, v178, v4
	v_fmac_f32_e32 v141, v26, v6
	v_fmac_f32_e32 v107, v176, v2
	v_fmac_f32_e32 v124, v184, v6
	v_fmac_f32_e32 v106, v177, v3
	v_fmac_f32_e32 v122, v186, v8
	v_fmac_f32_e32 v110, v15, v1
	.loc	1 943 21                        ; ragged.py:943:21
	ds_load_b128 v[1:4], v171 offset:528
	.loc	1 944 17                        ; ragged.py:944:17
	v_dual_fmac_f32 v142, v25, v5 :: v_dual_fmac_f32 v139, v28, v8
	v_fmac_f32_e32 v125, v183, v5
	v_dual_fmac_f32 v123, v185, v7 :: v_dual_fmac_f32 v88, v70, v5
	v_fmac_f32_e32 v104, v179, v5
	v_fmac_f32_e32 v103, v187, v6
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v140, v27, v7 :: v_dual_fmac_f32 v97, v14, v12
	v_dual_fmac_f32 v87, v71, v6 :: v_dual_fmac_f32 v86, v72, v7
	v_fmac_f32_e32 v138, v29, v9
	v_fmac_f32_e32 v101, v189, v8
	v_dual_fmac_f32 v137, v30, v10 :: v_dual_fmac_f32 v136, v31, v11
	v_fmac_f32_e32 v135, v32, v12
	v_dual_fmac_f32 v121, v35, v9 :: v_dual_fmac_f32 v120, v36, v10
	v_dual_fmac_f32 v102, v188, v7 :: v_dual_fmac_f32 v99, v191, v10
	v_dual_fmac_f32 v119, v39, v11 :: v_dual_fmac_f32 v80, v192, v12
	v_fmac_f32_e32 v118, v40, v12
	v_fmac_f32_e32 v100, v190, v9
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v98, v13, v11 :: v_dual_fmac_f32 v117, v172, v1
	v_fmac_f32_e32 v84, v74, v9
	v_dual_fmac_f32 v82, v75, v10 :: v_dual_fmac_f32 v81, v76, v11
	v_dual_fmac_f32 v134, v33, v1 :: v_dual_fmac_f32 v133, v34, v2
	v_dual_fmac_f32 v132, v37, v3 :: v_dual_fmac_f32 v95, v18, v2
	v_dual_fmac_f32 v131, v38, v4 :: v_dual_fmac_f32 v116, v173, v2
	v_dual_fmac_f32 v113, v174, v3 :: v_dual_fmac_f32 v112, v175, v4
	v_fmac_f32_e32 v79, v193, v1
	v_dual_fmac_f32 v96, v17, v1 :: v_dual_fmac_f32 v93, v22, v4
	v_dual_fmac_f32 v94, v21, v3 :: v_dual_fmac_f32 v83, v194, v2
	v_dual_fmac_f32 v78, v195, v3 :: v_dual_fmac_f32 v77, v196, v4
	.loc	1 901 19                        ; ragged.py:901:19
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 947 9                         ; ragged.py:947:9
	v_bfe_u32 v21, v108, 16, 1
	v_bfe_u32 v22, v145, 16, 1
	v_cmp_o_f32_e64 s19, v108, v108
	v_bfe_u32 v24, v144, 16, 1
	v_cmp_o_f32_e64 s20, v145, v145
	v_add3_u32 v23, v108, v21, 0x7fff
	v_add3_u32 v22, v145, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v144, v144
	v_add3_u32 v24, v144, v24, 0x7fff
	v_bfe_u32 v25, v142, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v143, 16, 1
	v_bfe_u32 v26, v141, 16, 1
	v_cmp_o_f32_e64 s19, v143, v143
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v143, v23, 0x7fff
	v_add3_u32 v25, v142, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v142, v142
	v_add3_u32 v26, v141, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v141, v141
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v140, 16, 1
	v_bfe_u32 v27, v139, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v138, 16, 1
	v_add3_u32 v23, v140, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v140, v140
	v_add3_u32 v27, v139, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_bfe_u32 v28, v137, 16, 1
	v_add3_u32 v26, v138, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v136, 16, 1
	v_bfe_u32 v29, v135, 16, 1
	v_add3_u32 v28, v137, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v137, v137
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v136, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_add3_u32 v29, v135, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v134, 16, 1
	v_bfe_u32 v30, v133, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v132, 16, 1
	v_add3_u32 v28, v134, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v134, v134
	v_add3_u32 v30, v133, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v133, v133
	v_bfe_u32 v31, v131, 16, 1
	v_add3_u32 v29, v132, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v132, v132
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v130, 16, 1
	v_bfe_u32 v32, v129, 16, 1
	v_add3_u32 v31, v131, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v131, v131
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v130, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v130, v130
	v_add3_u32 v32, v129, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v128, 16, 1
	v_bfe_u32 v33, v126, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v125, 16, 1
	v_add3_u32 v31, v128, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v128, v128
	v_add3_u32 v33, v126, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v126, v126
	v_bfe_u32 v34, v124, 16, 1
	v_add3_u32 v32, v125, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v125, v125
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v123, 16, 1
	v_bfe_u32 v35, v122, 16, 1
	v_add3_u32 v34, v124, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v124, v124
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v123, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v123, v123
	v_add3_u32 v35, v122, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v122, v122
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v121, 16, 1
	v_bfe_u32 v36, v120, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v119, 16, 1
	v_add3_u32 v34, v121, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v121, v121
	v_add3_u32 v36, v120, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v120, v120
	v_bfe_u32 v37, v118, 16, 1
	v_add3_u32 v35, v119, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v119, v119
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v117, 16, 1
	v_bfe_u32 v38, v116, 16, 1
	v_add3_u32 v37, v118, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v118, v118
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v117, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v117, v117
	v_add3_u32 v38, v116, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v116, v116
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v113, 16, 1
	v_bfe_u32 v39, v112, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v110, 16, 1
	v_add3_u32 v37, v113, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v113, v113
	v_add3_u32 v39, v112, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v112, v112
	v_bfe_u32 v40, v107, 16, 1
	v_add3_u32 v38, v110, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v106, 16, 1
	v_bfe_u32 v41, v105, 16, 1
	v_add3_u32 v40, v107, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v107, v107
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v106, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v106, v106
	v_add3_u32 v41, v105, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v105, v105
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v104, 16, 1
	v_bfe_u32 v42, v103, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v102, 16, 1
	v_add3_u32 v40, v104, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v104, v104
	v_add3_u32 v42, v103, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_bfe_u32 v43, v101, 16, 1
	v_add3_u32 v41, v102, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v102, v102
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v100, 16, 1
	v_bfe_u32 v44, v99, 16, 1
	v_add3_u32 v43, v101, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v101, v101
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v100, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v100, v100
	v_add3_u32 v44, v99, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v99, v99
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v98, 16, 1
	v_bfe_u32 v45, v97, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v96, 16, 1
	v_add3_u32 v43, v98, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v98, v98
	v_add3_u32 v45, v97, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v97, v97
	v_bfe_u32 v46, v95, 16, 1
	v_add3_u32 v44, v96, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v96, v96
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v94, 16, 1
	v_bfe_u32 v47, v93, 16, 1
	v_add3_u32 v46, v95, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v95, v95
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v94, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v94, v94
	v_add3_u32 v47, v93, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v93, v93
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v92, 16, 1
	v_bfe_u32 v48, v91, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v90, 16, 1
	v_add3_u32 v46, v92, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v92, v92
	v_add3_u32 v48, v91, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v91, v91
	v_bfe_u32 v49, v89, 16, 1
	v_add3_u32 v47, v90, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v90, v90
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v88, 16, 1
	v_bfe_u32 v50, v87, 16, 1
	v_add3_u32 v49, v89, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v89, v89
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v88, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v88, v88
	v_add3_u32 v50, v87, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v87, v87
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v86, 16, 1
	v_bfe_u32 v51, v85, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v84, 16, 1
	v_add3_u32 v49, v86, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v86, v86
	v_add3_u32 v51, v85, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v85, v85
	v_add3_u32 v50, v84, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v84, v84
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v82, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v81, 16, 1
	v_bfe_u32 v53, v80, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v82, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v82, v82
	v_add3_u32 v51, v81, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_add3_u32 v53, v80, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v80, v80
	v_bfe_u32 v54, v79, 16, 1
	.loc	1 850 36                        ; ragged.py:850:36
	v_lshrrev_b32_e32 v1, 1, v127
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v83, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v79, v54, 0x7fff
	v_bfe_u32 v54, v78, 16, 1
	v_bfe_u32 v55, v77, 16, 1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v11, s22, v1
	.loc	1 947 9                         ; ragged.py:947:9
	v_cmp_o_f32_e64 s19, v79, v79
	v_add3_u32 v52, v83, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v83, v83
	v_add3_u32 v54, v78, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v78, v78
	v_add3_u32 v55, v77, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v77, v77
	v_cndmask_b16 v52.l, 0x7fff, v53.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v54.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v55.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v53, v25, v22, s19
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_cndmask_b32_e64 v25, v23, v24, s19
	v_cndmask_b32_e64 v23, v24, v23, s19
	v_cndmask_b32_e64 v24, v28, v26, s19
	v_cndmask_b32_e64 v26, v26, v28, s19
	v_cndmask_b32_e64 v28, v29, v27, s19
	v_cndmask_b32_e64 v27, v27, v29, s19
	v_cndmask_b32_e64 v29, v32, v30, s19
	v_cndmask_b32_e64 v30, v30, v32, s19
	v_cndmask_b32_e64 v32, v33, v31, s19
	v_cndmask_b32_e64 v31, v31, v33, s19
	v_cndmask_b32_e64 v33, v36, v34, s19
	v_cndmask_b32_e64 v34, v34, v36, s19
	v_cndmask_b32_e64 v36, v37, v35, s19
	v_cndmask_b32_e64 v35, v35, v37, s19
	v_cndmask_b32_e64 v37, v40, v38, s19
	v_cndmask_b32_e64 v38, v38, v40, s19
	v_cndmask_b32_e64 v40, v41, v39, s19
	v_cndmask_b32_e64 v39, v39, v41, s19
	v_cndmask_b32_e64 v41, v44, v42, s19
	v_cndmask_b32_e64 v42, v42, v44, s19
	v_cndmask_b32_e64 v44, v45, v43, s19
	v_cndmask_b32_e64 v43, v43, v45, s19
	v_cndmask_b32_e64 v45, v48, v46, s19
	v_cndmask_b32_e64 v46, v46, v48, s19
	v_cndmask_b32_e64 v48, v49, v47, s19
	v_cndmask_b32_e64 v47, v47, v49, s19
	v_cndmask_b32_e64 v49, v52, v50, s19
	v_cndmask_b32_e64 v50, v50, v52, s19
	v_cndmask_b32_e64 v52, v0, v51, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v51, v0, s19
	v_cndmask_b32_e64 v51, 0x1054, v54, s19
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v20, v109, s30
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v16, 1, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v15, 2, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s18, s30, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_lshl_or_b32 v54, v54, 8, v54
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s17, s30, v16
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s16, s30, v15
	.loc	1 947 9                         ; ragged.py:947:9
	v_lshl_or_b32 v51, v51, 4, v51
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_lshl_or_b32 v54, v54, 4, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x5040504, v51
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s18, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s17, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s16, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s15, s30, v14
	.loc	1 947 9                         ; ragged.py:947:9
	v_perm_b32 v22, v22, v53, v54
	v_perm_b32 v53, v23, v25, v51
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v51
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v51
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v51
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v51
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v51
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v51
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v38, v37, v51
	v_perm_b32 v37, v38, v37, v54
	v_perm_b32 v38, v39, v40, v51
	v_perm_b32 v39, v39, v40, v54
	v_perm_b32 v40, v42, v41, v51
	v_perm_b32 v41, v42, v41, v54
	v_perm_b32 v42, v43, v44, v51
	v_perm_b32 v43, v43, v44, v54
	v_perm_b32 v44, v46, v45, v51
	v_perm_b32 v45, v46, v45, v54
	v_perm_b32 v46, v47, v48, v51
	v_perm_b32 v47, v47, v48, v54
	v_perm_b32 v48, v50, v49, v51
	v_perm_b32 v49, v50, v49, v54
	v_perm_b32 v50, v0, v52, v51
	v_mov_b16_e32 v51.l, v55.h
	v_mov_b16_e32 v51.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 947 9                         ; ragged.py:947:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s14, s30, v13
	v_cmp_gt_i32_e64 s13, s30, v12
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s15, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s12, s30, v10
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s14, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s13, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s11, s30, v9
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s12, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s10, s30, v8
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v52.h, v21.h
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
	buffer_store_b16 v21, v51, s[20:23], 0 offen
	buffer_store_b16 v53, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s9, s30, v7
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s11, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s8, s30, v6
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s10, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s9, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s7, s30, v5
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s8, s4
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s6, s30, v4
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 850 18                        ; ragged.py:850:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s5, s30, v3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v19, v111, s30
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s7, s4
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s1, s30, v2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s6, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 852 20                        ; ragged.py:852:20
	v_cmp_gt_i32_e64 s0, s30, v1
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s5, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s19, s1, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s0, s4
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s18, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s17, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s16, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s15, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s14, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s13, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s12, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s11, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s10, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s9, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s8, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v18, v114, s30
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s7, s3
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s6, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s5, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s4, s1, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s0, s3
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s18, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s17, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s16, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s15, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s14, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s13, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s12, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s11, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s10, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s9, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s8, s2
	.loc	1 948 13                        ; ragged.py:948:13
	v_mul_lo_u32 v17, v115, s30
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s7, s2
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s6, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s5, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 950 18                        ; ragged.py:950:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 947 9                         ; ragged.py:947:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v45, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v46, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v47, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v48, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v49, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v50, v4, s[20:23], 0 offen
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 212
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 212
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13016
; TotalNumSgprs: 77
; NumVgprs: 212
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 212
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
