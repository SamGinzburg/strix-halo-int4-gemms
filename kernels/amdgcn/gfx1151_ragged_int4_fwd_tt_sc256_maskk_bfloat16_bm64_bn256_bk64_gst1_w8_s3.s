	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
	v_mov_b32_e32 v134, 0
	.loc	1 876 18                        ; ragged.py:876:18
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v70, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s62, 0xff
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v71, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v82, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v99, 0
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
	s_abs_i32 s4, s3
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v103, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v45, 0xf0, v0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 870 17                        ; ragged.py:870:17
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
	s_lshl_b64 s[14:15], s[2:3], 3
	s_add_u32 s2, s36, s14
	s_addc_u32 s3, s37, s15
	s_load_b64 s[56:57], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s38, s14
	s_addc_u32 s3, s39, s15
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s40, s14
	s_addc_u32 s5, s41, s15
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[12:13], s[4:5], 0x0
	.loc	1 877 18                        ; ragged.py:877:18
	s_lshl_b32 s39, s6, 8
	s_mov_b32 s40, 0
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s56, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s57, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v10, s56, v1
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
	v_cmp_gt_i64_e64 s2, s[12:13], v[2:3]
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v2, 16, v10
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[10:11], v[4:5]
	v_cmp_le_i64_e64 s5, s[10:11], v[6:7]
	v_cmp_le_i64_e64 s6, s[10:11], v[8:9]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s7, s[12:13], v[4:5]
	.loc	1 878 21                        ; ragged.py:878:21
	scratch_store_b32 off, v2, off offset:368 ; 4-byte Folded Spill
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v2, 32, v10
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s8, s[12:13], v[6:7]
	v_cmp_gt_i64_e64 s9, s[12:13], v[8:9]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:372
	scratch_store_b32 off, v10, off offset:364
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v2, 48, v10
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lt_i32 s60, 1
	.loc	1 878 20                        ; ragged.py:878:20
	scratch_store_b32 off, v2, off offset:376 ; 4-byte Folded Spill
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b32 s41, s[0:1], 0x50
	s_load_b32 s61, s[0:1], 0x48
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v5, 0xe0, v0
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v36, s39, v0
	v_dual_mov_b32 v134, 0 :: v_dual_lshlrev_b32 v37, 1, v0
	.loc	1 877 36 is_stmt 0              ; ragged.py:877:36
	v_lshrrev_b32_e32 v2, 5, v0
	v_dual_mov_b32 v135, 0 :: v_dual_and_b32 v4, 63, v0
	scratch_store_b32 off, v36, off offset:380 ; 4-byte Folded Spill
	.loc	1 879 20 is_stmt 1              ; ragged.py:879:20
	v_cmp_gt_i32_e64 s36, s62, v36
	v_bfe_i32 v36, v0, 7, 1
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v39, 5, v1
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v40, 24, v37
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s18, s6, s14
	s_addc_u32 s19, s7, s15
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v170, 0, v1
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s37, s[18:19], 0x0
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, s39, v2
	s_load_b256 s[44:51], s[0:1], 0x0
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v2, s0, s56, v4
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v38, 0x7f, v0
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v36, 0x88, v36
	v_or3_b32 v147, v39, v40, v5
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v39, 2, v45
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v1, 32, v1
	v_add_co_ci_u32_e64 v3, null, s57, 0, s0
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v13, 56, v6
	v_or_b32_e32 v16, 0x50, v6
	.loc	1 940 39                        ; ragged.py:940:39
	s_mul_i32 s38, s41, s62
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v17, 0x58, v6
	v_or_b32_e32 v32, 0xd0, v6
	v_or_b32_e32 v18, 0x60, v6
	v_or_b32_e32 v27, 0xa8, v6
	v_or_b32_e32 v33, 0xd8, v6
	.loc	1 940 39                        ; ragged.py:940:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s38, s38, s37
	v_xor_b32_e32 v38, v36, v38
	v_dual_mov_b32 v122, 0 :: v_dual_and_b32 v37, 28, v37
	v_add3_u32 v1, 0, v39, v1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 8, v6
	v_or_b32_e32 v9, 24, v6
	v_or_b32_e32 v12, 48, v6
	v_or_b32_e32 v19, 0x68, v6
	v_or_b32_e32 v28, 0xb0, v6
	v_or_b32_e32 v29, 0xb8, v6
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s0, s[10:11], v[2:3]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s1, s[12:13], v[2:3]
	.loc	1 877 18 is_stmt 1              ; ragged.py:877:18
	v_or_b32_e32 v2, 0xe0, v6
	v_or_b32_e32 v8, 16, v6
	v_or_b32_e32 v10, 32, v6
	v_or_b32_e32 v11, 40, v6
	v_or_b32_e32 v14, 64, v6
	v_or_b32_e32 v15, 0x48, v6
	v_or_b32_e32 v20, 0x70, v6
	v_or_b32_e32 v21, 0x78, v6
	v_or_b32_e32 v22, 0x80, v6
	v_or_b32_e32 v23, 0x88, v6
	v_or_b32_e32 v24, 0x90, v6
	v_or_b32_e32 v25, 0x98, v6
	v_or_b32_e32 v26, 0xa0, v6
	v_or_b32_e32 v30, 0xc0, v6
	v_or_b32_e32 v31, 0xc8, v6
	v_or_b32_e32 v3, 0xe8, v6
	v_or_b32_e32 v34, 0xf0, v6
	v_or_b32_e32 v35, 0xf8, v6
	v_mad_u64_u32 v[88:89], null, s41, v13, s[38:39]
	v_mad_u64_u32 v[89:90], null, s41, v16, s[38:39]
	v_mad_u64_u32 v[90:91], null, s41, v17, s[38:39]
	v_mad_u64_u32 v[148:149], null, s41, v32, s[38:39]
	v_or_b32_e32 v41, 0x300, v0
	v_or_b32_e32 v42, 0x700, v0
	v_or_b32_e32 v5, 0x3f0, v0
	v_or_b32_e32 v36, 0x7f0, v0
	v_xor_b32_e32 v40, 8, v147
	v_xor_b32_e32 v43, 16, v147
	v_xor_b32_e32 v44, 24, v147
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v39, 1, v45
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v85, s56, v4
	scratch_store_b32 off, v38, off offset:96 ; 4-byte Folded Spill
	v_xor_b32_e32 v38, 0x110, v38
	v_mad_u64_u32 v[91:92], null, s41, v18, s[38:39]
	v_mad_u64_u32 v[143:144], null, s41, v27, s[38:39]
	v_mad_u64_u32 v[149:150], null, s41, v33, s[38:39]
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v1, v1, v37
	v_mad_u64_u32 v[80:81], null, s41, v7, s[38:39]
	v_mad_u64_u32 v[180:181], null, s41, v9, s[38:39]
	v_mad_u64_u32 v[196:197], null, s41, v12, s[38:39]
	v_mad_u64_u32 v[92:93], null, s41, v19, s[38:39]
	v_mad_u64_u32 v[144:145], null, s41, v28, s[38:39]
	v_mad_u64_u32 v[95:96], null, s41, v29, s[38:39]
	v_mad_u64_u32 v[150:151], null, s41, v2, s[38:39]
	v_mad_u64_u32 v[137:138], null, v6, s41, s[38:39]
	v_mad_u64_u32 v[172:173], null, s41, v8, s[38:39]
	v_mad_u64_u32 v[168:169], null, s41, v10, s[38:39]
	v_mad_u64_u32 v[81:82], null, s41, v11, s[38:39]
	v_mad_u64_u32 v[181:182], null, s41, v14, s[38:39]
	v_mad_u64_u32 v[197:198], null, s41, v15, s[38:39]
	v_mad_u64_u32 v[93:94], null, s41, v20, s[38:39]
	v_mad_u64_u32 v[223:224], null, s41, v21, s[38:39]
	v_mad_u64_u32 v[174:175], null, s41, v22, s[38:39]
	v_mad_u64_u32 v[139:140], null, s41, v23, s[38:39]
	v_mad_u64_u32 v[178:179], null, s41, v24, s[38:39]
	v_mad_u64_u32 v[141:142], null, s41, v25, s[38:39]
	v_mad_u64_u32 v[176:177], null, s41, v26, s[38:39]
	v_mad_u64_u32 v[145:146], null, s41, v30, s[38:39]
	v_mad_u64_u32 v[96:97], null, s41, v31, s[38:39]
	v_mad_u64_u32 v[72:73], null, s41, v3, s[38:39]
	v_mad_u64_u32 v[83:84], null, s41, v34, s[38:39]
	v_mad_u64_u32 v[151:152], null, s41, v35, s[38:39]
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s63, s0, s1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v6
	v_cmp_gt_i32_e64 s1, s62, v7
	v_cmp_gt_i32_e64 s5, s62, v8
	v_cmp_gt_i32_e64 s6, s62, v9
	v_cmp_gt_i32_e64 s7, s62, v10
	v_cmp_gt_i32_e64 s8, s62, v11
	v_cmp_gt_i32_e64 s9, s62, v12
	v_cmp_gt_i32_e64 s10, s62, v13
	v_cmp_gt_i32_e64 s11, s62, v14
	v_cmp_gt_i32_e64 s12, s62, v15
	v_cmp_gt_i32_e64 s13, s62, v16
	v_cmp_gt_i32_e64 s14, s62, v17
	v_cmp_gt_i32_e64 s15, s62, v18
	v_cmp_gt_i32_e64 s16, s62, v19
	v_cmp_gt_i32_e64 s17, s62, v20
	v_cmp_gt_i32_e64 s18, s62, v21
	v_cmp_gt_i32_e64 s19, s62, v22
	v_cmp_gt_i32_e64 s20, s62, v23
	v_cmp_gt_i32_e64 s21, s62, v24
	v_cmp_gt_i32_e64 s22, s62, v25
	v_cmp_gt_i32_e64 s23, s62, v26
	v_cmp_gt_i32_e64 s24, s62, v27
	v_cmp_gt_i32_e64 s25, s62, v28
	v_cmp_gt_i32_e64 s26, s62, v29
	v_cmp_gt_i32_e64 s27, s62, v30
	v_cmp_gt_i32_e64 s28, s62, v31
	v_cmp_gt_i32_e64 s29, s62, v32
	v_cmp_gt_i32_e64 s30, s62, v33
	v_cmp_gt_i32_e64 s31, s62, v2
	v_cmp_gt_i32_e64 s33, s62, v3
	v_cmp_gt_i32_e64 s34, s62, v34
	v_cmp_gt_i32_e64 s35, s62, v35
	.loc	1 928 19                        ; ragged.py:928:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:384
	scratch_store_b64 off, v[85:86], off offset:100
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v65, 0, v41
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v79, 0, v42
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v78, 0, v5
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v87, 0, v36
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v177, 0, v38
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v97, 0, v40
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v146, 0, v43
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v142, 0, v44
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v1, 0, v39
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v152, 0, v0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v56, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s64, s60, s37
	s_and_b32 s53, s45, 0xffff
	s_mov_b32 s52, s44
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 s45, s47, 0xffff
	s_mov_b32 s44, s46
	s_and_b32 s49, s49, 0xffff
	s_and_b32 s57, s51, 0xffff
	s_mov_b32 s56, s50
	scratch_store_b32 off, v1, off offset:388 ; 4-byte Folded Spill
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v64, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v136, off offset:360
	scratch_store_b32 off, v135, off offset:356
	scratch_store_b32 off, v134, off offset:352
	scratch_store_b32 off, v133, off offset:348
	scratch_store_b32 off, v132, off offset:344
	scratch_store_b32 off, v131, off offset:340
	scratch_store_b32 off, v130, off offset:336
	scratch_store_b32 off, v129, off offset:332
	scratch_store_b32 off, v128, off offset:328
	scratch_store_b32 off, v127, off offset:324
	scratch_store_b32 off, v126, off offset:320
	scratch_store_b32 off, v125, off offset:316
	scratch_store_b32 off, v124, off offset:312
	scratch_store_b32 off, v123, off offset:308
	scratch_store_b32 off, v122, off offset:304
	scratch_store_b32 off, v121, off offset:300
	scratch_store_b32 off, v120, off offset:296
	scratch_store_b32 off, v119, off offset:292
	scratch_store_b32 off, v118, off offset:288
	scratch_store_b32 off, v117, off offset:284
	scratch_store_b32 off, v116, off offset:280
	scratch_store_b32 off, v115, off offset:276
	scratch_store_b32 off, v114, off offset:272
	scratch_store_b32 off, v113, off offset:268
	scratch_store_b32 off, v112, off offset:264
	scratch_store_b32 off, v111, off offset:260
	scratch_store_b32 off, v110, off offset:256
	scratch_store_b32 off, v109, off offset:252
	scratch_store_b32 off, v108, off offset:248
	scratch_store_b32 off, v107, off offset:244
	scratch_store_b32 off, v106, off offset:240
	scratch_store_b32 off, v105, off offset:236
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v104, off offset:232
	scratch_store_b32 off, v103, off offset:228
	scratch_store_b32 off, v102, off offset:224
	scratch_store_b32 off, v101, off offset:220
	scratch_store_b32 off, v100, off offset:216
	scratch_store_b32 off, v99, off offset:212
	scratch_store_b32 off, v98, off offset:208
	scratch_store_b32 off, v84, off offset:204
	scratch_store_b32 off, v77, off offset:200
	scratch_store_b32 off, v76, off offset:196
	scratch_store_b32 off, v75, off offset:192
	scratch_store_b32 off, v74, off offset:188
	scratch_store_b32 off, v82, off offset:184
	scratch_store_b32 off, v73, off offset:180
	scratch_store_b32 off, v71, off offset:176
	scratch_store_b32 off, v48, off offset:172
	scratch_store_b32 off, v70, off offset:168
	scratch_store_b32 off, v50, off offset:164
	scratch_store_b32 off, v49, off offset:160
	scratch_store_b32 off, v69, off offset:156
	scratch_store_b32 off, v68, off offset:152
	scratch_store_b32 off, v51, off offset:148
	scratch_store_b32 off, v67, off offset:144
	scratch_store_b32 off, v53, off offset:140
	scratch_store_b32 off, v52, off offset:136
	scratch_store_b32 off, v66, off offset:132
	scratch_store_b32 off, v59, off offset:128
	scratch_store_b32 off, v54, off offset:124
	scratch_store_b32 off, v55, off offset:120
	scratch_store_b32 off, v58, off offset:116
	scratch_store_b32 off, v57, off offset:112
	scratch_store_b32 off, v56, off offset:108
	.loc	1 930 28 is_stmt 1              ; ragged.py:930:28
	s_lshl_b32 s50, s40, 7
	s_mov_b32 s51, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v64
	v_mov_b32_e32 v3, v64
	v_dual_mov_b32 v4, v64 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v64
	v_dual_mov_b32 v6, v64 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v64
	v_dual_mov_b32 v8, v64 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v64 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v64
	v_dual_mov_b32 v12, v64 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v64
	v_dual_mov_b32 v14, v64 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v64
	v_mov_b32_e32 v16, v64
	v_mov_b32_e32 v18, v64
	v_mov_b32_e32 v19, v64
	v_mov_b32_e32 v20, v64
	v_mov_b32_e32 v21, v64
	v_mov_b32_e32 v22, v64
	v_mov_b32_e32 v23, v64
	v_mov_b32_e32 v24, v64
	v_mov_b32_e32 v26, v64
	v_mov_b32_e32 v27, v64
	v_mov_b32_e32 v28, v64
	v_mov_b32_e32 v29, v64
	v_mov_b32_e32 v30, v64
	v_mov_b32_e32 v31, v64
	v_mov_b32_e32 v32, v64
	v_mov_b32_e32 v34, v64
	v_mov_b32_e32 v35, v64
	v_mov_b32_e32 v36, v64
	v_mov_b32_e32 v37, v64
	v_mov_b32_e32 v38, v64
	v_mov_b32_e32 v39, v64
	v_mov_b32_e32 v40, v64
	v_mov_b32_e32 v42, v64
	v_mov_b32_e32 v43, v64
	v_mov_b32_e32 v44, v64
	v_mov_b32_e32 v45, v64
	v_mov_b32_e32 v46, v64
	v_mov_b32_e32 v47, v64
	v_mov_b32_e32 v48, v64
	v_mov_b32_e32 v50, v64
	v_mov_b32_e32 v51, v64
	v_mov_b32_e32 v52, v64
	v_mov_b32_e32 v53, v64
	v_mov_b32_e32 v54, v64
	v_mov_b32_e32 v55, v64
	v_mov_b32_e32 v56, v64
	v_mov_b32_e32 v58, v64
	v_mov_b32_e32 v59, v64
	v_mov_b32_e32 v60, v64
	v_mov_b32_e32 v61, v64
	v_mov_b32_e32 v62, v64
	v_mov_b32_e32 v63, v64
.LBB0_3:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 925 28                        ; ragged.py:925:28
	v_lshrrev_b32_e32 v183, 6, v0
	.loc	1 933 26                        ; ragged.py:933:26
	s_or_b32 s38, s51, s50
	s_clause 0xa                            ; 88-byte Folded Spill
	scratch_store_b64 off, v[223:224], off offset:80
	scratch_store_b64 off, v[180:181], off offset:72
	scratch_store_b64 off, v[197:198], off offset:64
	scratch_store_b64 off, v[168:169], off offset:56
	scratch_store_b64 off, v[196:197], off offset:48
	scratch_store_b64 off, v[181:182], off offset:40
	scratch_store_b64 off, v[90:91], off offset:32
	scratch_store_b64 off, v[89:90], off offset:24
	scratch_store_b64 off, v[92:93], off offset:16
	scratch_store_b64 off, v[91:92], off offset:8
	scratch_store_b64 off, v[95:96], off
	.loc	1 944 34                        ; ragged.py:944:34
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	.loc	1 933 26                        ; ragged.py:933:26
	v_or_b32_e32 v185, s38, v183
	v_dual_mov_b32 v74, v150 :: v_dual_mov_b32 v69, v65
	v_dual_mov_b32 v94, v78 :: v_dual_mov_b32 v179, v176
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v185, s61, v[85:86]
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v185
	v_mov_b32_e32 v68, v0
	v_mov_b32_e32 v67, v148
	v_dual_mov_b32 v66, v96 :: v_dual_mov_b32 v75, v149
	.loc	1 943 66                        ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34 is_stmt 0              ; ragged.py:943:34
	v_cndmask_b32_e64 v199, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 4, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v200, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 8, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v201, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 12, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v202, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 16, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v203, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 20, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v204, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 24, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v205, 0x80000000, v183, s37
	.loc	1 933 26 is_stmt 1              ; ragged.py:933:26
	v_or_b32_e32 v183, 28, v185
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 943 42                        ; ragged.py:943:42
	v_mad_u64_u32 v[183:184], null, v183, s61, v[85:86]
	.loc	1 943 66 is_stmt 0              ; ragged.py:943:66
	s_and_b32 s37, s63, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 943 34                        ; ragged.py:943:34
	v_cndmask_b32_e64 v206, 0x80000000, v183, s37
	.loc	1 925 28 is_stmt 1              ; ragged.py:925:28
	v_and_b32_e32 v183, 31, v0
	.loc	1 933 26                        ; ragged.py:933:26
	v_or_b32_e32 v183, s38, v183
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 934 31                        ; ragged.py:934:31
	v_cmp_gt_i32_e64 s37, s41, v183
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v184, v137, v183
	v_add_nc_u32_e32 v185, v80, v183
	v_add_nc_u32_e32 v186, v172, v183
	v_add_nc_u32_e32 v198, v93, v183
	.loc	1 944 66 is_stmt 0              ; ragged.py:944:66
	s_and_b32 s38, s0, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v215, v95, v183
	v_mov_b32_e32 v95, v93
	v_mov_b32_e32 v93, v88
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v184, 0x80000000, v184, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s1, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v187, v180, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v185, 0x80000000, v185, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s5, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v188, v168, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v186, 0x80000000, v186, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s6, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v189, v81, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v187, 0x80000000, v187, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s7, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v190, v196, v183
	v_add_nc_u32_e32 v196, v91, v183
	v_mov_b32_e32 v91, v81
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v188, 0x80000000, v188, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s8, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v191, v88, v183
	v_add_nc_u32_e32 v195, v90, v183
	v_mov_b32_e32 v90, v80
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v189, 0x80000000, v189, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s9, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v192, v181, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v190, 0x80000000, v190, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s10, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v193, v197, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v191, 0x80000000, v191, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s11, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v194, v89, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v192, 0x80000000, v192, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s12, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v197, v92, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v193, 0x80000000, v193, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s13, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v207, v223, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v194, 0x80000000, v194, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s14, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v208, v174, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v195, 0x80000000, v195, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s15, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v209, v139, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v196, 0x80000000, v196, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s16, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v217, v96, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v197, 0x80000000, v197, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s17, s37
	v_mov_b32_e32 v96, v144
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v198, 0x80000000, v198, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s18, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v210, v178, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v207, 0x80000000, v207, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s19, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v211, v141, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v208, 0x80000000, v208, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s20, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v212, v176, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v209, 0x80000000, v209, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s21, s37
	v_mov_b32_e32 v92, v172
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v210, 0x80000000, v210, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s22, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v213, v143, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v211, 0x80000000, v211, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s23, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v214, v144, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v212, 0x80000000, v212, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s24, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v216, v145, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v213, 0x80000000, v213, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s25, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v218, v148, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v214, 0x80000000, v214, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s26, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v219, v149, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v215, 0x80000000, v215, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s27, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v220, v150, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v216, 0x80000000, v216, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s28, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v221, v72, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v217, 0x80000000, v217, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s29, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v222, v83, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v218, 0x80000000, v218, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s30, s37
	.loc	1 944 42                        ; ragged.py:944:42
	v_add_nc_u32_e32 v183, v151, v183
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v219, 0x80000000, v219, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s31, s37
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v220, 0x80000000, v220, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s33, s37
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v221, 0x80000000, v221, s38
	.loc	1 944 66                        ; ragged.py:944:66
	s_and_b32 s38, s34, s37
	s_and_b32 s37, s35, s37
	.loc	1 944 34                        ; ragged.py:944:34
	v_cndmask_b32_e64 v222, 0x80000000, v222, s38
	v_cndmask_b32_e64 v223, 0x80000000, v183, s37
	s_clause 0x1f
	buffer_load_u8 v245, v184, s[44:47], 0 offen
	buffer_load_u8 v183, v185, s[44:47], 0 offen
	buffer_load_u8 v246, v186, s[44:47], 0 offen
	buffer_load_u8 v184, v187, s[44:47], 0 offen
	buffer_load_u8 v247, v188, s[44:47], 0 offen
	buffer_load_u8 v185, v189, s[44:47], 0 offen
	buffer_load_u8 v248, v190, s[44:47], 0 offen
	buffer_load_u8 v186, v191, s[44:47], 0 offen
	buffer_load_u8 v249, v192, s[44:47], 0 offen
	buffer_load_u8 v187, v193, s[44:47], 0 offen
	buffer_load_u8 v250, v194, s[44:47], 0 offen
	buffer_load_u8 v188, v195, s[44:47], 0 offen
	buffer_load_u8 v251, v196, s[44:47], 0 offen
	buffer_load_u8 v189, v197, s[44:47], 0 offen
	buffer_load_u8 v252, v198, s[44:47], 0 offen
	buffer_load_u8 v190, v207, s[44:47], 0 offen
	buffer_load_u8 v253, v208, s[44:47], 0 offen
	buffer_load_u8 v191, v209, s[44:47], 0 offen
	buffer_load_u8 v254, v210, s[44:47], 0 offen
	buffer_load_u8 v192, v211, s[44:47], 0 offen
	buffer_load_u8 v255, v212, s[44:47], 0 offen
	buffer_load_u8 v193, v213, s[44:47], 0 offen
	buffer_load_u8 v80, v214, s[44:47], 0 offen
	buffer_load_u8 v194, v215, s[44:47], 0 offen
	buffer_load_u8 v130, v216, s[44:47], 0 offen
	buffer_load_u8 v196, v217, s[44:47], 0 offen
	buffer_load_u8 v133, v218, s[44:47], 0 offen
	buffer_load_u8 v89, v219, s[44:47], 0 offen
	buffer_load_u8 v134, v220, s[44:47], 0 offen
	buffer_load_u8 v197, v221, s[44:47], 0 offen
	buffer_load_u8 v168, v222, s[44:47], 0 offen
	buffer_load_u8 v88, v223, s[44:47], 0 offen
	.loc	1 943 34 is_stmt 1              ; ragged.py:943:34
	s_clause 0x7
	buffer_load_u8 v199, v199, s[52:55], 0 offen
	buffer_load_u8 v200, v200, s[52:55], 0 offen
	buffer_load_u8 v201, v201, s[52:55], 0 offen
	buffer_load_u8 v203, v203, s[52:55], 0 offen
	buffer_load_u8 v204, v204, s[52:55], 0 offen
	buffer_load_u8 v205, v205, s[52:55], 0 offen
	buffer_load_u8 v206, v206, s[52:55], 0 offen
	buffer_load_u8 v202, v202, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v195, v83 :: v_dual_mov_b32 v198, v72
	.loc	1 955 21                        ; ragged.py:955:21
	s_add_i32 s37, s51, 32
	.loc	1 932 23                        ; ragged.py:932:23
	s_cmpk_lt_u32 s51, 0x60
	s_mov_b32 s51, s37
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(7)
	ds_store_b8 v152, v199
	s_waitcnt vmcnt(6)
	ds_store_b8 v152, v200 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v152, v201 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v152, v203 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v152, v204 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v65, v202
	ds_store_b8 v152, v205 offset:1536
	ds_store_b8 v79, v206
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v200, v151
	.loc	1 945 31                        ; ragged.py:945:31
	ds_load_u8 v151, v170 offset:560
	ds_load_u8 v221, v170 offset:1216
	ds_load_u8 v232, v170 offset:1280
	ds_load_u8 v212, v170 offset:1232
	ds_load_u8 v216, v170 offset:1168
	ds_load_u8 v207, v170 offset:1248
	ds_load_u8 v209, v170 offset:1184
	ds_load_u8 v203, v170 offset:1264
	ds_load_u8 v204, v170 offset:1200
	ds_load_u8 v199, v170 offset:1152
	ds_load_u8 v153, v170 offset:1088
	ds_load_u8 v234, v170 offset:1104
	ds_load_u8 v238, v170 offset:1040
	ds_load_u8 v226, v170 offset:1120
	ds_load_u8 v228, v170 offset:1056
	ds_load_u8 v218, v170 offset:1136
	ds_load_u8 v219, v170 offset:1072
	ds_load_u8 v154, v170 offset:1472
	ds_load_u8 v70, v170 offset:1536
	ds_load_u8 v129, v170 offset:192
	ds_load_u8 v172, v170 offset:128
	ds_load_u8 v181, v170 offset:208
	ds_load_u8 v98, v170 offset:144
	ds_load_u8 v99, v170 offset:224
	ds_load_u8 v100, v170 offset:160
	ds_load_u8 v101, v170 offset:240
	ds_load_u8 v102, v170 offset:176
	ds_load_u8 v103, v170 offset:448
	ds_load_u8 v104, v170 offset:384
	ds_load_u8 v105, v170 offset:464
	ds_load_u8 v106, v170 offset:400
	ds_load_u8 v107, v170 offset:480
	ds_load_u8 v108, v170 offset:416
	ds_load_u8 v109, v170 offset:496
	ds_load_u8 v110, v170 offset:432
	ds_load_u8 v111, v170 offset:320
	ds_load_u8 v112, v170 offset:256
	ds_load_u8 v113, v170 offset:336
	ds_load_u8 v114, v170 offset:272
	ds_load_u8 v115, v170 offset:352
	ds_load_u8 v116, v170 offset:288
	ds_load_u8 v117, v170 offset:368
	ds_load_u8 v118, v170 offset:304
	ds_load_u8 v119, v170 offset:64
	ds_load_u8 v120, v170 offset:80
	ds_load_u8 v121, v170 offset:96
	ds_load_u8 v122, v170 offset:112
	ds_load_u8 v123, v170
	ds_load_u8 v124, v170 offset:16
	ds_load_u8 v125, v170 offset:32
	ds_load_u8 v126, v170 offset:48
	ds_load_u8 v230, v170 offset:960
	ds_load_u8 v231, v170 offset:896
	ds_load_u8 v201, v170 offset:1024
	ds_load_u8 v223, v170 offset:976
	ds_load_u8 v225, v170 offset:912
	ds_load_u8 v214, v170 offset:992
	ds_load_u8 v217, v170 offset:928
	ds_load_u8 v206, v170 offset:944
	ds_load_u8 v127, v170 offset:832
	ds_load_u8 v128, v170 offset:768
	ds_load_u8 v131, v170 offset:848
	ds_load_u8 v132, v170 offset:784
	ds_load_u8 v236, v170 offset:864
	ds_load_u8 v240, v170 offset:800
	ds_load_u8 v220, v170 offset:880
	ds_load_u8 v224, v170 offset:816
	ds_load_u8 v135, v170 offset:704
	ds_load_u8 v136, v170 offset:640
	ds_load_u8 v138, v170 offset:720
	ds_load_u8 v81, v170 offset:656
	ds_load_u8 v140, v170 offset:736
	ds_load_u8 v175, v170 offset:672
	ds_load_u8 v173, v170 offset:752
	ds_load_u8 v176, v170 offset:688
	ds_load_u8 v144, v170 offset:576
	ds_load_u8 v180, v170 offset:512
	ds_load_u8 v65, v170 offset:592
	ds_load_u8 v0, v170 offset:528
	ds_load_u8 v148, v170 offset:608
	ds_load_u8 v150, v170 offset:624
	ds_load_u8 v149, v170 offset:544
	ds_load_u8 v202, v170 offset:1968
	ds_load_u8 v169, v170 offset:1920
	ds_load_u8 v171, v170 offset:1856
	ds_load_u8 v235, v170 offset:1872
	ds_load_u8 v239, v170 offset:1808
	ds_load_u8 v227, v170 offset:1888
	ds_load_u8 v229, v170 offset:1824
	ds_load_u8 v211, v170 offset:1904
	ds_load_u8 v215, v170 offset:1840
	ds_load_u8 v82, v170 offset:1728
	ds_load_u8 v182, v170 offset:1792
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v102, v101, 0xc0c0004
	v_perm_b32 v98, v98, v181, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v104, v123, v119, 0xc0c0004
	scratch_store_b32 off, v70, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v155, v170 offset:1488
	ds_load_u8 v156, v170 offset:1424
	ds_load_u8 v157, v170 offset:1504
	ds_load_u8 v158, v170 offset:1440
	ds_load_u8 v242, v170 offset:1520
	ds_load_u8 v244, v170 offset:1456
	ds_load_u8 v159, v170 offset:1408
	ds_load_u8 v160, v170 offset:1344
	ds_load_u8 v161, v170 offset:1360
	ds_load_u8 v162, v170 offset:1296
	ds_load_u8 v163, v170 offset:1376
	ds_load_u8 v164, v170 offset:1312
	ds_load_u8 v165, v170 offset:1392
	ds_load_u8 v166, v170 offset:1328
	ds_load_u8 v222, v170 offset:1984
	ds_load_u8 v210, v170 offset:2000
	ds_load_u8 v213, v170 offset:1936
	ds_load_u8 v205, v170 offset:2016
	ds_load_u8 v208, v170 offset:1952
	ds_load_u8 v167, v78
	ds_load_u8 v70, v87
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v70, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v86, v170 offset:1744
	ds_load_u8 v85, v170 offset:1680
	ds_load_u8 v241, v170 offset:1760
	ds_load_u8 v243, v170 offset:1696
	ds_load_u8 v233, v170 offset:1776
	ds_load_u8 v237, v170 offset:1712
	ds_load_u8 v70, v170 offset:1664
	ds_load_u8 v71, v170 offset:1600
	ds_load_u8 v72, v170 offset:1616
	ds_load_u8 v73, v170 offset:1552
	ds_load_u8 v76, v170 offset:1632
	ds_load_u8 v83, v170 offset:1568
	ds_load_u8 v84, v170 offset:1648
	ds_load_u8 v77, v170 offset:1584
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v78, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v78, 0, v78
	ds_store_b8 v78, v245
	ds_store_b8 v78, v246 offset:512
	ds_store_b8 v78, v247 offset:1024
	ds_store_b8 v78, v248 offset:1536
	ds_store_b8 v78, v249 offset:2048
	ds_store_b8 v78, v250 offset:2560
	ds_store_b8 v78, v251 offset:3072
	ds_store_b8 v78, v252 offset:3584
	ds_store_b8 v78, v253 offset:4096
	ds_store_b8 v78, v254 offset:4608
	ds_store_b8 v78, v255 offset:5120
	ds_store_b8 v78, v80 offset:5632
	ds_store_b8 v78, v130 offset:6144
	ds_store_b8 v78, v133 offset:6656
	ds_store_b8 v78, v134 offset:7168
	ds_store_b8 v78, v168 offset:7680
	.loc	1 945 31                        ; ragged.py:945:31
	v_perm_b32 v78, v112, v111, 0xc0c0004
	.loc	1 944 34                        ; ragged.py:944:34
	ds_store_b8 v177, v183
	ds_store_b8 v177, v184 offset:512
	ds_store_b8 v177, v185 offset:1024
	ds_store_b8 v177, v186 offset:1536
	ds_store_b8 v177, v187 offset:2048
	ds_store_b8 v177, v188 offset:2560
	ds_store_b8 v177, v189 offset:3072
	ds_store_b8 v177, v190 offset:3584
	ds_store_b8 v177, v191 offset:4096
	ds_store_b8 v177, v192 offset:4608
	ds_store_b8 v177, v193 offset:5120
	ds_store_b8 v177, v194 offset:5632
	ds_store_b8 v177, v196 offset:6144
	ds_store_b8 v177, v89 offset:6656
	ds_store_b8 v177, v197 offset:7168
	ds_store_b8 v177, v88 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v80, v90
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v246, v103, 16, v78
	v_perm_b32 v78, v114, v113, 0xc0c0004
	v_perm_b32 v103, v106, v105, 0xc0c0004
	scratch_load_b64 v[196:197], off, off offset:48 ; 8-byte Folded Reload
	v_perm_b32 v111, v172, v129, 0xc0c0004
	v_mov_b32_e32 v172, v92
	v_lshl_or_b32 v248, v103, 16, v78
	v_perm_b32 v103, v125, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v245, v111, 16, v104
	v_perm_b32 v104, v124, v120, 0xc0c0004
	v_perm_b32 v78, v116, v115, 0xc0c0004
	v_lshl_or_b32 v249, v99, 16, v103
	v_perm_b32 v99, v126, v122, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v247, v98, 16, v104
	v_perm_b32 v98, v108, v107, 0xc0c0004
	v_lshl_or_b32 v251, v100, 16, v99
	v_perm_b32 v99, v180, v144, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[180:181], off, off offset:72
	scratch_load_b64 v[88:89], off, off offset:56
	scratch_load_b64 v[89:90], off, off offset:40
	v_perm_b32 v100, v136, v135, 0xc0c0004
	v_mov_b32_e32 v144, v96
	v_lshl_or_b32 v250, v98, 16, v78
	v_perm_b32 v78, v118, v117, 0xc0c0004
	v_perm_b32 v98, v110, v109, 0xc0c0004
	v_lshl_or_b32 v187, v100, 16, v99
	v_perm_b32 v100, v81, v138, 0xc0c0004
	v_mov_b32_e32 v81, v91
	v_perm_b32 v99, v0, v65, 0xc0c0004
	v_dual_mov_b32 v65, v69 :: v_dual_mov_b32 v0, v68
	v_lshl_or_b32 v252, v98, 16, v78
	.loc	1 944 34                        ; ragged.py:944:34
	v_add_nc_u32_e32 v78, 0, v147
	.loc	1 945 31                        ; ragged.py:945:31
	v_perm_b32 v98, v231, v230, 0xc0c0004
	v_lshl_or_b32 v189, v100, 16, v99
	v_perm_b32 v99, v149, v148, 0xc0c0004
	v_perm_b32 v100, v175, v140, 0xc0c0004
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[183:186], v78 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	v_perm_b32 v78, v128, v127, 0xc0c0004
	v_mov_b32_e32 v148, v67
	v_perm_b32 v67, v182, v171, 0xc0c0004
	v_lshl_or_b32 v191, v100, 16, v99
	v_perm_b32 v99, v224, v220, 0xc0c0004
	v_lshl_or_b32 v188, v98, 16, v78
	v_perm_b32 v78, v132, v131, 0xc0c0004
	v_perm_b32 v98, v225, v223, 0xc0c0004
	v_perm_b32 v100, v206, v167, 0xc0c0004
	v_mov_b32_e32 v149, v75
	scratch_load_b64 v[68:69], off, off offset:80 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v69, v243, v241, 0xc0c0004
	v_lshl_or_b32 v190, v98, 16, v78
	v_perm_b32 v78, v240, v236, 0xc0c0004
	v_perm_b32 v98, v217, v214, 0xc0c0004
	v_lshl_or_b32 v194, v100, 16, v99
	v_perm_b32 v99, v201, v153, 0xc0c0004
	v_perm_b32 v100, v199, v221, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[245:246], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[245:246], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[247:248], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[247:248], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[249:250], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[249:250], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[251:252], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[251:252], v[57:64] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[183:186], v97 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v192, v98, 16, v78
	v_perm_b32 v78, v151, v150, 0xc0c0004
	v_perm_b32 v98, v176, v173, 0xc0c0004
	v_mov_b32_e32 v150, v74
	v_dual_mov_b32 v176, v179 :: v_dual_mov_b32 v151, v200
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v193, v98, 16, v78
	v_perm_b32 v78, v232, v160, 0xc0c0004
	v_perm_b32 v98, v159, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[187:188], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[187:188], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[191:192], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[191:192], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[193:194], v[57:64] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[183:186], v146 offset1:8
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v188, v98, 16, v78
	v_lshl_or_b32 v187, v100, 16, v99
	v_perm_b32 v78, v162, v161, 0xc0c0004
	v_perm_b32 v98, v156, v155, 0xc0c0004
	v_perm_b32 v99, v238, v234, 0xc0c0004
	v_perm_b32 v100, v216, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v190, v98, 16, v78
	v_perm_b32 v78, v164, v163, 0xc0c0004
	v_lshl_or_b32 v189, v100, 16, v99
	v_perm_b32 v98, v158, v157, 0xc0c0004
	v_perm_b32 v99, v228, v226, 0xc0c0004
	v_perm_b32 v100, v209, v207, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v192, v98, 16, v78
	v_perm_b32 v78, v166, v165, 0xc0c0004
	v_lshl_or_b32 v191, v100, 16, v99
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v98, v244, v242, 0xc0c0004
	v_perm_b32 v99, v219, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[191:192], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[191:192], v[41:48] neg_lo:[1,1,0]
	v_perm_b32 v100, v204, v203, 0xc0c0004
	v_lshl_or_b32 v194, v98, 16, v78
	v_perm_b32 v78, v169, v222, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[187:188], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[187:188], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v193, v100, 16, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v188, v78, 16, v67
	v_perm_b32 v67, v213, v210, 0xc0c0004
	v_mov_b32_e32 v78, v94
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[193:194], v[57:64] neg_lo:[1,1,0]
	.loc	1 944 34                        ; ragged.py:944:34
	ds_load_2addr_stride64_b64 v[183:186], v142 offset1:8
	v_dual_mov_b32 v168, v88 :: v_dual_mov_b32 v181, v89
	scratch_load_b64 v[89:90], off, off offset:64 ; 8-byte Folded Reload
	v_dual_mov_b32 v88, v93 :: v_dual_mov_b32 v223, v68
	.loc	1 945 31                        ; ragged.py:945:31
	v_perm_b32 v68, v85, v86, 0xc0c0004
	scratch_load_b64 v[85:86], off, off offset:100 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v197, v89
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[89:90], off, off offset:24
	scratch_load_b64 v[90:91], off, off offset:32
	scratch_load_b64 v[91:92], off, off offset:8
	scratch_load_b64 v[92:93], off, off offset:16
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v93, v95
	scratch_load_b64 v[95:96], off, off     ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v96, v66
	scratch_load_b32 v66, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v71, v66, v71, 0xc0c0004
	v_perm_b32 v66, v70, v82, 0xc0c0004
	v_perm_b32 v70, v73, v72, 0xc0c0004
	v_mov_b32_e32 v72, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v187, v66, 16, v71
	v_lshl_or_b32 v189, v68, 16, v70
	v_perm_b32 v68, v83, v76, 0xc0c0004
	v_perm_b32 v66, v239, v235, 0xc0c0004
	v_mov_b32_e32 v83, v195
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[183:184], v[187:188], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[185:186], v[187:188], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v69, 16, v68
	scratch_load_b32 v69, off, off offset:92 ; 4-byte Folded Reload
	v_lshl_or_b32 v190, v67, 16, v66
	v_perm_b32 v66, v229, v227, 0xc0c0004
	v_perm_b32 v67, v208, v205, 0xc0c0004
	v_perm_b32 v68, v215, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[183:184], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[185:186], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v67, 16, v66
	v_perm_b32 v66, v77, v84, 0xc0c0004
	v_perm_b32 v67, v237, v233, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[183:184], v[191:192], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[185:186], v[191:192], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v193, v67, 16, v66
	s_waitcnt vmcnt(0)
	v_perm_b32 v69, v202, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v194, v69, 16, v68
	v_wmma_i32_16x16x16_iu4 v[49:56], v[183:184], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[185:186], v[193:194], v[57:64] neg_lo:[1,1,0]
	.loc	1 932 23                        ; ragged.py:932:23
	s_cbranch_scc1 .LBB0_3
; %bb.4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 959 25                        ; ragged.py:959:25
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v66, off, off offset:364
	scratch_load_b32 v67, off, off offset:368
	scratch_load_b32 v68, off, off offset:372
	scratch_load_b32 v69, off, off offset:376
	scratch_load_b32 v70, off, off offset:380
	.loc	1 966 25                        ; ragged.py:966:25
	s_add_i32 s37, s40, s64
	.loc	1 965 40                        ; ragged.py:965:40
	s_mov_b32 s58, s54
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s37, s37, s62
	.loc	1 965 40                        ; ragged.py:965:40
	s_mov_b32 s59, s55
	.loc	1 958 40                        ; ragged.py:958:40
	s_mov_b32 s50, s54
	s_mov_b32 s51, s55
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v73, v2
	v_cvt_f32_i32_e32 v71, v1
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v102, v13
	v_cvt_f32_i32_e32 v82, v3
	v_cvt_f32_i32_e32 v74, v4
	v_cvt_f32_i32_e32 v75, v5
	v_cvt_f32_i32_e32 v76, v6
	v_cvt_f32_i32_e32 v77, v7
	v_cvt_f32_i32_e32 v84, v8
	v_cvt_f32_i32_e32 v98, v9
	v_cvt_f32_i32_e32 v99, v10
	v_cvt_f32_i32_e32 v100, v11
	v_cvt_f32_i32_e32 v101, v12
	v_cvt_f32_i32_e32 v103, v14
	v_cvt_f32_i32_e32 v104, v15
	v_cvt_f32_i32_e32 v105, v16
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 959 25                        ; ragged.py:959:25
	s_waitcnt vmcnt(4)
	v_mul_lo_u32 v66, v66, s60
	s_waitcnt vmcnt(3)
	v_mul_lo_u32 v67, v67, s60
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v68, v68, s60
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v69, v69, s60
	.loc	1 965 40                        ; ragged.py:965:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v70, v70, s37, 1
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v66, s40, v66, 1
	v_add_lshl_u32 v67, s40, v67, 1
	v_add_lshl_u32 v68, s40, v68, 1
	v_add_lshl_u32 v69, s40, v69, 1
	.loc	1 965 40                        ; ragged.py:965:40
	v_cndmask_b32_e64 v70, 0x80000000, v70, s36
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v66, 0x80000000, v66, s4
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 965 40                        ; ragged.py:965:40
	buffer_load_u16 v70, v70, s[56:59], 0 offen
	.loc	1 958 40                        ; ragged.py:958:40
	s_clause 0x3
	buffer_load_u16 v66, v66, s[48:51], 0 offen
	buffer_load_u16 v67, v67, s[48:51], 0 offen
	buffer_load_u16 v68, v68, s[48:51], 0 offen
	buffer_load_u16 v69, v69, s[48:51], 0 offen
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v2, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 972 17                        ; ragged.py:972:17
	s_add_i32 s40, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s40, s60
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 965 40                        ; ragged.py:965:40
	v_lshlrev_b32_e32 v1, 16, v70
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 963 21                        ; ragged.py:963:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v70, v71, v66 :: v_dual_lshlrev_b32 v69, 16, v69
	v_mul_f32_e32 v18, v18, v67
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v13, off, off offset:388
	scratch_load_b32 v136, off, off offset:360
	scratch_load_b32 v135, off, off offset:356
	scratch_load_b32 v134, off, off offset:352
	scratch_load_b32 v133, off, off offset:348
	scratch_load_b32 v132, off, off offset:344
	scratch_load_b32 v131, off, off offset:340
	scratch_load_b32 v130, off, off offset:336
	scratch_load_b32 v129, off, off offset:332
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v71, v73, v66
	v_dual_mul_f32 v73, v82, v66 :: v_dual_mul_f32 v20, v20, v67
	v_mul_f32_e32 v82, v74, v66
	v_dual_mul_f32 v74, v75, v66 :: v_dual_mul_f32 v17, v17, v67
	v_dual_mul_f32 v75, v76, v66 :: v_dual_mul_f32 v22, v22, v67
	v_dual_mul_f32 v76, v77, v66 :: v_dual_mul_f32 v19, v19, v67
	v_dual_mul_f32 v77, v84, v66 :: v_dual_mul_f32 v26, v26, v67
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v120, off, off offset:296
	scratch_load_b32 v119, off, off offset:292
	scratch_load_b32 v118, off, off offset:288
	scratch_load_b32 v117, off, off offset:284
	scratch_load_b32 v116, off, off offset:280
	scratch_load_b32 v115, off, off offset:276
	scratch_load_b32 v114, off, off offset:272
	scratch_load_b32 v113, off, off offset:268
	v_dual_mul_f32 v84, v98, v66 :: v_dual_mul_f32 v21, v21, v67
	v_dual_mul_f32 v98, v99, v66 :: v_dual_mul_f32 v25, v25, v67
	v_dual_mul_f32 v99, v100, v66 :: v_dual_mul_f32 v30, v30, v67
	v_dual_mul_f32 v100, v101, v66 :: v_dual_mul_f32 v23, v23, v67
	v_dual_mul_f32 v101, v102, v66 :: v_dual_mul_f32 v24, v24, v67
	v_dual_mul_f32 v102, v103, v66 :: v_dual_mul_f32 v29, v29, v67
	v_dual_mul_f32 v103, v104, v66 :: v_dual_mul_f32 v34, v34, v68
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v128, off, off offset:328
	scratch_load_b32 v127, off, off offset:324
	scratch_load_b32 v126, off, off offset:320
	scratch_load_b32 v125, off, off offset:316
	scratch_load_b32 v124, off, off offset:312
	scratch_load_b32 v123, off, off offset:308
	scratch_load_b32 v122, off, off offset:304
	scratch_load_b32 v121, off, off offset:300
	scratch_load_b32 v104, off, off offset:232
	v_dual_mul_f32 v28, v28, v67 :: v_dual_mul_f32 v33, v33, v68
	v_dual_mul_f32 v38, v38, v68 :: v_dual_mul_f32 v49, v49, v69
	v_dual_mul_f32 v66, v105, v66 :: v_dual_mul_f32 v27, v27, v67
	v_dual_mul_f32 v40, v40, v68 :: v_dual_mul_f32 v51, v51, v69
	v_dual_mul_f32 v31, v31, v67 :: v_dual_mul_f32 v36, v36, v68
	v_dual_mul_f32 v32, v32, v67 :: v_dual_mul_f32 v35, v35, v68
	v_dual_mul_f32 v37, v37, v68 :: v_dual_mul_f32 v50, v50, v69
	v_dual_mul_f32 v39, v39, v68 :: v_dual_mul_f32 v52, v52, v69
	v_dual_mul_f32 v41, v41, v68 :: v_dual_mul_f32 v54, v54, v69
	v_dual_mul_f32 v42, v42, v68 :: v_dual_mul_f32 v53, v53, v69
	v_dual_mul_f32 v43, v43, v68 :: v_dual_mul_f32 v56, v56, v69
	v_dual_mul_f32 v44, v44, v68 :: v_dual_mul_f32 v55, v55, v69
	v_dual_mul_f32 v45, v45, v68 :: v_dual_mul_f32 v58, v58, v69
	v_dual_mul_f32 v46, v46, v68 :: v_dual_mul_f32 v57, v57, v69
	v_dual_mul_f32 v47, v47, v68 :: v_dual_mul_f32 v60, v60, v69
	v_dual_mul_f32 v48, v48, v68 :: v_dual_mul_f32 v59, v59, v69
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v112, off, off offset:264
	scratch_load_b32 v111, off, off offset:260
	scratch_load_b32 v110, off, off offset:256
	scratch_load_b32 v109, off, off offset:252
	scratch_load_b32 v108, off, off offset:248
	scratch_load_b32 v107, off, off offset:244
	scratch_load_b32 v106, off, off offset:240
	scratch_load_b32 v105, off, off offset:236
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt vmcnt(33)
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:512
	ds_load_b128 v[13:16], v13 offset:528
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v61, v61, v69
	v_mul_f32_e32 v62, v62, v69
	v_mul_f32_e32 v63, v63, v69
	v_mul_f32_e32 v64, v64, v69
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v69, off, off offset:156
	scratch_load_b32 v68, off, off offset:152
	scratch_load_b32 v67, off, off offset:144
	.loc	1 971 17                        ; ragged.py:971:17
	s_waitcnt vmcnt(30) lgkmcnt(2)
	v_dual_fmac_f32 v136, v70, v1 :: v_dual_fmac_f32 v131, v75, v6
	v_dual_fmac_f32 v135, v71, v2 :: v_dual_fmac_f32 v134, v73, v3
	v_fmac_f32_e32 v133, v82, v4
	s_waitcnt vmcnt(28)
	v_dual_fmac_f32 v132, v74, v5 :: v_dual_fmac_f32 v129, v77, v8
	v_fmac_f32_e32 v130, v76, v7
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v77, off, off offset:200
	scratch_load_b32 v76, off, off offset:196
	scratch_load_b32 v75, off, off offset:192
	scratch_load_b32 v74, off, off offset:188
	scratch_load_b32 v82, off, off offset:184
	scratch_load_b32 v73, off, off offset:180
	scratch_load_b32 v71, off, off offset:176
	scratch_load_b32 v70, off, off offset:168
	s_waitcnt vmcnt(34)
	v_dual_fmac_f32 v120, v17, v1 :: v_dual_fmac_f32 v119, v18, v2
	scratch_load_b32 v17, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v118, v19, v3 :: v_dual_fmac_f32 v117, v20, v4
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v116, v21, v5 :: v_dual_fmac_f32 v115, v22, v6
	s_waitcnt vmcnt(29)
	v_dual_fmac_f32 v114, v23, v7 :: v_dual_fmac_f32 v113, v24, v8
	s_waitcnt vmcnt(27) lgkmcnt(1)
	v_dual_fmac_f32 v128, v84, v9 :: v_dual_fmac_f32 v127, v98, v10
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v126, v99, v11 :: v_dual_fmac_f32 v125, v100, v12
	s_waitcnt vmcnt(23) lgkmcnt(0)
	v_dual_fmac_f32 v124, v101, v13 :: v_dual_fmac_f32 v123, v102, v14
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v122, v103, v15 :: v_dual_fmac_f32 v121, v66, v16
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v103, off, off offset:228
	scratch_load_b32 v102, off, off offset:224
	scratch_load_b32 v101, off, off offset:220
	scratch_load_b32 v100, off, off offset:216
	scratch_load_b32 v99, off, off offset:212
	scratch_load_b32 v98, off, off offset:208
	scratch_load_b32 v84, off, off offset:204
	s_waitcnt vmcnt(27)
	v_fmac_f32_e32 v104, v33, v1
	scratch_load_b32 v66, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v112, v25, v9 :: v_dual_fmac_f32 v111, v26, v10
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v110, v27, v11 :: v_dual_fmac_f32 v109, v28, v12
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v108, v29, v13 :: v_dual_fmac_f32 v107, v30, v14
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v106, v31, v15 :: v_dual_fmac_f32 v105, v32, v16
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v69, v52, v4
	scratch_load_b32 v52, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v77, v41, v9 :: v_dual_fmac_f32 v76, v42, v10
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v75, v43, v11 :: v_dual_fmac_f32 v74, v44, v12
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v73, v46, v14
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v71, v47, v15 :: v_dual_fmac_f32 v70, v49, v1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:164
	scratch_load_b32 v49, off, off offset:160
	s_waitcnt vmcnt(11)
	v_dual_fmac_f32 v82, v45, v13 :: v_dual_fmac_f32 v17, v48, v16
	s_waitcnt vmcnt(10)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v48, v17 :: v_dual_fmac_f32 v103, v34, v2
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v102, v35, v3 :: v_dual_fmac_f32 v101, v36, v4
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v100, v37, v5 :: v_dual_fmac_f32 v99, v38, v6
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v98, v39, v7
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v84, v40, v8
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v52, v57, v9
	scratch_load_b32 v57, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v1, v50, v2
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v49, v51, v3
	scratch_load_b32 v51, off, off offset:148 ; 4-byte Folded Reload
	v_fmac_f32_e32 v68, v53, v5
	scratch_load_b32 v53, off, off offset:140 ; 4-byte Folded Reload
	v_mov_b32_e32 v50, v1
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	v_dual_fmac_f32 v67, v55, v7 :: v_dual_fmac_f32 v66, v58, v10
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:120
	scratch_load_b32 v58, off, off offset:116
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v51, v54, v6
	scratch_load_b32 v54, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v53, v56, v8
	scratch_load_b32 v56, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v1, v59, v11
	v_fmac_f32_e32 v57, v63, v15
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v55, v61, v13 :: v_dual_fmac_f32 v58, v62, v14
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v54, v60, v12 :: v_dual_mov_b32 v59, v1
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v56, v64, v16
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_2
; %bb.5:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v45, 0xf0, v0
.LBB0_6:                                ; %._crit_edge
	.loc	1 975 13 is_stmt 1              ; ragged.py:975:13
	scratch_load_b32 v17, off, off offset:364 ; 4-byte Folded Reload
	.loc	1 974 9                         ; ragged.py:974:9
	v_bfe_u32 v21, v136, 16, 1
	v_bfe_u32 v22, v135, 16, 1
	v_cmp_o_f32_e64 s19, v136, v136
	v_bfe_u32 v24, v134, 16, 1
	v_cmp_o_f32_e64 s20, v135, v135
	v_add3_u32 v23, v136, v21, 0x7fff
	v_add3_u32 v22, v135, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v134, v134
	v_add3_u32 v24, v134, v24, 0x7fff
	v_bfe_u32 v25, v132, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v133, 16, 1
	v_bfe_u32 v26, v131, 16, 1
	v_cmp_o_f32_e64 s19, v133, v133
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v133, v23, 0x7fff
	v_add3_u32 v25, v132, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v132, v132
	v_add3_u32 v26, v131, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v131, v131
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v130, 16, 1
	v_bfe_u32 v27, v129, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v128, 16, 1
	v_add3_u32 v23, v130, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v130, v130
	v_add3_u32 v27, v129, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v129, v129
	v_bfe_u32 v28, v127, 16, 1
	v_add3_u32 v26, v128, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v128, v128
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v126, 16, 1
	v_bfe_u32 v29, v125, 16, 1
	v_add3_u32 v28, v127, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v127, v127
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v126, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v126, v126
	v_add3_u32 v29, v125, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v125, v125
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v124, 16, 1
	v_bfe_u32 v30, v123, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v122, 16, 1
	v_add3_u32 v28, v124, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v124, v124
	v_add3_u32 v30, v123, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v123, v123
	v_bfe_u32 v31, v121, 16, 1
	v_add3_u32 v29, v122, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v122, v122
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v120, 16, 1
	v_bfe_u32 v32, v119, 16, 1
	v_add3_u32 v31, v121, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v121, v121
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v120, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v120, v120
	v_add3_u32 v32, v119, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v119, v119
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v118, 16, 1
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v116, 16, 1
	v_add3_u32 v31, v118, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v118, v118
	v_add3_u32 v33, v117, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v117, v117
	v_bfe_u32 v34, v115, 16, 1
	v_add3_u32 v32, v116, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v116, v116
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v114, 16, 1
	v_bfe_u32 v35, v113, 16, 1
	v_add3_u32 v34, v115, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v115, v115
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v114, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v114, v114
	v_add3_u32 v35, v113, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v113, v113
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v112, 16, 1
	v_bfe_u32 v36, v111, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v110, 16, 1
	v_add3_u32 v34, v112, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v112, v112
	v_add3_u32 v36, v111, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v111, v111
	v_bfe_u32 v37, v109, 16, 1
	v_add3_u32 v35, v110, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v110, v110
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v108, 16, 1
	v_bfe_u32 v38, v107, 16, 1
	v_add3_u32 v37, v109, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v109, v109
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v108, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v108, v108
	v_add3_u32 v38, v107, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v107, v107
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v106, 16, 1
	v_bfe_u32 v39, v105, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s21
	v_bfe_u32 v38, v104, 16, 1
	v_add3_u32 v37, v106, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v106, v106
	v_add3_u32 v39, v105, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v105, v105
	v_bfe_u32 v40, v103, 16, 1
	v_add3_u32 v38, v104, v38, 0x7fff
	v_cmp_o_f32_e64 s21, v104, v104
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_cndmask_b16 v37.h, 0x7fff, v39.h, s20
	v_bfe_u32 v39, v102, 16, 1
	v_bfe_u32 v41, v101, 16, 1
	v_add3_u32 v40, v103, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v103, v103
	v_cndmask_b16 v38.l, 0x7fff, v38.h, s21
	v_add3_u32 v39, v102, v39, 0x7fff
	v_cmp_o_f32_e64 s20, v102, v102
	v_add3_u32 v41, v101, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v101, v101
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s19
	v_bfe_u32 v40, v100, 16, 1
	v_bfe_u32 v42, v99, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s20
	v_cndmask_b16 v39.h, 0x7fff, v41.h, s21
	v_bfe_u32 v41, v98, 16, 1
	v_add3_u32 v40, v100, v40, 0x7fff
	v_cmp_o_f32_e64 s19, v100, v100
	v_add3_u32 v42, v99, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v99, v99
	v_bfe_u32 v43, v84, 16, 1
	v_add3_u32 v41, v98, v41, 0x7fff
	v_cmp_o_f32_e64 s21, v98, v98
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s19
	v_cndmask_b16 v40.h, 0x7fff, v42.h, s20
	v_bfe_u32 v42, v77, 16, 1
	v_bfe_u32 v44, v76, 16, 1
	v_add3_u32 v43, v84, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v84, v84
	.loc	1 877 36                        ; ragged.py:877:36
	v_lshrrev_b32_e32 v1, 1, v45
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s21
	v_add3_u32 v42, v77, v42, 0x7fff
	v_cmp_o_f32_e64 s20, v77, v77
	v_add3_u32 v44, v76, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v76, v76
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s19
	v_bfe_u32 v43, v75, 16, 1
	v_bfe_u32 v45, v74, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s20
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s21
	v_bfe_u32 v44, v82, 16, 1
	v_add3_u32 v43, v75, v43, 0x7fff
	v_cmp_o_f32_e64 s19, v75, v75
	v_add3_u32 v45, v74, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v74, v74
	v_add3_u32 v44, v82, v44, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s19
	v_bfe_u32 v46, v73, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v45.h, s20
	v_bfe_u32 v45, v71, 16, 1
	v_bfe_u32 v47, v48, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s21
	v_add3_u32 v46, v73, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v73, v73
	v_add3_u32 v45, v71, v45, 0x7fff
	v_cmp_o_f32_e64 s20, v71, v71
	v_add3_u32 v47, v48, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v48, v48
	v_cndmask_b16 v44.h, 0x7fff, v46.h, s19
	v_bfe_u32 v46, v70, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s20
	v_bfe_u32 v48, v50, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s21
	v_bfe_u32 v47, v49, 16, 1
	v_add3_u32 v46, v70, v46, 0x7fff
	v_cmp_o_f32_e64 s19, v70, v70
	v_add3_u32 v48, v50, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v50, v50
	v_add3_u32 v47, v49, v47, 0x7fff
	v_cmp_o_f32_e64 s21, v49, v49
	v_bfe_u32 v49, v69, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s19
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s20
	v_bfe_u32 v48, v68, 16, 1
	v_bfe_u32 v50, v51, 16, 1
	v_add3_u32 v49, v69, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v69, v69
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s21
	v_add3_u32 v48, v68, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v68, v68
	v_add3_u32 v50, v51, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v47.h, 0x7fff, v49.h, s19
	v_bfe_u32 v49, v67, 16, 1
	v_bfe_u32 v51, v53, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s20
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s21
	v_bfe_u32 v50, v52, 16, 1
	v_add3_u32 v49, v67, v49, 0x7fff
	v_cmp_o_f32_e64 s19, v67, v67
	v_add3_u32 v51, v53, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v50, v52, v50, 0x7fff
	v_cmp_o_f32_e64 s21, v52, v52
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s19
	v_bfe_u32 v52, v66, 16, 1
	v_cndmask_b16 v49.h, 0x7fff, v51.h, s20
	v_bfe_u32 v51, v59, 16, 1
	v_bfe_u32 v53, v54, 16, 1
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s21
	v_add3_u32 v52, v66, v52, 0x7fff
	v_cmp_o_f32_e64 s19, v66, v66
	v_add3_u32 v51, v59, v51, 0x7fff
	v_cmp_o_f32_e64 s20, v59, v59
	v_add3_u32 v53, v54, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v54, v54
	v_bfe_u32 v54, v55, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v52.h, s19
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s20
	v_bfe_u32 v52, v58, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s21
	v_add3_u32 v53, v55, v54, 0x7fff
	v_bfe_u32 v54, v57, 16, 1
	v_cmp_o_f32_e64 s19, v55, v55
	v_bfe_u32 v55, v56, 16, 1
	v_add3_u32 v52, v58, v52, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_add3_u32 v54, v57, v54, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v57, v57
	v_add3_u32 v55, v56, v55, 0x7fff
	v_cmp_o_f32_e64 s22, v56, v56
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
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v11, s39, v1
	s_mov_b32 s20, 0x76543210
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v51, v51, 8, v51
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s62, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v51, 0x540054, v51
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s17, s62, v16
	v_cmp_gt_i32_e64 s16, s62, v15
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v51, v51, 4, v51
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v51, 0x5040504, v51
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	.loc	1 975 13                        ; ragged.py:975:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v20, v17, s62
	scratch_load_b32 v17, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 974 9                         ; ragged.py:974:9
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v39, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v42, v42, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v46, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_add_lshl_u32 v84, v11, v20, 1
	v_add_lshl_u32 v85, v16, v20, 1
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v53, v51
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s18, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v86, v15, v20, 1
	v_cndmask_b32_e64 v84, 0x80000000, v84, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s17, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v13, 4, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v85, 0x80000000, v85, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s16, s4
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
	s_and_b32 s19, s15, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s62, v10
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v51, 0x80000000, v55, s19
	v_add_lshl_u32 v55, v12, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s14, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v8, 0x80, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v10, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s13, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v7, 0x81, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s11, s62, v9
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s4
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
	s_and_b32 s19, s11, s4
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
	s_and_b32 s19, s10, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v4, 0x84, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v51, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s62, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s4
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
	v_cmp_gt_i32_e64 s5, s62, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s4
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s62, v2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v51, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s62, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s5, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v1, v20, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s1, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v59.l, v26.h
	v_cndmask_b32_e64 v24, 0x80000000, v24, s19
	s_clause 0x1
	buffer_store_b16 v56, v21, s[20:23], 0 offen
	buffer_store_b16 v26, v22, s[20:23], 0 offen
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v27.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_mov_b16_e32 v61.l, v28.h
	v_mov_b16_e32 v60.l, v29.h
	v_mov_b16_e32 v63.l, v30.h
	v_mov_b16_e32 v62.l, v31.h
	v_mov_b16_e32 v65.l, v32.h
	v_mov_b16_e32 v64.l, v33.h
	v_mov_b16_e32 v67.l, v34.h
	v_mov_b16_e32 v66.l, v35.h
	v_mov_b16_e32 v69.l, v36.h
	v_mov_b16_e32 v68.l, v37.h
	v_mov_b16_e32 v71.l, v38.h
	v_mov_b16_e32 v70.l, v39.h
	v_mov_b16_e32 v73.l, v40.h
	v_mov_b16_e32 v72.l, v41.h
	v_mov_b16_e32 v74.l, v43.h
	v_mov_b16_e32 v75.l, v42.h
	v_mov_b16_e32 v76.l, v45.h
	v_mov_b16_e32 v77.l, v44.h
	v_mov_b16_e32 v78.l, v47.h
	v_mov_b16_e32 v79.l, v46.h
	v_mov_b16_e32 v80.l, v49.h
	v_mov_b16_e32 v81.l, v48.h
	v_mov_b16_e32 v83.l, v50.h
	v_mov_b16_e32 v82.l, v0.h
	.loc	1 975 13                        ; ragged.py:975:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v19, v17, s62
	scratch_load_b32 v17, off, off offset:372 ; 4-byte Folded Reload
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v21, v11, v19, 1
	v_add_lshl_u32 v22, v16, v19, 1
	v_add_lshl_u32 v23, v15, v19, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v14, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v21, v13, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s15, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v61, v22, s[20:23], 0 offen
	buffer_store_b16 v29, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v12, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s14, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v9, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v21, v8, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s11, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v63, v22, s[20:23], 0 offen
	buffer_store_b16 v31, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v7, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s10, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v5, v19, 1
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s7, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v65, v22, s[20:23], 0 offen
	buffer_store_b16 v33, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v3, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s6, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v23, v2, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s5, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v1, v19, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s1, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s0, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 975 13                        ; ragged.py:975:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v18, v17, s62
	scratch_load_b32 v17, off, off offset:376 ; 4-byte Folded Reload
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v20, v11, v18, 1
	v_add_lshl_u32 v21, v16, v18, 1
	v_add_lshl_u32 v22, v15, v18, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v14, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v20, v13, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s15, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v69, v21, s[20:23], 0 offen
	buffer_store_b16 v37, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v12, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s14, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v38, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v9, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v19, v5, v18, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v3, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s6, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v2, v18, 1
	v_add_lshl_u32 v18, v1, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s5, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v42, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v43, v22, s[20:23], 0 offen
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s1, s1, vcc_lo
	.loc	1 975 13                        ; ragged.py:975:13
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v17, v17, s62
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v11, v11, v17, 1
	v_add_lshl_u32 v16, v16, v17, 1
	v_add_lshl_u32 v15, v15, v17, 1
	v_add_lshl_u32 v13, v13, v17, 1
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v44, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v1, v1, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
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
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 396
		.amdhsa_kernarg_size 112
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 65
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 396
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15656
; TotalNumSgprs: 67
; NumVgprs: 256
; ScratchSize: 396
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 67
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 396
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 98
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
