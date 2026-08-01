	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 837 0                         ; ragged.py:837:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s62, s[0:1], 0x4c
	s_load_b64 s[60:61], s[0:1], 0x54
.Ltmp0:
	.loc	1 865 25 prologue_end           ; ragged.py:865:25
	s_abs_i32 s7, s2
	s_load_b256 s[36:43], s[0:1], 0x28
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s62, 0xff
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v118, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v126, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v130, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v132, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v144, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v148, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v152, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v156, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v158, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v160, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v164, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v159, 0 :: v_dual_and_b32 v140, 0xf0, v0
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 867 33                        ; ragged.py:867:33
	s_sub_i32 s5, s61, s4
	.loc	1 868 24                        ; ragged.py:868:24
	s_mul_i32 s3, s4, s3
	.loc	1 867 22                        ; ragged.py:867:22
	s_min_i32 s5, s5, 1
	.loc	1 868 24                        ; ragged.py:868:24
	s_sub_i32 s2, s2, s3
	.loc	1 870 17                        ; ragged.py:870:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 870 17                        ; ragged.py:870:17
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
	.loc	1 869 34                        ; ragged.py:869:34
	s_mul_i32 s3, s6, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 869 20 is_stmt 0              ; ragged.py:869:20
	s_add_i32 s2, s2, s4
	.loc	1 872 20 is_stmt 1              ; ragged.py:872:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 873 23                        ; ragged.py:873:23
	s_lshl_b64 s[12:13], s[2:3], 3
	s_add_u32 s2, s36, s12
	s_addc_u32 s3, s37, s13
	s_load_b64 s[56:57], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s38, s12
	s_addc_u32 s3, s39, s13
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s40, s12
	s_addc_u32 s5, s41, s13
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[18:19], s[4:5], 0x0
	v_mov_b32_e32 v161, 0
	.loc	1 877 18                        ; ragged.py:877:18
	s_lshl_b32 s39, s6, 8
	s_mov_b32 s40, 0
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s57, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v120, s56, v1
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s2, s[18:19], v[2:3]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s6, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s7, s[10:11], v[8:9]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s4, s[18:19], v[4:5]
	v_cmp_gt_i64_e64 s8, s[18:19], v[6:7]
	v_cmp_gt_i64_e64 s9, s[18:19], v[8:9]
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v122, 16, v120
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v124, 32, v120
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v125, 48, v120
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lt_i32 s60, 1
	s_cbranch_scc1 .LBB0_5
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s41, s[0:1], 0x50
	s_load_b256 s[44:51], s[0:1], 0x0
	.loc	1 876 32 is_stmt 1              ; ragged.py:876:32
	v_lshrrev_b32_e32 v18, 5, v0
	.loc	1 876 18 is_stmt 0              ; ragged.py:876:18
	v_dual_mov_b32 v166, 0 :: v_dual_and_b32 v19, 0xe0, v0
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v167, s39, v0
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v168, v124, s60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v2, s0, s56, v18
	v_add_co_ci_u32_e64 v3, null, s57, 0, s0
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v20, s39, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v4, vcc_lo, v2, 8
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s24, s6, s12
	s_addc_u32 s25, s7, s13
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v8, vcc_lo, v2, 24
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s38, s[24:25], 0x0
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v21, 8, v20
	.loc	1 940 39                        ; ragged.py:940:39
	s_mul_i32 s52, s41, s62
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v22, 16, v20
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v23, 24, v20
	v_or_b32_e32 v24, 32, v20
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v25, 40, v20
	v_or_b32_e32 v26, 48, v20
	.loc	1 966 25                        ; ragged.py:966:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s70, s60, s38
	.loc	1 940 39                        ; ragged.py:940:39
	s_mul_i32 s38, s52, s38
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_mad_u64_u32 v[65:66], null, v20, s41, s[38:39]
	v_mad_u64_u32 v[66:67], null, v21, s41, s[38:39]
	v_add_co_u32 v16, vcc_lo, v2, 56
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v27, 56, v20
	v_mad_u64_u32 v[67:68], null, v22, s41, s[38:39]
	v_or_b32_e32 v28, 64, v20
	v_mad_u64_u32 v[68:69], null, v23, s41, s[38:39]
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v29, 0x48, v20
	v_mad_u64_u32 v[69:70], null, v24, s41, s[38:39]
	v_or_b32_e32 v30, 0x50, v20
	v_mad_u64_u32 v[70:71], null, v25, s41, s[38:39]
	v_or_b32_e32 v31, 0x58, v20
	v_mad_u64_u32 v[71:72], null, v26, s41, s[38:39]
	v_or_b32_e32 v32, 0x60, v20
	v_mad_u64_u32 v[72:73], null, v27, s41, s[38:39]
	v_or_b32_e32 v33, 0x68, v20
	v_mad_u64_u32 v[73:74], null, s41, v28, s[38:39]
	v_or_b32_e32 v34, 0x70, v20
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e32 vcc_lo, s[10:11], v[2:3]
	v_cmp_le_i64_e64 s0, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s1, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	v_cmp_le_i64_e64 s7, s[10:11], v[10:11]
	v_cmp_le_i64_e64 s8, s[10:11], v[12:13]
	v_cmp_le_i64_e64 s9, s[10:11], v[14:15]
	v_cmp_le_i64_e64 s10, s[10:11], v[16:17]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s11, s[18:19], v[2:3]
	v_dual_mov_b32 v165, 0 :: v_dual_lshlrev_b32 v2, 1, v0
	v_mad_u64_u32 v[74:75], null, s41, v29, s[38:39]
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v35, 0x78, v20
	v_mad_u64_u32 v[75:76], null, s41, v30, s[38:39]
	v_or_b32_e32 v36, 0x80, v20
	v_mad_u64_u32 v[76:77], null, s41, v31, s[38:39]
	v_or_b32_e32 v37, 0x88, v20
	v_mad_u64_u32 v[77:78], null, s41, v32, s[38:39]
	v_or_b32_e32 v38, 0x90, v20
	v_mad_u64_u32 v[78:79], null, s41, v33, s[38:39]
	v_or_b32_e32 v39, 0x98, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s12, s[18:19], v[4:5]
	v_bfe_i32 v3, v0, 7, 1
	v_dual_mov_b32 v164, 0 :: v_dual_and_b32 v5, 24, v2
	v_mad_u64_u32 v[79:80], null, s41, v34, s[38:39]
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v40, 0xa0, v20
	v_mad_u64_u32 v[80:81], null, s41, v35, s[38:39]
	v_or_b32_e32 v41, 0xa8, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s14, s[18:19], v[8:9]
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v9, s56, v18
	v_mad_u64_u32 v[81:82], null, s41, v36, s[38:39]
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v42, 0xb0, v20
	v_mad_u64_u32 v[82:83], null, s41, v37, s[38:39]
	v_or_b32_e32 v43, 0xb8, v20
	v_mad_u64_u32 v[83:84], null, s41, v38, s[38:39]
	v_or_b32_e32 v44, 0xc0, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s13, s[18:19], v[6:7]
	v_dual_mov_b32 v163, 0 :: v_dual_and_b32 v4, 0x7f, v0
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_lshl_or_b32 v170, v1, 5, v5
	v_dual_mov_b32 v161, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	v_mad_u64_u32 v[84:85], null, s41, v39, s[38:39]
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v45, 0xc8, v20
	v_mad_u64_u32 v[85:86], null, s41, v40, s[38:39]
	v_or_b32_e32 v46, 0xd0, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s16, s[18:19], v[12:13]
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v12, 8, v9
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v13, 16, v9
	v_mad_u64_u32 v[86:87], null, s41, v41, s[38:39]
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v47, 0xd8, v20
	v_mad_u64_u32 v[87:88], null, s41, v42, s[38:39]
	v_or_b32_e32 v48, 0xe0, v20
	v_mad_u64_u32 v[88:89], null, s41, v43, s[38:39]
	v_or_b32_e32 v49, 0xe8, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s15, s[18:19], v[10:11]
	v_xor_b32_e32 v171, v3, v4
	v_lshl_or_b32 v172, v19, 4, v170
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v10, 2, v140
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v6, 32, v6
	v_mad_u64_u32 v[89:90], null, s41, v44, s[38:39]
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v50, 0xf0, v20
	v_mad_u64_u32 v[90:91], null, s41, v45, s[38:39]
	v_or_b32_e32 v51, 0xf8, v20
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s17, s[18:19], v[14:15]
	v_mul_lo_u32 v173, v9, s41
	v_mul_lo_u32 v174, v12, s41
	v_mul_lo_u32 v175, v13, s41
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v12, 24, v9
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v13, 32, v9
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v14, 40, v9
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v15, 48, v9
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v9, 56, v9
	v_mad_u64_u32 v[91:92], null, s41, v46, s[38:39]
	v_mad_u64_u32 v[92:93], null, s41, v47, s[38:39]
	v_cmp_gt_i64_e64 s18, s[18:19], v[16:17]
	v_mad_u64_u32 v[93:94], null, s41, v48, s[38:39]
	v_xor_b32_e32 v1, 0x110, v171
	v_xor_b32_e32 v3, 8, v170
	v_xor_b32_e32 v4, 16, v170
	v_xor_b32_e32 v5, 24, v170
	v_xor_b32_e32 v7, 8, v172
	v_xor_b32_e32 v8, 16, v172
	v_xor_b32_e32 v11, 24, v172
	v_dual_mov_b32 v155, 0 :: v_dual_and_b32 v2, 28, v2
	v_add3_u32 v6, 0, v10, v6
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v10, 1, v140
	v_mad_u64_u32 v[94:95], null, s41, v49, s[38:39]
	v_mad_u64_u32 v[95:96], null, s41, v50, s[38:39]
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v169, v125, s60
	v_mul_lo_u32 v176, v12, s41
	v_mul_lo_u32 v177, v13, s41
	v_mul_lo_u32 v178, v14, s41
	v_mul_lo_u32 v179, v15, s41
	v_mul_lo_u32 v180, v9, s41
	v_mad_u64_u32 v[96:97], null, s41, v51, s[38:39]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s61, vcc_lo, s11
	s_and_b32 s63, s0, s12
	s_and_b32 s64, s1, s13
	s_and_b32 s65, s6, s14
	s_and_b32 s66, s7, s15
	s_and_b32 s67, s8, s16
	s_and_b32 s68, s9, s17
	s_and_b32 s69, s10, s18
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v20
	v_cmp_gt_i32_e64 s1, s62, v21
	v_cmp_gt_i32_e64 s6, s62, v22
	v_cmp_gt_i32_e64 s7, s62, v23
	v_cmp_gt_i32_e64 s8, s62, v24
	v_cmp_gt_i32_e64 s9, s62, v25
	v_cmp_gt_i32_e64 s10, s62, v26
	v_cmp_gt_i32_e64 s11, s62, v27
	v_cmp_gt_i32_e64 s12, s62, v28
	v_cmp_gt_i32_e64 s13, s62, v29
	v_cmp_gt_i32_e64 s14, s62, v30
	v_cmp_gt_i32_e64 s15, s62, v31
	v_cmp_gt_i32_e64 s16, s62, v32
	v_cmp_gt_i32_e64 s17, s62, v33
	v_cmp_gt_i32_e64 s18, s62, v34
	v_cmp_gt_i32_e64 s19, s62, v35
	v_cmp_gt_i32_e64 s20, s62, v36
	v_cmp_gt_i32_e64 s21, s62, v37
	v_cmp_gt_i32_e64 s22, s62, v38
	v_cmp_gt_i32_e64 s23, s62, v39
	v_cmp_gt_i32_e64 s24, s62, v40
	v_cmp_gt_i32_e64 s25, s62, v41
	v_cmp_gt_i32_e64 s26, s62, v42
	v_cmp_gt_i32_e64 s27, s62, v43
	v_cmp_gt_i32_e64 s28, s62, v44
	v_cmp_gt_i32_e64 s29, s62, v45
	v_cmp_gt_i32_e64 s30, s62, v46
	v_cmp_gt_i32_e64 s31, s62, v47
	v_cmp_gt_i32_e64 s33, s62, v48
	v_cmp_gt_i32_e64 s34, s62, v49
	v_cmp_gt_i32_e64 s35, s62, v50
	v_cmp_gt_i32_e64 s36, s62, v51
	v_cmp_gt_i32_e64 s37, s62, v167
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v181, v6, v2
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v182, 0, v1
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v183, 0, v3
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v184, 0, v4
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v185, 0, v5
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v186, 0, v7
	v_dual_mov_b32 v144, 0 :: v_dual_add_nc_u32 v187, 0, v8
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v188, 0, v11
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v189, 0, v10
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v98, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	s_and_b32 s53, s45, 0xffff
	s_mov_b32 s52, s44
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s45, s47, 0xffff
	s_mov_b32 s44, s46
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s51, 0xffff
	s_mov_b32 s56, s50
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v2, v166 :: v_dual_and_b32 v5, 31, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, v166
	v_mov_b32_e32 v3, v166
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v190, s40, 6, v5
	v_mov_b32_e32 v5, v166
	v_dual_mov_b32 v6, v166 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v7, v166
	v_dual_mov_b32 v8, v166 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v10, v166 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v11, v166
	v_dual_mov_b32 v12, v166 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v13, v166
	v_dual_mov_b32 v14, v166 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v15, v166
	v_dual_mov_b32 v16, v166 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v18, v166 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v19, v166
	v_mov_b32_e32 v20, v166
	v_mov_b32_e32 v21, v166
	v_mov_b32_e32 v22, v166
	v_mov_b32_e32 v23, v166
	v_mov_b32_e32 v24, v166
	v_mov_b32_e32 v26, v166
	v_mov_b32_e32 v27, v166
	v_mov_b32_e32 v28, v166
	v_mov_b32_e32 v29, v166
	v_mov_b32_e32 v30, v166
	v_mov_b32_e32 v31, v166
	v_mov_b32_e32 v32, v166
	v_mov_b32_e32 v34, v166
	v_mov_b32_e32 v35, v166
	v_mov_b32_e32 v36, v166
	v_mov_b32_e32 v37, v166
	v_mov_b32_e32 v38, v166
	v_mov_b32_e32 v39, v166
	v_mov_b32_e32 v40, v166
	v_mov_b32_e32 v42, v166
	v_mov_b32_e32 v43, v166
	v_mov_b32_e32 v44, v166
	v_mov_b32_e32 v45, v166
	v_mov_b32_e32 v46, v166
	v_mov_b32_e32 v47, v166
	v_mov_b32_e32 v48, v166
	v_mov_b32_e32 v50, v166
	v_mov_b32_e32 v51, v166
	v_mov_b32_e32 v52, v166
	v_mov_b32_e32 v53, v166
	v_mov_b32_e32 v54, v166
	v_mov_b32_e32 v55, v166
	v_mov_b32_e32 v56, v166
	v_mov_b32_e32 v58, v166
	v_mov_b32_e32 v59, v166
	v_mov_b32_e32 v60, v166
	v_mov_b32_e32 v61, v166
	v_mov_b32_e32 v62, v166
	v_mov_b32_e32 v63, v166
	v_mov_b32_e32 v64, v166
	s_mov_b32 s38, 0
	s_mov_b32 s50, -1
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v191, s38, v190
	.loc	1 944 34                        ; ragged.py:944:34
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	.loc	1 943 34                        ; ragged.py:943:34
	v_add_nc_u32_e32 v255, 0, v171
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e32 vcc_lo, s41, v191
	.loc	1 943 42                        ; ragged.py:943:42
	v_add_nc_u32_e32 v192, v173, v191
	v_add_nc_u32_e32 v193, v174, v191
	v_add_nc_u32_e32 v194, v175, v191
	v_add_nc_u32_e32 v195, v176, v191
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s38, s61, vcc_lo
	.loc	1 943 42                        ; ragged.py:943:42
	v_add_nc_u32_e32 v196, v177, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v192, 0x80000000, v192, s38
	.loc	1 943 66                        ; ragged.py:943:66
	s_and_b32 s38, s63, vcc_lo
	.loc	1 943 42                        ; ragged.py:943:42
	v_add_nc_u32_e32 v197, v178, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v193, 0x80000000, v193, s38
	.loc	1 943 66                        ; ragged.py:943:66
	s_and_b32 s38, s64, vcc_lo
	.loc	1 943 42                        ; ragged.py:943:42
	v_add_nc_u32_e32 v198, v179, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v194, 0x80000000, v194, s38
	.loc	1 943 66                        ; ragged.py:943:66
	s_and_b32 s38, s65, vcc_lo
	.loc	1 943 42                        ; ragged.py:943:42
	v_add_nc_u32_e32 v199, v180, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v195, 0x80000000, v195, s38
	.loc	1 943 66                        ; ragged.py:943:66
	s_and_b32 s38, s66, vcc_lo
	.loc	1 944 42 is_stmt 1              ; ragged.py:944:42
	v_add_nc_u32_e32 v200, v65, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v196, 0x80000000, v196, s38
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s38, s67, vcc_lo
	.loc	1 944 42 is_stmt 1              ; ragged.py:944:42
	v_add_nc_u32_e32 v201, v66, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v197, 0x80000000, v197, s38
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s38, s68, vcc_lo
	.loc	1 944 42 is_stmt 1              ; ragged.py:944:42
	v_add_nc_u32_e32 v202, v67, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v198, 0x80000000, v198, s38
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s38, s69, vcc_lo
	.loc	1 944 42 is_stmt 1              ; ragged.py:944:42
	v_add_nc_u32_e32 v203, v68, v191
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v199, 0x80000000, v199, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s0, vcc_lo
	.loc	1 944 42 is_stmt 0              ; ragged.py:944:42
	v_add_nc_u32_e32 v204, v69, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v200, 0x80000000, v200, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s1, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v205, v70, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v201, 0x80000000, v201, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s6, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v206, v71, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v202, 0x80000000, v202, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s7, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v207, v72, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v203, 0x80000000, v203, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s8, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v208, v73, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v204, 0x80000000, v204, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s9, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v209, v74, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v205, 0x80000000, v205, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s10, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v210, v75, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v206, 0x80000000, v206, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s11, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v211, v76, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v207, 0x80000000, v207, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s12, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v212, v77, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v208, 0x80000000, v208, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s13, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v213, v78, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v209, 0x80000000, v209, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s14, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v214, v79, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v210, 0x80000000, v210, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s15, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v215, v80, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v211, 0x80000000, v211, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s16, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v216, v81, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v212, 0x80000000, v212, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s17, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v217, v82, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v213, 0x80000000, v213, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s18, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v218, v83, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v214, 0x80000000, v214, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s19, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v219, v84, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v215, 0x80000000, v215, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s20, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v220, v85, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v216, 0x80000000, v216, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s21, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v221, v86, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v217, 0x80000000, v217, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s22, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v222, v87, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v218, 0x80000000, v218, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s23, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v223, v88, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v219, 0x80000000, v219, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s24, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v224, v89, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v220, 0x80000000, v220, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s25, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v225, v90, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v221, 0x80000000, v221, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s26, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v226, v91, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v222, 0x80000000, v222, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s27, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v227, v92, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v223, 0x80000000, v223, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s28, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v228, v93, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v224, 0x80000000, v224, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s29, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v229, v94, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v225, 0x80000000, v225, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s30, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v230, v95, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v226, 0x80000000, v226, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s31, vcc_lo
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v191, v96, v191
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v227, 0x80000000, v227, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s33, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v228, 0x80000000, v228, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s34, vcc_lo
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v229, 0x80000000, v229, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s35, vcc_lo
	s_and_b32 vcc_lo, s36, vcc_lo
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v230, 0x80000000, v230, s38
	v_cndmask_b32_e32 v191, 0x80000000, v191, vcc_lo
	.loc	1 943 34 is_stmt 1              ; ragged.py:943:34
	s_clause 0x7
	buffer_load_u8 v192, v192, s[52:55], 0 offen
	buffer_load_u8 v194, v194, s[52:55], 0 offen
	buffer_load_u8 v196, v196, s[52:55], 0 offen
	buffer_load_u8 v198, v198, s[52:55], 0 offen
	buffer_load_u8 v199, v199, s[52:55], 0 offen
	buffer_load_u8 v197, v197, s[52:55], 0 offen
	buffer_load_u8 v195, v195, s[52:55], 0 offen
	buffer_load_u8 v193, v193, s[52:55], 0 offen
	.loc	1 944 34                        ; ragged.py:944:34
	s_clause 0x1f
	buffer_load_u8 v231, v200, s[44:47], 0 offen
	buffer_load_u8 v232, v202, s[44:47], 0 offen
	buffer_load_u8 v233, v204, s[44:47], 0 offen
	buffer_load_u8 v234, v206, s[44:47], 0 offen
	buffer_load_u8 v235, v208, s[44:47], 0 offen
	buffer_load_u8 v236, v210, s[44:47], 0 offen
	buffer_load_u8 v237, v212, s[44:47], 0 offen
	buffer_load_u8 v238, v214, s[44:47], 0 offen
	buffer_load_u8 v239, v216, s[44:47], 0 offen
	buffer_load_u8 v240, v218, s[44:47], 0 offen
	buffer_load_u8 v241, v220, s[44:47], 0 offen
	buffer_load_u8 v242, v222, s[44:47], 0 offen
	buffer_load_u8 v224, v224, s[44:47], 0 offen
	buffer_load_u8 v226, v226, s[44:47], 0 offen
	buffer_load_u8 v228, v228, s[44:47], 0 offen
	buffer_load_u8 v230, v230, s[44:47], 0 offen
	buffer_load_u8 v243, v207, s[44:47], 0 offen
	buffer_load_u8 v244, v205, s[44:47], 0 offen
	buffer_load_u8 v245, v203, s[44:47], 0 offen
	buffer_load_u8 v246, v201, s[44:47], 0 offen
	buffer_load_u8 v247, v215, s[44:47], 0 offen
	buffer_load_u8 v248, v213, s[44:47], 0 offen
	buffer_load_u8 v249, v211, s[44:47], 0 offen
	buffer_load_u8 v250, v209, s[44:47], 0 offen
	buffer_load_u8 v223, v223, s[44:47], 0 offen
	buffer_load_u8 v251, v221, s[44:47], 0 offen
	buffer_load_u8 v252, v219, s[44:47], 0 offen
	buffer_load_u8 v253, v217, s[44:47], 0 offen
	buffer_load_u8 v254, v191, s[44:47], 0 offen
	buffer_load_u8 v229, v229, s[44:47], 0 offen
	buffer_load_u8 v227, v227, s[44:47], 0 offen
	buffer_load_u8 v225, v225, s[44:47], 0 offen
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s38, 32
	.loc	1 932 23                        ; ragged.py:932:23
	s_and_b32 vcc_lo, exec_lo, s50
	s_mov_b32 s50, 0
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v255, v192
	s_waitcnt vmcnt(38)
	ds_store_b8 v255, v194 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v255, v196 offset:1024
	s_waitcnt vmcnt(36)
	ds_store_b8 v255, v198 offset:1536
	s_waitcnt vmcnt(32)
	ds_store_b8 v182, v193
	ds_store_b8 v182, v195 offset:512
	ds_store_b8 v182, v197 offset:1024
	ds_store_b8 v182, v199 offset:1536
	v_add_nc_u32_e32 v195, 0, v170
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[191:194], v195 offset1:1
	ds_load_2addr_stride64_b64 v[195:198], v195 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[199:202], v183 offset1:1
	ds_load_2addr_stride64_b64 v[203:206], v183 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[207:210], v184 offset1:1
	ds_load_2addr_stride64_b64 v[211:214], v184 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[215:218], v185 offset1:1
	ds_load_2addr_stride64_b64 v[219:222], v185 offset0:2 offset1:3
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v255, v231
	s_waitcnt vmcnt(30)
	ds_store_b8 v255, v232 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v255, v233 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v255, v234 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v255, v235 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v255, v236 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v255, v237 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v255, v238 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v255, v239 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v255, v240 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v255, v241 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v255, v242 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v255, v224 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v255, v226 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v255, v228 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v255, v230 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v182, v246
	ds_store_b8 v182, v245 offset:512
	ds_store_b8 v182, v244 offset:1024
	ds_store_b8 v182, v243 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v182, v250 offset:2048
	ds_store_b8 v182, v249 offset:2560
	ds_store_b8 v182, v248 offset:3072
	ds_store_b8 v182, v247 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v182, v253 offset:4096
	ds_store_b8 v182, v252 offset:4608
	ds_store_b8 v182, v251 offset:5120
	ds_store_b8 v182, v223 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v182, v225 offset:6144
	ds_store_b8 v182, v227 offset:6656
	ds_store_b8 v182, v229 offset:7168
	ds_store_b8 v182, v254 offset:7680
	v_add_nc_u32_e32 v223, 0, v172
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[223:226], v223 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[223:224], v[191:192], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[225:226], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[223:224], v[193:194], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[225:226], v[193:194], v[25:32] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[191:194], v186 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[223:224], v[195:196], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[225:226], v[195:196], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[223:224], v[197:198], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[225:226], v[197:198], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[199:200], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[199:200], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[201:202], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[201:202], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[203:204], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[203:204], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[205:206], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[205:206], v[57:64] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[191:194], v187 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[207:208], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[207:208], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[209:210], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[209:210], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[211:212], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[211:212], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[213:214], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[213:214], v[57:64] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[191:194], v188 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[191:192], v[215:216], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[193:194], v[215:216], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[217:218], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[193:194], v[217:218], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[191:192], v[219:220], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[193:194], v[219:220], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[191:192], v[221:222], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[193:194], v[221:222], v[57:64] neg_lo:[1,1,0]
	.loc	1 932 23                        ; ragged.py:932:23
	s_cbranch_vccnz .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v190, v120, s60
	v_mul_lo_u32 v191, v122, s60
	.loc	1 966 25                        ; ragged.py:966:25
	s_add_i32 s38, s40, s70
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v192, s40, v168, 1
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s38, s38, s62
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v194, s40, v169, 1
	.loc	1 965 40                        ; ragged.py:965:40
	v_add_lshl_u32 v193, v167, s38, 1
	s_mov_b32 s58, s54
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v190, s40, v190, 1
	v_add_lshl_u32 v191, s40, v191, 1
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	.loc	1 965 40                        ; ragged.py:965:40
	v_cndmask_b32_e64 v193, 0x80000000, v193, s37
	s_mov_b32 s59, s55
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v190, 0x80000000, v190, s5
	v_cndmask_b32_e64 v191, 0x80000000, v191, s4
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	v_cndmask_b32_e64 v194, 0x80000000, v194, s2
	.loc	1 965 40                        ; ragged.py:965:40
	buffer_load_u16 v193, v193, s[56:59], 0 offen
	.loc	1 958 40                        ; ragged.py:958:40
	s_clause 0x3
	buffer_load_u16 v190, v190, s[48:51], 0 offen
	buffer_load_u16 v191, v191, s[48:51], 0 offen
	buffer_load_u16 v192, v192, s[48:51], 0 offen
	buffer_load_u16 v194, v194, s[48:51], 0 offen
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v197, v3
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v195, v1
	v_cvt_f32_i32_e32 v196, v2
	v_cvt_f32_i32_e32 v198, v4
	v_cvt_f32_i32_e32 v199, v5
	v_cvt_f32_i32_e32 v200, v6
	v_cvt_f32_i32_e32 v201, v7
	v_cvt_f32_i32_e32 v202, v8
	v_cvt_f32_i32_e32 v203, v9
	v_cvt_f32_i32_e32 v204, v10
	v_cvt_f32_i32_e32 v205, v11
	v_cvt_f32_i32_e32 v206, v12
	v_cvt_f32_i32_e32 v207, v13
	v_cvt_f32_i32_e32 v208, v14
	v_cvt_f32_i32_e32 v209, v15
	v_cvt_f32_i32_e32 v210, v16
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 972 17                        ; ragged.py:972:17
	s_add_i32 s40, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s40, s60
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v17, v17, v191 :: v_dual_lshlrev_b32 v190, 16, v190
	.loc	1 965 40                        ; ragged.py:965:40
	v_lshlrev_b32_e32 v1, 16, v193
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v193, 16, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v194, v195, v190
	v_dual_mul_f32 v195, v196, v190 :: v_dual_lshlrev_b32 v192, 16, v192
	.loc	1 970 21                        ; ragged.py:970:21
	ds_store_b32 v181, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v189
	ds_load_b128 v[5:8], v189 offset:16
	ds_load_b128 v[9:12], v189 offset:512
	ds_load_b128 v[13:16], v189 offset:528
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v196, v197, v190
	v_dual_mul_f32 v197, v198, v190 :: v_dual_mul_f32 v20, v20, v191
	v_dual_mul_f32 v198, v199, v190 :: v_dual_mul_f32 v21, v21, v191
	v_dual_mul_f32 v199, v200, v190 :: v_dual_mul_f32 v22, v22, v191
	v_dual_mul_f32 v200, v201, v190 :: v_dual_mul_f32 v19, v19, v191
	v_dual_mul_f32 v201, v202, v190 :: v_dual_mul_f32 v24, v24, v191
	v_dual_mul_f32 v202, v203, v190 :: v_dual_mul_f32 v25, v25, v191
	v_dual_mul_f32 v203, v204, v190 :: v_dual_mul_f32 v26, v26, v191
	v_dual_mul_f32 v204, v205, v190 :: v_dual_mul_f32 v23, v23, v191
	v_dual_mul_f32 v205, v206, v190 :: v_dual_mul_f32 v28, v28, v191
	v_dual_mul_f32 v206, v207, v190 :: v_dual_mul_f32 v29, v29, v191
	v_dual_mul_f32 v207, v208, v190 :: v_dual_mul_f32 v30, v30, v191
	v_dual_mul_f32 v208, v209, v190 :: v_dual_mul_f32 v27, v27, v191
	v_dual_mul_f32 v190, v210, v190 :: v_dual_mul_f32 v31, v31, v191
	v_mul_f32_e32 v18, v18, v191
	v_dual_mul_f32 v32, v32, v191 :: v_dual_mul_f32 v33, v33, v192
	v_dual_mul_f32 v34, v34, v192 :: v_dual_mul_f32 v49, v49, v193
	v_dual_mul_f32 v35, v35, v192 :: v_dual_mul_f32 v50, v50, v193
	v_dual_mul_f32 v36, v36, v192 :: v_dual_mul_f32 v51, v51, v193
	v_dual_mul_f32 v37, v37, v192 :: v_dual_mul_f32 v52, v52, v193
	v_dual_mul_f32 v38, v38, v192 :: v_dual_mul_f32 v53, v53, v193
	v_dual_mul_f32 v39, v39, v192 :: v_dual_mul_f32 v54, v54, v193
	v_dual_mul_f32 v40, v40, v192 :: v_dual_mul_f32 v55, v55, v193
	v_dual_mul_f32 v41, v41, v192 :: v_dual_mul_f32 v56, v56, v193
	v_dual_mul_f32 v42, v42, v192 :: v_dual_mul_f32 v57, v57, v193
	v_dual_mul_f32 v43, v43, v192 :: v_dual_mul_f32 v58, v58, v193
	v_dual_mul_f32 v44, v44, v192 :: v_dual_mul_f32 v59, v59, v193
	v_dual_mul_f32 v45, v45, v192 :: v_dual_mul_f32 v60, v60, v193
	v_dual_mul_f32 v46, v46, v192 :: v_dual_mul_f32 v61, v61, v193
	v_dual_mul_f32 v47, v47, v192 :: v_dual_mul_f32 v62, v62, v193
	v_dual_mul_f32 v48, v48, v192 :: v_dual_mul_f32 v63, v63, v193
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v64, v64, v193 :: v_dual_fmac_f32 v147, v19, v3
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v165, v194, v1 :: v_dual_fmac_f32 v164, v195, v2
	v_dual_fmac_f32 v163, v196, v3 :: v_dual_fmac_f32 v162, v197, v4
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v161, v198, v5 :: v_dual_fmac_f32 v160, v199, v6
	v_dual_fmac_f32 v159, v200, v7 :: v_dual_fmac_f32 v158, v201, v8
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v157, v202, v9 :: v_dual_fmac_f32 v156, v203, v10
	v_dual_fmac_f32 v155, v204, v11 :: v_dual_fmac_f32 v154, v205, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v153, v206, v13 :: v_dual_fmac_f32 v152, v207, v14
	v_dual_fmac_f32 v151, v208, v15 :: v_dual_fmac_f32 v150, v190, v16
	v_dual_fmac_f32 v149, v17, v1 :: v_dual_fmac_f32 v148, v18, v2
	v_dual_fmac_f32 v146, v20, v4 :: v_dual_fmac_f32 v145, v21, v5
	v_dual_fmac_f32 v144, v22, v6 :: v_dual_fmac_f32 v143, v23, v7
	v_dual_fmac_f32 v142, v24, v8 :: v_dual_fmac_f32 v141, v25, v9
	v_dual_fmac_f32 v139, v26, v10 :: v_dual_fmac_f32 v138, v27, v11
	v_dual_fmac_f32 v137, v28, v12 :: v_dual_fmac_f32 v136, v29, v13
	v_dual_fmac_f32 v135, v30, v14 :: v_dual_fmac_f32 v134, v31, v15
	v_dual_fmac_f32 v133, v32, v16 :: v_dual_fmac_f32 v132, v33, v1
	v_dual_fmac_f32 v131, v34, v2 :: v_dual_fmac_f32 v130, v35, v3
	v_dual_fmac_f32 v129, v36, v4 :: v_dual_fmac_f32 v128, v37, v5
	v_dual_fmac_f32 v127, v38, v6 :: v_dual_fmac_f32 v126, v39, v7
	v_dual_fmac_f32 v123, v40, v8 :: v_dual_fmac_f32 v118, v43, v11
	v_dual_fmac_f32 v121, v41, v9 :: v_dual_fmac_f32 v114, v47, v15
	v_dual_fmac_f32 v119, v42, v10 :: v_dual_fmac_f32 v116, v45, v13
	v_dual_fmac_f32 v117, v44, v12 :: v_dual_fmac_f32 v112, v49, v1
	v_dual_fmac_f32 v115, v46, v14 :: v_dual_fmac_f32 v110, v51, v3
	v_dual_fmac_f32 v113, v48, v16 :: v_dual_fmac_f32 v108, v53, v5
	v_dual_fmac_f32 v111, v50, v2 :: v_dual_fmac_f32 v106, v55, v7
	v_dual_fmac_f32 v109, v52, v4 :: v_dual_fmac_f32 v104, v57, v9
	v_dual_fmac_f32 v107, v54, v6 :: v_dual_fmac_f32 v102, v59, v11
	v_dual_fmac_f32 v105, v56, v8 :: v_dual_fmac_f32 v100, v61, v13
	v_dual_fmac_f32 v103, v58, v10 :: v_dual_fmac_f32 v98, v63, v15
	v_fmac_f32_e32 v101, v60, v12
	v_fmac_f32_e32 v99, v62, v14
	v_fmac_f32_e32 v97, v64, v16
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_2
.LBB0_5:                                ; %._crit_edge
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v21, v165, 16, 1
	v_bfe_u32 v22, v164, 16, 1
	v_cmp_o_f32_e64 s19, v165, v165
	v_bfe_u32 v24, v163, 16, 1
	v_cmp_o_f32_e64 s20, v164, v164
	v_add3_u32 v23, v165, v21, 0x7fff
	v_add3_u32 v22, v164, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v163, v163
	v_add3_u32 v24, v163, v24, 0x7fff
	v_bfe_u32 v25, v161, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v162, 16, 1
	v_bfe_u32 v26, v160, 16, 1
	v_cmp_o_f32_e64 s19, v162, v162
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v162, v23, 0x7fff
	v_add3_u32 v25, v161, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v161, v161
	v_add3_u32 v26, v160, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v160, v160
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v159, 16, 1
	v_bfe_u32 v27, v158, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v157, 16, 1
	v_add3_u32 v23, v159, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v159, v159
	v_add3_u32 v27, v158, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v158, v158
	v_bfe_u32 v28, v156, 16, 1
	v_add3_u32 v26, v157, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v157, v157
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v155, 16, 1
	v_bfe_u32 v29, v154, 16, 1
	v_add3_u32 v28, v156, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v156, v156
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v155, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v155, v155
	v_add3_u32 v29, v154, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v154, v154
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v153, 16, 1
	v_bfe_u32 v30, v152, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v151, 16, 1
	v_add3_u32 v28, v153, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v153, v153
	v_add3_u32 v30, v152, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v152, v152
	v_bfe_u32 v31, v150, 16, 1
	v_add3_u32 v29, v151, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v151, v151
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v149, 16, 1
	v_bfe_u32 v32, v148, 16, 1
	v_add3_u32 v31, v150, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v150, v150
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v149, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v149, v149
	v_add3_u32 v32, v148, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v148, v148
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v147, 16, 1
	v_bfe_u32 v33, v146, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v145, 16, 1
	v_add3_u32 v31, v147, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v147, v147
	v_add3_u32 v33, v146, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v146, v146
	v_bfe_u32 v34, v144, 16, 1
	v_add3_u32 v32, v145, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v145, v145
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v143, 16, 1
	v_bfe_u32 v35, v142, 16, 1
	v_add3_u32 v34, v144, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v144, v144
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v143, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v143, v143
	v_add3_u32 v35, v142, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v142, v142
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v141, 16, 1
	v_bfe_u32 v36, v139, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v138, 16, 1
	v_add3_u32 v34, v141, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v141, v141
	v_add3_u32 v36, v139, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v139, v139
	v_bfe_u32 v37, v137, 16, 1
	v_add3_u32 v35, v138, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v138, v138
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v136, 16, 1
	v_bfe_u32 v38, v135, 16, 1
	v_add3_u32 v37, v137, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v137, v137
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v136, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_add3_u32 v38, v135, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v135, v135
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v134, 16, 1
	v_bfe_u32 v39, v133, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v132, 16, 1
	v_add3_u32 v37, v134, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v134, v134
	v_add3_u32 v39, v133, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v133, v133
	v_bfe_u32 v40, v131, 16, 1
	v_add3_u32 v38, v132, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v132, v132
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v130, 16, 1
	v_bfe_u32 v41, v129, 16, 1
	v_add3_u32 v40, v131, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v131, v131
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v130, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v130, v130
	v_add3_u32 v41, v129, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v129, v129
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v128, 16, 1
	v_bfe_u32 v42, v127, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v126, 16, 1
	v_add3_u32 v40, v128, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v128, v128
	v_add3_u32 v42, v127, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v127, v127
	v_bfe_u32 v43, v123, 16, 1
	v_add3_u32 v41, v126, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v126, v126
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v121, 16, 1
	v_bfe_u32 v44, v119, 16, 1
	v_add3_u32 v43, v123, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v123, v123
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v121, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v121, v121
	v_add3_u32 v44, v119, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v119, v119
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v118, 16, 1
	v_bfe_u32 v45, v117, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v116, 16, 1
	v_add3_u32 v43, v118, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v118, v118
	v_add3_u32 v45, v117, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v117, v117
	v_bfe_u32 v46, v115, 16, 1
	v_add3_u32 v44, v116, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v116, v116
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v114, 16, 1
	v_bfe_u32 v47, v113, 16, 1
	v_add3_u32 v46, v115, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v115, v115
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v45, v114, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v114, v114
	v_add3_u32 v47, v113, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v113, v113
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v112, 16, 1
	v_bfe_u32 v48, v111, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v110, 16, 1
	v_add3_u32 v46, v112, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v112, v112
	v_add3_u32 v48, v111, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v111, v111
	v_bfe_u32 v49, v109, 16, 1
	v_add3_u32 v47, v110, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v108, 16, 1
	v_bfe_u32 v50, v107, 16, 1
	v_add3_u32 v49, v109, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v109, v109
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v108, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v108, v108
	v_add3_u32 v50, v107, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v107, v107
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v106, 16, 1
	v_bfe_u32 v51, v105, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v104, 16, 1
	v_add3_u32 v49, v106, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v106, v106
	v_add3_u32 v51, v105, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v105, v105
	v_add3_u32 v50, v104, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v104, v104
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v103, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v102, 16, 1
	v_bfe_u32 v53, v101, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v103, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v103, v103
	v_add3_u32 v51, v102, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v102, v102
	v_add3_u32 v53, v101, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v101, v101
	v_bfe_u32 v54, v100, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v99, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v100, v54, 0x7fff
	v_bfe_u32 v54, v98, 16, 1
	v_bfe_u32 v55, v97, 16, 1
	v_cmp_o_f32_e64 s19, v100, v100
	v_add3_u32 v52, v99, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v99, v99
	v_add3_u32 v54, v98, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v98, v98
	v_add3_u32 v55, v97, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v97, v97
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
	.loc	1 877 36                        ; ragged.py:877:36
	v_lshrrev_b32_e32 v1, 1, v140
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v20, v120, s62
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	s_mov_b32 s20, 0x76543210
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v11, s39, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 8, v54
	v_mov_b16_e32 v21.h, 0
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s62, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v51, v51, 4, v51
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s17, s62, v16
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v11, v20, 1
	v_lshl_or_b32 v54, v54, 4, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s16, s62, v15
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v51, 0x5040504, v51
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 974 9                         ; ragged.py:974:9
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
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s18, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s17, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s16, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v12, 5, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s15, s62, v14
	.loc	1 974 9                         ; ragged.py:974:9
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
	s_and_b32 s21, s43, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s42
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 974 9                         ; ragged.py:974:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s14, s62, v13
	v_cmp_gt_i32_e64 s13, s62, v12
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v51, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s15, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s62, v10
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s14, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s13, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s11, s62, v9
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v0, v0, v52, v54
	v_mov_b16_e32 v54.l, v53.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s62, v8
	.loc	1 974 9                         ; ragged.py:974:9
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
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s9, s62, v7
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s11, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s62, v6
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v52.l, v23.h
	s_clause 0x1
	buffer_store_b16 v54, v55, s[20:23], 0 offen
	buffer_store_b16 v23, v84, s[20:23], 0 offen
	v_add_lshl_u32 v23, v7, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s10, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s62, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s5
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s6, s62, v4
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s62, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v19, v122, s62
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s5
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s1, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s0, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, vcc_lo, s5
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s18, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s17, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s16, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v14, v19, 1
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s15, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s14, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s13, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s12, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v9, v19, 1
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s11, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s10, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s9, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s8, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v18, v124, s62
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s7, s4
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v64.l, v33.h
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s1, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s5, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s5
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, vcc_lo, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v19, v14, v18, 1
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s15, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s14, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v71.l, v38.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s11, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s10, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v70.l, v39.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v73.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v17, v125, s62
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s7, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s6, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s1, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s3
	s_and_b32 s3, vcc_lo, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v72.l, v41.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s15, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s14, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_add_lshl_u32 v2, v2, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s6, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s1, s1, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s0, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v83.l, v50.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
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
	.loc	1 837 5                         ; ragged.py:837:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 71
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 71
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11980
; TotalNumSgprs: 73
; NumVgprs: 256
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 73
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
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
	.short	863                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     73
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc128_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
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
