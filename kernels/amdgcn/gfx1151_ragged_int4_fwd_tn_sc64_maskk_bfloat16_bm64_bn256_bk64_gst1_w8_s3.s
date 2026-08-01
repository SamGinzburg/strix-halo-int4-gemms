	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 837 0                         ; ragged.py:837:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x4c
	s_load_b64 s[34:35], s[0:1], 0x54
.Ltmp0:
	.loc	1 865 25 prologue_end           ; ragged.py:865:25
	s_abs_i32 s7, s2
	s_load_b256 s[20:27], s[0:1], 0x28
	.loc	1 876 32                        ; ragged.py:876:32
	v_and_b32_e32 v2, 15, v0
	.loc	1 876 18 is_stmt 0              ; ragged.py:876:18
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:863:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:863:21 ]
	s_ashr_i32 s4, s3, 31
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_lshr_b32 s4, s4, 24
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	s_ashr_i32 s3, s3, 8
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
.Ltmp2:
	.loc	1 865 25 is_stmt 1              ; ragged.py:865:25
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
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s5, v1
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v85, 0
	s_mul_f32 s5, s5, 0x4f7ffffe
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s5, s5
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v95, 0
	s_mul_i32 s6, s6, s5
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v97, 0
	s_mul_hi_u32 s6, s5, s6
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	s_cselect_b32 s4, s8, s5
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v81, 0
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 867 33                        ; ragged.py:867:33
	s_sub_i32 s5, s35, s4
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
	.loc	1 877 36                        ; ragged.py:877:36
	v_and_b32_e32 v1, 0xf0, v0
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
	s_lshl_b64 s[28:29], s[2:3], 3
	s_add_u32 s2, s20, s28
	s_addc_u32 s3, s21, s29
	s_load_b64 s[10:11], s[2:3], 0x0
	.loc	1 874 24                        ; ragged.py:874:24
	s_add_u32 s2, s22, s28
	s_addc_u32 s3, s23, s29
	.loc	1 875 22                        ; ragged.py:875:22
	s_add_u32 s4, s24, s28
	s_addc_u32 s5, s25, s29
	.loc	1 874 24                        ; ragged.py:874:24
	s_load_b64 s[20:21], s[2:3], 0x0
	.loc	1 875 22                        ; ragged.py:875:22
	s_load_b64 s[24:25], s[4:5], 0x0
	.loc	1 877 18                        ; ragged.py:877:18
	s_lshl_b32 s35, s6, 8
	.loc	1 876 18                        ; ragged.py:876:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s10, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s11, 0, s2
	.loc	1 959 25                        ; ragged.py:959:25
	v_add_nc_u32_e32 v83, s10, v2
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e32 vcc_lo, s[20:21], v[3:4]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s2, s[24:25], v[3:4]
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s3, s[20:21], v[5:6]
	v_cmp_le_i64_e64 s5, s[20:21], v[7:8]
	v_cmp_le_i64_e64 s6, s[20:21], v[9:10]
	.loc	1 878 48                        ; ragged.py:878:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[5:6]
	v_cmp_gt_i64_e64 s8, s[24:25], v[7:8]
	v_cmp_gt_i64_e64 s9, s[24:25], v[9:10]
	.loc	1 959 25 is_stmt 1              ; ragged.py:959:25
	v_add_nc_u32_e32 v156, 16, v83
	v_add_nc_u32_e32 v159, 32, v83
	v_add_nc_u32_e32 v160, 48, v83
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s3, s3, s7
	s_and_b32 s2, s5, s8
	s_and_b32 vcc_lo, s6, s9
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lt_i32 s34, 1
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3
	s_load_b64 s[30:31], s[0:1], 0x20
	s_load_b32 s6, s[0:1], 0x50
	s_load_b32 s7, s[0:1], 0x48
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 876 18 is_stmt 1              ; ragged.py:876:18
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v4, 63, v0
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v19, s35, v0
	v_add_nc_u32_e32 v107, 0, v2
	v_dual_mov_b32 v106, 0 :: v_dual_lshlrev_b32 v15, 5, v0
	v_or_b32_e32 v7, 0x3f0, v0
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v17, 2, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v15, 32, v15
	v_mov_b32_e32 v90, 0
	v_or_b32_e32 v5, 0x300, v0
	v_or_b32_e32 v8, 0x7f0, v0
	v_add3_u32 v15, 0, v17, v15
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v17, 1, v1
	.loc	1 872 20                        ; ragged.py:872:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s30, s28
	s_addc_u32 s1, s31, s29
	v_add_nc_u32_e32 v1, 0, v7
	.loc	1 966 25                        ; ragged.py:966:25
	s_load_b32 s9, s[0:1], 0x0
	.loc	1 876 18                        ; ragged.py:876:18
	v_add_co_u32 v2, s0, s10, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, s11, 0, s0
	.loc	1 942 39                        ; ragged.py:942:39
	s_mul_i32 s11, s6, s33
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v110, 0, v5
	.loc	1 878 21                        ; ragged.py:878:21
	v_cmp_le_i64_e64 s1, s[20:21], v[2:3]
	.loc	1 878 48 is_stmt 0              ; ragged.py:878:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[2:3]
	v_mov_b32_e32 v2, v19
	v_or_b32_e32 v9, 0xb00, v0
	v_or_b32_e32 v10, 0xf00, v0
	v_or_b32_e32 v11, 0x1300, v0
	v_or_b32_e32 v12, 0x1700, v0
	scratch_store_b64 off, v[2:3], off      ; 8-byte Folded Spill
	v_or_b32_e32 v13, 0x1b00, v0
	v_lshrrev_b32_e32 v14, 1, v0
	v_or_b32_e32 v16, 0x1f00, v0
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v18, 1, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s11, s9, v[19:20]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v3, s10, v4
	v_dual_mov_b32 v103, 0 :: v_dual_and_b32 v14, 0x70, v14
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 928 19 is_stmt 1              ; ragged.py:928:19
	v_mad_u64_u32 v[4:5], null, s33, 3, v[2:3]
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v108, v107, v14
	v_mov_b32_e32 v82, 0
	v_and_b32_e32 v14, 28, v18
	scratch_store_b64 off, v[4:5], off offset:44 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 5, v[2:3]
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v9
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v121, 0, v17
	v_mov_b32_e32 v80, 0
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s33, v19
	.loc	1 928 19                        ; ragged.py:928:19
	scratch_store_b64 off, v[4:5], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 6, v[2:3]
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v1, 0, v10
	v_or_b32_e32 v6, 0x700, v0
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v109, 0, v0
	scratch_store_b64 off, v[4:5], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 7, v[2:3]
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v1, 0, v11
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v111, 0, v6
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v66, 0
	scratch_store_b64 off, v[4:5], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 9, v[2:3]
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v1, 0, v12
	v_mad_u64_u32 v[11:12], null, s33, 12, v[2:3]
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b64 off, v[4:5], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 10, v[2:3]
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v13
	v_mad_u64_u32 v[12:13], null, s33, 13, v[2:3]
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v91, 0
	v_mov_b32_e32 v62, 0
	scratch_store_b64 off, v[4:5], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s33, 11, v[2:3]
	scratch_store_b32 off, v1, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, v15, v14
	v_mad_u64_u32 v[13:14], null, s33, 14, v[2:3]
	v_mad_u64_u32 v[14:15], null, s33, 15, v[2:3]
	v_mad_u64_u32 v[15:16], null, s33, 17, v[2:3]
	v_mad_u64_u32 v[16:17], null, s33, 18, v[2:3]
	v_mad_u64_u32 v[17:18], null, s33, 19, v[2:3]
	v_mad_u64_u32 v[18:19], null, s33, 20, v[2:3]
	v_mad_u64_u32 v[19:20], null, s33, 21, v[2:3]
	v_mad_u64_u32 v[20:21], null, s33, 22, v[2:3]
	v_mad_u64_u32 v[21:22], null, s33, 23, v[2:3]
	v_mad_u64_u32 v[22:23], null, s33, 24, v[2:3]
	v_mad_u64_u32 v[23:24], null, s33, 25, v[2:3]
	v_mad_u64_u32 v[24:25], null, s33, 26, v[2:3]
	v_mad_u64_u32 v[25:26], null, s33, 27, v[2:3]
	v_mad_u64_u32 v[26:27], null, s33, 28, v[2:3]
	v_mad_u64_u32 v[27:28], null, s33, 29, v[2:3]
	v_mad_u64_u32 v[28:29], null, s33, 30, v[2:3]
	v_mad_u64_u32 v[29:30], null, s33, 31, v[2:3]
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v38, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v39, 0
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	s_mov_b32 s28, s14
	.loc	1 878 20                        ; ragged.py:878:20
	s_and_b32 s5, s1, s5
	s_and_b32 s21, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s24, s34, s9
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s37, s19, 0xffff
	s_mov_b32 s36, s18
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s25, s8
	.loc	1 928 19                        ; ragged.py:928:19
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:40
	scratch_store_b64 off, v[4:5], off offset:92
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 930 28                        ; ragged.py:930:28
	s_lshl_b32 s68, s25, 5
	.loc	1 925 28                        ; ragged.py:925:28
	v_lshrrev_b32_e32 v30, 6, v0
	s_or_b32 s1, s68, 1
	s_or_b32 s18, s68, 2
	s_or_b32 s19, s68, 3
	s_or_b32 s30, s68, 4
	s_or_b32 s31, s68, 5
	s_or_b32 s38, s68, 6
	s_or_b32 s39, s68, 7
	s_or_b32 s40, s68, 8
	s_or_b32 s41, s68, 9
	s_or_b32 s42, s68, 10
	s_or_b32 s43, s68, 11
	s_or_b32 s44, s68, 12
	s_or_b32 s45, s68, 13
	s_or_b32 s46, s68, 14
	s_or_b32 s47, s68, 15
	s_or_b32 s48, s68, 16
	s_or_b32 s49, s68, 17
	s_or_b32 s69, s68, 18
	s_or_b32 s70, s68, 19
	s_or_b32 s71, s68, 20
	s_or_b32 s72, s68, 21
	s_or_b32 s73, s68, 22
	s_or_b32 s74, s68, 23
	s_or_b32 s75, s68, 24
	s_or_b32 s76, s68, 25
	s_or_b32 s77, s68, 26
	s_or_b32 s78, s68, 27
	s_or_b32 s79, s68, 28
	s_or_b32 s80, s68, 29
	s_or_b32 s81, s68, 30
	s_or_b32 s82, s68, 31
	s_cmp_lt_i32 s68, s6
	v_or_b32_e32 v32, s68, v30
	s_cselect_b32 s57, -1, 0
	s_cmp_lt_i32 s1, s6
	s_mul_i32 s68, s68, s33
	s_cselect_b32 s63, -1, 0
	s_cmp_lt_i32 s18, s6
	v_mad_u64_u32 v[30:31], null, v32, s7, v[3:4]
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s19, s6
	v_cmp_gt_i32_e64 s1, s6, v32
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s30, s6
	v_add_nc_u32_e32 v123, s68, v2
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s31, s6
	.loc	1 928 19                        ; ragged.py:928:19
	v_lshl_add_u32 v112, s33, 2, v2
	s_cselect_b32 s64, -1, 0
	s_cmp_lt_i32 s38, s6
	v_lshl_add_u32 v113, s33, 3, v2
	s_cselect_b32 s62, -1, 0
	s_cmp_lt_i32 s39, s6
	v_add_nc_u32_e32 v112, s68, v112
	s_cselect_b32 s60, -1, 0
	s_cmp_lt_i32 s40, s6
	v_add_nc_u32_e32 v113, s68, v113
	s_cselect_b32 s61, -1, 0
	s_cmp_lt_i32 s41, s6
	v_add_nc_u32_e32 v131, s68, v11
	s_cselect_b32 s59, -1, 0
	s_cmp_lt_i32 s42, s6
	v_add_nc_u32_e32 v132, s68, v12
	s_cselect_b32 s58, -1, 0
	s_cmp_lt_i32 s43, s6
	v_lshl_add_u32 v122, s33, 4, v2
	s_cselect_b32 s56, -1, 0
	s_cmp_lt_i32 s44, s6
	v_add_nc_u32_e32 v133, s68, v13
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s45, s6
	v_add_nc_u32_e32 v134, s68, v14
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s46, s6
	v_add_nc_u32_e32 v122, s68, v122
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s47, s6
	v_add_nc_u32_e32 v135, s68, v15
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s48, s6
	v_add_nc_u32_e32 v136, s68, v16
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s49, s6
	v_add_nc_u32_e32 v137, s68, v17
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s69, s6
	v_add_nc_u32_e32 v138, s68, v18
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s70, s6
	v_add_nc_u32_e32 v139, s68, v19
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s71, s6
	v_add_nc_u32_e32 v140, s68, v20
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s72, s6
	v_add_nc_u32_e32 v141, s68, v21
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s73, s6
	v_add_nc_u32_e32 v142, s68, v22
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s74, s6
	v_add_nc_u32_e32 v143, s68, v23
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s75, s6
	v_add_nc_u32_e32 v144, s68, v24
	s_cselect_b32 s43, -1, 0
	s_cmp_lt_i32 s76, s6
	v_add_nc_u32_e32 v145, s68, v25
	s_cselect_b32 s42, -1, 0
	s_cmp_lt_i32 s77, s6
	v_add_nc_u32_e32 v146, s68, v26
	s_cselect_b32 s41, -1, 0
	s_cmp_lt_i32 s78, s6
	v_add_nc_u32_e32 v147, s68, v27
	s_cselect_b32 s40, -1, 0
	s_cmp_lt_i32 s79, s6
	v_add_nc_u32_e32 v148, s68, v28
	s_cselect_b32 s39, -1, 0
	s_cmp_lt_i32 s80, s6
	v_add_nc_u32_e32 v149, s68, v29
	s_cselect_b32 s38, -1, 0
	s_cmp_lt_i32 s81, s6
	.loc	1 944 34                        ; ragged.py:944:34
	s_mov_b32 s30, s22
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s82, s6
	s_mov_b32 s31, s23
	s_cselect_b32 s18, -1, 0
	s_and_b32 s1, s5, s1
	v_mov_b32_e32 v9, v159
	v_cndmask_b32_e64 v33, 0x80000000, v30, s1
	v_or_b32_e32 v30, 4, v32
	v_mov_b32_e32 v10, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v34, 0x80000000, v30, s1
	v_or_b32_e32 v30, 8, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v35, 0x80000000, v30, s1
	v_or_b32_e32 v30, 12, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v36, 0x80000000, v30, s1
	v_or_b32_e32 v30, 16, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v37, 0x80000000, v30, s1
	v_or_b32_e32 v30, 20, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v86, 0x80000000, v30, s1
	v_or_b32_e32 v30, 24, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	s_and_b32 s1, s5, s1
	v_cndmask_b32_e64 v87, 0x80000000, v30, s1
	v_or_b32_e32 v30, 28, v32
	.loc	1 928 19                        ; ragged.py:928:19
	v_lshl_add_u32 v32, s33, 1, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s1, s6, v30
	v_mad_u64_u32 v[30:31], null, v30, s7, v[3:4]
	scratch_load_b64 v[4:5], off, off offset:44 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v31, s33, v2
	v_add_nc_u32_e32 v32, s68, v32
	s_and_b32 s1, s5, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_add_nc_u32_e32 v31, s68, v31
	v_cndmask_b32_e64 v30, 0x80000000, v30, s1
	s_and_b32 s1, s0, s57
	v_cndmask_b32_e64 v123, 0x80000000, v123, s1
	s_and_b32 s1, s0, s63
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v31, 0x80000000, v31, s1
	s_and_b32 s1, s0, s65
	v_cndmask_b32_e64 v32, 0x80000000, v32, s1
	s_and_b32 s1, s0, s66
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, s68, v4
	scratch_load_b64 v[4:5], off, off offset:52 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v124, 0x80000000, v124, s1
	s_and_b32 s1, s0, s67
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v112, 0x80000000, v112, s1
	s_and_b32 s1, s0, s64
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s68, v4
	scratch_load_b64 v[4:5], off, off offset:60 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v125, 0x80000000, v125, s1
	s_and_b32 s1, s0, s62
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, s68, v4
	scratch_load_b64 v[4:5], off, off offset:68 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v126, 0x80000000, v126, s1
	s_and_b32 s1, s0, s60
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, s68, v4
	scratch_load_b64 v[4:5], off, off offset:76 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v127, 0x80000000, v127, s1
	s_and_b32 s1, s0, s61
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	s_and_b32 s1, s0, s59
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, s68, v4
	scratch_load_b64 v[4:5], off, off offset:84 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v128, 0x80000000, v128, s1
	s_and_b32 s1, s0, s58
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, s68, v4
	scratch_load_b64 v[4:5], off, off offset:92 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v129, 0x80000000, v129, s1
	s_and_b32 s1, s0, s56
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v130, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v130, 0x80000000, v130, s1
	s_and_b32 s1, s0, s55
	v_cndmask_b32_e64 v131, 0x80000000, v131, s1
	s_and_b32 s1, s0, s54
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	s_and_b32 s1, s0, s53
	v_cndmask_b32_e64 v133, 0x80000000, v133, s1
	s_and_b32 s1, s0, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v134, 0x80000000, v134, s1
	s_and_b32 s1, s0, s52
	v_cndmask_b32_e64 v122, 0x80000000, v122, s1
	s_and_b32 s1, s0, s50
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v135, 0x80000000, v135, s1
	s_and_b32 s1, s0, s49
	v_cndmask_b32_e64 v136, 0x80000000, v136, s1
	s_and_b32 s1, s0, s48
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v137, 0x80000000, v137, s1
	s_and_b32 s1, s0, s47
	v_cndmask_b32_e64 v138, 0x80000000, v138, s1
	s_and_b32 s1, s0, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v139, 0x80000000, v139, s1
	s_and_b32 s1, s0, s45
	v_cndmask_b32_e64 v140, 0x80000000, v140, s1
	s_and_b32 s1, s0, s44
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v141, 0x80000000, v141, s1
	s_and_b32 s1, s0, s43
	v_cndmask_b32_e64 v142, 0x80000000, v142, s1
	s_and_b32 s1, s0, s42
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v143, 0x80000000, v143, s1
	s_and_b32 s1, s0, s41
	v_cndmask_b32_e64 v144, 0x80000000, v144, s1
	s_and_b32 s1, s0, s40
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v145, 0x80000000, v145, s1
	s_and_b32 s1, s0, s39
	.loc	1 965 40                        ; ragged.py:965:40
	s_mov_b32 s39, s23
	v_cndmask_b32_e64 v146, 0x80000000, v146, s1
	s_and_b32 s1, s0, s38
	s_mov_b32 s38, s22
	v_cndmask_b32_e64 v147, 0x80000000, v147, s1
	s_and_b32 s1, s0, s19
	.loc	1 958 40                        ; ragged.py:958:40
	s_mov_b32 s19, s23
	v_cndmask_b32_e64 v148, 0x80000000, v148, s1
	s_and_b32 s1, s0, s18
	s_mov_b32 s18, s22
	v_cndmask_b32_e64 v149, 0x80000000, v149, s1
	.loc	1 943 34                        ; ragged.py:943:34
	s_clause 0x7
	buffer_load_u8 v33, v33, s[20:23], 0 offen
	buffer_load_u8 v34, v34, s[20:23], 0 offen
	buffer_load_u8 v35, v35, s[20:23], 0 offen
	buffer_load_u8 v37, v37, s[20:23], 0 offen
	buffer_load_u8 v86, v86, s[20:23], 0 offen
	buffer_load_u8 v87, v87, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	buffer_load_u8 v36, v36, s[20:23], 0 offen
	.loc	1 944 34                        ; ragged.py:944:34
	s_clause 0x1f
	buffer_load_u8 v214, v123, s[28:31], 0 offen
	buffer_load_u8 v215, v31, s[28:31], 0 offen
	buffer_load_u8 v216, v32, s[28:31], 0 offen
	buffer_load_u8 v196, v124, s[28:31], 0 offen
	buffer_load_u8 v218, v112, s[28:31], 0 offen
	buffer_load_u8 v219, v125, s[28:31], 0 offen
	buffer_load_u8 v220, v126, s[28:31], 0 offen
	buffer_load_u8 v197, v127, s[28:31], 0 offen
	buffer_load_u8 v221, v113, s[28:31], 0 offen
	buffer_load_u8 v222, v128, s[28:31], 0 offen
	buffer_load_u8 v223, v129, s[28:31], 0 offen
	buffer_load_u8 v200, v130, s[28:31], 0 offen
	buffer_load_u8 v224, v131, s[28:31], 0 offen
	buffer_load_u8 v225, v132, s[28:31], 0 offen
	buffer_load_u8 v226, v133, s[28:31], 0 offen
	buffer_load_u8 v204, v134, s[28:31], 0 offen
	buffer_load_u8 v228, v122, s[28:31], 0 offen
	buffer_load_u8 v229, v135, s[28:31], 0 offen
	buffer_load_u8 v230, v136, s[28:31], 0 offen
	buffer_load_u8 v207, v137, s[28:31], 0 offen
	buffer_load_u8 v231, v138, s[28:31], 0 offen
	buffer_load_u8 v232, v139, s[28:31], 0 offen
	buffer_load_u8 v233, v140, s[28:31], 0 offen
	buffer_load_u8 v211, v141, s[28:31], 0 offen
	buffer_load_u8 v234, v142, s[28:31], 0 offen
	buffer_load_u8 v235, v143, s[28:31], 0 offen
	buffer_load_u8 v236, v144, s[28:31], 0 offen
	buffer_load_u8 v213, v145, s[28:31], 0 offen
	buffer_load_u8 v237, v146, s[28:31], 0 offen
	buffer_load_u8 v238, v147, s[28:31], 0 offen
	buffer_load_u8 v239, v148, s[28:31], 0 offen
	buffer_load_u8 v217, v149, s[28:31], 0 offen
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 966 25                        ; ragged.py:966:25
	s_add_i32 s1, s25, s24
	.loc	1 943 34                        ; ragged.py:943:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v109, v33
	s_waitcnt vmcnt(38)
	ds_store_b8 v109, v34 offset:256
	s_waitcnt vmcnt(37)
	ds_store_b8 v109, v35 offset:512
	s_waitcnt vmcnt(36)
	ds_store_b8 v109, v37 offset:1024
	s_waitcnt vmcnt(35)
	ds_store_b8 v109, v86 offset:1280
	s_waitcnt vmcnt(32)
	ds_store_b8 v110, v36
	ds_store_b8 v109, v87 offset:1536
	ds_store_b8 v111, v30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 31                        ; ragged.py:945:31
	scratch_load_b32 v1, off, off offset:8  ; 4-byte Folded Reload
	ds_load_u8 v159, v107 offset:208
	ds_load_u8 v30, v107 offset:320
	ds_load_u8 v31, v107 offset:256
	ds_load_u8 v147, v107 offset:336
	ds_load_u8 v148, v107 offset:272
	ds_load_u8 v132, v107 offset:352
	ds_load_u8 v133, v107 offset:288
	ds_load_u8 v122, v107 offset:368
	ds_load_u8 v123, v107 offset:304
	ds_load_u8 v160, v107 offset:144
	ds_load_u8 v138, v107 offset:224
	ds_load_u8 v139, v107 offset:160
	ds_load_u8 v128, v107 offset:240
	ds_load_u8 v129, v107 offset:176
	ds_load_u8 v242, v107 offset:1168
	ds_load_u8 v198, v107 offset:1184
	ds_load_u8 v244, v107 offset:1040
	ds_load_u8 v202, v107 offset:1056
	ds_load_u8 v246, v107 offset:1424
	ds_load_u8 v205, v107 offset:1440
	ds_load_u8 v248, v107 offset:1296
	ds_load_u8 v209, v107 offset:1312
	ds_load_u8 v243, v107 offset:1680
	ds_load_u8 v199, v107 offset:1696
	ds_load_u8 v245, v107 offset:1552
	ds_load_u8 v203, v107 offset:1568
	ds_load_u8 v247, v107 offset:1936
	ds_load_u8 v206, v107 offset:1952
	ds_load_u8 v249, v107 offset:1808
	ds_load_u8 v210, v107 offset:1824
	.loc	1 966 25                        ; ragged.py:966:25
	s_mul_i32 s1, s1, s33
	.loc	1 945 31                        ; ragged.py:945:31
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v107 offset:448
	ds_load_u8 v32, v107 offset:384
	ds_load_u8 v152, v107 offset:464
	ds_load_u8 v154, v107 offset:400
	ds_load_u8 v134, v107 offset:480
	ds_load_u8 v135, v107 offset:416
	ds_load_u8 v124, v107 offset:496
	ds_load_u8 v125, v107 offset:432
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	ds_load_u8 v32, v107 offset:64
	ds_load_u8 v33, v107
	ds_load_u8 v157, v107 offset:80
	ds_load_u8 v136, v107 offset:96
	ds_load_u8 v126, v107 offset:112
	ds_load_u8 v158, v107 offset:16
	ds_load_u8 v137, v107 offset:32
	ds_load_u8 v127, v107 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v133, v135, v134, 0xc0c0004
	v_lshl_or_b32 v31, v31, 16, v30
	v_perm_b32 v135, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	v_perm_b32 v125, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v107 offset:192
	ds_load_u8 v34, v107 offset:128
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v134, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v124, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v33, 16, v32
	ds_load_u8 v32, v107 offset:832
	ds_load_u8 v33, v107 offset:768
	ds_load_u8 v161, v107 offset:848
	ds_load_u8 v162, v107 offset:784
	ds_load_u8 v141, v107 offset:864
	ds_load_u8 v142, v107 offset:800
	ds_load_u8 v130, v107 offset:880
	ds_load_u8 v131, v107 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v107 offset:960
	ds_load_u8 v34, v107 offset:896
	ds_load_u8 v164, v107 offset:976
	ds_load_u8 v166, v107 offset:912
	ds_load_u8 v143, v107 offset:992
	ds_load_u8 v144, v107 offset:928
	ds_load_u8 v35, v107 offset:1024
	ds_load_u8 v140, v107 offset:944
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v107 offset:576
	ds_load_u8 v36, v107 offset:512
	ds_load_u8 v184, v107 offset:592
	ds_load_u8 v185, v107 offset:528
	ds_load_u8 v163, v107 offset:608
	ds_load_u8 v165, v107 offset:544
	ds_load_u8 v145, v107 offset:624
	ds_load_u8 v146, v107 offset:560
	v_lshl_or_b32 v33, v33, 16, v32
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	ds_load_u8 v36, v107 offset:704
	ds_load_u8 v37, v107 offset:640
	ds_load_u8 v186, v107 offset:720
	ds_load_u8 v187, v107 offset:656
	ds_load_u8 v168, v107 offset:736
	ds_load_u8 v169, v107 offset:672
	ds_load_u8 v150, v107 offset:752
	ds_load_u8 v151, v107 offset:688
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v32, v36, 16, v34
	ds_load_u8 v34, v107 offset:1344
	ds_load_u8 v36, v107 offset:1280
	ds_load_u8 v149, v107 offset:1264
	ds_load_u8 v189, v107 offset:1360
	ds_load_u8 v172, v107 offset:1376
	ds_load_u8 v153, v107 offset:1392
	ds_load_u8 v37, v107 offset:1408
	ds_load_u8 v155, v107 offset:1328
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v34, v36, v34, 0xc0c0004
	ds_load_u8 v36, v107 offset:1472
	ds_load_u8 v191, v107 offset:1488
	ds_load_u8 v175, v107 offset:1504
	ds_load_u8 v8, v107 offset:1520
	ds_load_u8 v86, v107 offset:1536
	ds_load_u8 v167, v107 offset:1456
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v107 offset:1088
	ds_load_u8 v201, v107 offset:1104
	ds_load_u8 v188, v107 offset:1120
	ds_load_u8 v170, v107 offset:1136
	ds_load_u8 v87, v107 offset:1152
	ds_load_u8 v171, v107 offset:1072
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v37, v35, v37, 0xc0c0004
	ds_load_u8 v35, v107 offset:1216
	ds_load_u8 v208, v107 offset:1232
	ds_load_u8 v190, v107 offset:1248
	ds_load_u8 v173, v107 offset:1200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v87, v87, v35, 0xc0c0004
	v_lshl_or_b32 v35, v36, 16, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v34, v87, 16, v37
	ds_load_u8 v36, v107 offset:1792
	ds_load_u8 v37, v107 offset:1856
	ds_load_u8 v212, v107 offset:1872
	ds_load_u8 v192, v107 offset:1888
	ds_load_u8 v174, v107 offset:1904
	ds_load_u8 v87, v107 offset:1920
	ds_load_u8 v176, v107 offset:1840
	ds_load_u8 v177, v107 offset:1776
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v36, v37, 0xc0c0004
	ds_load_u8 v37, v107 offset:1984
	ds_load_u8 v227, v107 offset:2000
	ds_load_u8 v193, v107 offset:2016
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v87, v37, 0xc0c0004
	ds_load_u8 v87, v107 offset:1600
	ds_load_u8 v240, v107 offset:1616
	ds_load_u8 v194, v107 offset:1632
	ds_load_u8 v180, v107 offset:1648
	ds_load_u8 v112, v107 offset:1664
	ds_load_u8 v182, v107 offset:1584
	v_lshl_or_b32 v37, v37, 16, v36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v86, v86, v87, 0xc0c0004
	ds_load_u8 v87, v107 offset:1728
	ds_load_u8 v241, v107 offset:1744
	ds_load_u8 v195, v107 offset:1760
	ds_load_u8 v183, v107 offset:1712
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v87, v112, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v87, 16, v86
	s_waitcnt vmcnt(0)
	ds_load_u8 v181, v1
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v178, v1
	ds_load_u8 v179, v107 offset:1968
	.loc	1 944 34                        ; ragged.py:944:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:16 ; 4-byte Folded Reload
	ds_store_b8 v109, v214
	ds_store_b8 v109, v215 offset:256
	ds_store_b8 v109, v216 offset:512
	ds_store_b8 v109, v218 offset:1024
	ds_store_b8 v109, v219 offset:1280
	ds_store_b8 v109, v220 offset:1536
	ds_store_b8 v109, v221 offset:2048
	ds_store_b8 v109, v222 offset:2304
	ds_store_b8 v109, v223 offset:2560
	ds_store_b8 v109, v224 offset:3072
	ds_store_b8 v109, v225 offset:3328
	ds_store_b8 v109, v226 offset:3584
	ds_store_b8 v109, v228 offset:4096
	ds_store_b8 v109, v229 offset:4352
	ds_store_b8 v109, v230 offset:4608
	ds_store_b8 v109, v231 offset:5120
	ds_store_b8 v109, v232 offset:5376
	ds_store_b8 v109, v233 offset:5632
	ds_store_b8 v109, v234 offset:6144
	ds_store_b8 v109, v235 offset:6400
	ds_store_b8 v109, v236 offset:6656
	ds_store_b8 v109, v237 offset:7168
	ds_store_b8 v109, v238 offset:7424
	ds_store_b8 v109, v239 offset:7680
	ds_store_b8 v110, v196
	ds_store_b8 v111, v197
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v200
	scratch_load_b32 v1, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v204
	scratch_load_b32 v1, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v207
	scratch_load_b32 v1, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v211
	scratch_load_b32 v1, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v213
	scratch_load_b32 v1, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v1, v217
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 945 31                        ; ragged.py:945:31
	ds_load_u8 v86, v108 offset:1280
	ds_load_u8 v87, v108 offset:1024
	ds_load_u8 v112, v108 offset:1792
	ds_load_u8 v113, v108 offset:1536
	ds_load_u8 v200, v108 offset:1408
	ds_load_u8 v204, v108 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v113, v112, 0xc0c0004
	ds_load_u8 v112, v108 offset:256
	ds_load_u8 v113, v108
	ds_load_u8 v196, v108 offset:768
	ds_load_u8 v197, v108 offset:512
	ds_load_u8 v207, v108 offset:384
	ds_load_u8 v211, v108 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v197, v196, 0xc0c0004
	v_lshl_or_b32 v197, v87, 16, v86
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v196, v113, 16, v112
	ds_load_u8 v86, v108 offset:3328
	ds_load_u8 v87, v108 offset:3072
	ds_load_u8 v112, v108 offset:3840
	ds_load_u8 v113, v108 offset:3584
	ds_load_u8 v221, v108 offset:3456
	ds_load_u8 v222, v108 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v113, v112, 0xc0c0004
	ds_load_u8 v112, v108 offset:2304
	ds_load_u8 v113, v108 offset:2048
	ds_load_u8 v213, v108 offset:2816
	ds_load_u8 v214, v108 offset:2560
	ds_load_u8 v223, v108 offset:2432
	ds_load_u8 v224, v108 offset:2176
	v_lshl_or_b32 v237, v87, 16, v86
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v214, v213, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v236, v113, 16, v112
	ds_load_u8 v86, v108 offset:5376
	ds_load_u8 v87, v108 offset:5120
	ds_load_u8 v112, v108 offset:5888
	ds_load_u8 v113, v108 offset:5632
	ds_load_u8 v225, v108 offset:5504
	ds_load_u8 v226, v108 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v113, v112, 0xc0c0004
	ds_load_u8 v112, v108 offset:4352
	ds_load_u8 v113, v108 offset:4096
	ds_load_u8 v213, v108 offset:4864
	ds_load_u8 v214, v108 offset:4608
	ds_load_u8 v84, v108 offset:4480
	ds_load_u8 v98, v108 offset:4224
	v_lshl_or_b32 v239, v87, 16, v86
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v214, v213, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v98, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v238, v113, 16, v112
	ds_load_u8 v86, v108 offset:7424
	ds_load_u8 v87, v108 offset:7168
	ds_load_u8 v112, v108 offset:7936
	ds_load_u8 v113, v108 offset:7680
	ds_load_u8 v114, v108 offset:7552
	ds_load_u8 v115, v108 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v113, v112, 0xc0c0004
	ds_load_u8 v112, v108 offset:6400
	ds_load_u8 v113, v108 offset:6144
	ds_load_u8 v213, v108 offset:6912
	ds_load_u8 v214, v108 offset:6656
	ds_load_u8 v116, v108 offset:6528
	ds_load_u8 v117, v108 offset:6272
	v_lshl_or_b32 v251, v87, 16, v86
	v_perm_b32 v86, v204, v200, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v214, v213, 0xc0c0004
	v_dual_mov_b32 v220, s15 :: v_dual_mov_b32 v219, s14
	v_dual_mov_b32 v218, s13 :: v_dual_mov_b32 v217, s12
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v250, v113, 16, v112
	ds_load_u8 v87, v108 offset:1664
	ds_load_u8 v112, v108 offset:1920
	ds_load_u8 v113, v108 offset:640
	ds_load_u8 v200, v108 offset:896
	v_dual_mov_b32 v216, s11 :: v_dual_mov_b32 v215, s10
	v_dual_mov_b32 v214, s9 :: v_dual_mov_b32 v213, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[196:197], v[30:31], v[213:220] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[236:237], v[32:33], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v87, v112, 0xc0c0004
	v_perm_b32 v112, v211, v207, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v200, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[228:235], v[238:239], v[34:35], v[228:235] neg_lo:[1,1,0]
	v_lshl_or_b32 v253, v87, 16, v86
	v_perm_b32 v86, v222, v221, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v252, v113, 16, v112
	ds_load_u8 v87, v108 offset:3712
	ds_load_u8 v112, v108 offset:3968
	ds_load_u8 v113, v108 offset:2688
	ds_load_u8 v200, v108 offset:2944
	v_wmma_i32_16x16x16_iu4 v[228:235], v[250:251], v[36:37], v[228:235] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v118, v228
	v_cvt_f32_i32_e32 v119, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v120, v230
	v_cvt_f32_i32_e32 v1, v231
	v_cvt_f32_i32_e32 v4, v232
	v_cvt_f32_i32_e32 v5, v233
	v_cvt_f32_i32_e32 v6, v234
	v_cvt_f32_i32_e32 v7, v235
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[228:235], v[252:253], v[30:31], v[213:220] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v87, v87, v112, 0xc0c0004
	v_perm_b32 v112, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v113, v200, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v255, v87, 16, v86
	v_perm_b32 v86, v226, v225, 0xc0c0004
	v_lshl_or_b32 v254, v113, 16, v112
	ds_load_u8 v87, v108 offset:5760
	ds_load_u8 v112, v108 offset:6016
	v_wmma_i32_16x16x16_iu4 v[228:235], v[254:255], v[32:33], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v87, v112, 0xc0c0004
	ds_load_u8 v98, v108 offset:4736
	ds_load_u8 v112, v108 offset:4992
	v_lshl_or_b32 v87, v87, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v98, v98, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v86, v98, 16, v84
	v_perm_b32 v84, v115, v114, 0xc0c0004
	ds_load_u8 v98, v108 offset:7808
	ds_load_u8 v112, v108 offset:8064
	ds_load_u8 v113, v108 offset:6784
	ds_load_u8 v114, v108 offset:7040
	v_perm_b32 v115, v160, v159, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[228:235], v[86:87], v[34:35], v[228:235] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v98, v112, 0xc0c0004
	v_perm_b32 v112, v117, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v114, v113, v114, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v113, v98, 16, v84
	v_perm_b32 v98, v154, v152, 0xc0c0004
	v_lshl_or_b32 v112, v114, 16, v112
	v_perm_b32 v114, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[228:235], v[112:113], v[36:37], v[228:235] neg_lo:[1,1,0]
	v_perm_b32 v37, v148, v147, 0xc0c0004
	v_lshl_or_b32 v147, v115, 16, v114
	v_perm_b32 v114, v185, v184, 0xc0c0004
	v_perm_b32 v115, v187, v186, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v84, v228
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v148, v98, 16, v37
	v_perm_b32 v37, v162, v161, 0xc0c0004
	v_perm_b32 v98, v166, v164, 0xc0c0004
	v_lshl_or_b32 v157, v115, 16, v114
	v_perm_b32 v114, v244, v201, 0xc0c0004
	v_perm_b32 v115, v242, v208, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v31, v233
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v158, v98, 16, v37
	v_perm_b32 v37, v248, v189, 0xc0c0004
	v_perm_b32 v98, v246, v191, 0xc0c0004
	v_lshl_or_b32 v159, v115, 16, v114
	v_perm_b32 v114, v245, v240, 0xc0c0004
	v_perm_b32 v115, v243, v241, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v33, v235
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v160, v98, 16, v37
	v_perm_b32 v98, v247, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[221:228], v[196:197], v[147:148], v[213:220] neg_lo:[1,1,0]
	v_perm_b32 v37, v249, v212, 0xc0c0004
	v_lshl_or_b32 v161, v115, 16, v114
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v32, v234
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[221:228], v[236:237], v[157:158], v[221:228] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v35, v230
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v162, v98, 16, v37
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v36, v229
	v_cvt_f32_i32_e32 v34, v231
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[221:228], v[238:239], v[159:160], v[221:228] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v30, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[221:228], v[250:251], v[161:162], v[221:228] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v98, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v114, v222
	v_cvt_f32_i32_e32 v115, v223
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v116, v224
	v_cvt_f32_i32_e32 v117, v225
	v_cvt_f32_i32_e32 v154, v226
	v_cvt_f32_i32_e32 v164, v227
	v_cvt_f32_i32_e32 v166, v228
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[221:228], v[252:253], v[147:148], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[221:228], v[254:255], v[157:158], v[221:228] neg_lo:[1,1,0]
	v_lshl_or_b32 v158, v133, 16, v132
	v_lshl_or_b32 v157, v135, 16, v134
	v_perm_b32 v132, v142, v141, 0xc0c0004
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_perm_b32 v134, v165, v163, 0xc0c0004
	v_perm_b32 v135, v169, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[221:228], v[86:87], v[159:160], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v142, v133, 16, v132
	v_perm_b32 v132, v209, v172, 0xc0c0004
	v_lshl_or_b32 v141, v135, 16, v134
	v_perm_b32 v133, v205, v175, 0xc0c0004
	v_perm_b32 v134, v202, v188, 0xc0c0004
	v_perm_b32 v135, v198, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[221:228], v[112:113], v[161:162], v[221:228] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v144, v133, 16, v132
	v_perm_b32 v132, v210, v192, 0xc0c0004
	v_lshl_or_b32 v143, v135, 16, v134
	v_perm_b32 v133, v206, v193, 0xc0c0004
	v_perm_b32 v134, v203, v194, 0xc0c0004
	v_perm_b32 v135, v199, v195, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v147, v226
	v_cvt_f32_i32_e32 v148, v227
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v160, v133, 16, v132
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v152, v228
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v159, v135, 16, v134
	v_wmma_i32_16x16x16_iu4 v[132:139], v[196:197], v[157:158], v[213:220] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v161, v221
	v_cvt_f32_i32_e32 v162, v222
	v_cvt_f32_i32_e32 v184, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[236:237], v[141:142], v[132:139] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v185, v224
	v_cvt_f32_i32_e32 v37, v225
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[238:239], v[143:144], v[132:139] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[132:139], v[250:251], v[159:160], v[132:139] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v163, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v165, v133
	v_cvt_f32_i32_e32 v168, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v169, v135
	v_cvt_f32_i32_e32 v172, v136
	v_cvt_f32_i32_e32 v175, v137
	v_cvt_f32_i32_e32 v186, v138
	v_cvt_f32_i32_e32 v187, v139
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[132:139], v[252:253], v[157:158], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[132:139], v[254:255], v[141:142], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[86:87], v[143:144], v[132:139] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[132:139], v[112:113], v[159:160], v[132:139] neg_lo:[1,1,0]
	v_dual_mov_b32 v159, v9 :: v_dual_mov_b32 v160, v10
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v142, v133
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v133, v123, 16, v122
	v_perm_b32 v122, v146, v145, 0xc0c0004
	v_perm_b32 v123, v151, v150, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v141, v132
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v132, v125, 16, v124
	v_perm_b32 v124, v131, v130, 0xc0c0004
	v_perm_b32 v125, v140, v181, 0xc0c0004
	v_lshl_or_b32 v130, v123, 16, v122
	v_perm_b32 v123, v167, v8, 0xc0c0004
	.loc	1 965 40                        ; ragged.py:965:40
	scratch_load_b64 v[8:9], off, off       ; 8-byte Folded Reload
	.loc	1 945 31                        ; ragged.py:945:31
	v_perm_b32 v122, v155, v153, 0xc0c0004
	v_lshl_or_b32 v131, v125, 16, v124
	v_perm_b32 v124, v171, v170, 0xc0c0004
	v_perm_b32 v125, v173, v149, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v143, v134
	v_cvt_f32_i32_e32 v144, v135
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v135, v123, 16, v122
	v_perm_b32 v122, v182, v180, 0xc0c0004
	v_lshl_or_b32 v134, v125, 16, v124
	v_perm_b32 v123, v183, v177, 0xc0c0004
	v_perm_b32 v124, v176, v174, 0xc0c0004
	v_perm_b32 v125, v179, v178, 0xc0c0004
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v157, v136
	v_cvt_f32_i32_e32 v158, v137
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v136, v123, 16, v122
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v138, v138
	.loc	1 945 31                        ; ragged.py:945:31
	v_lshl_or_b32 v137, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[122:129], v[196:197], v[132:133], v[213:220] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[122:129], v[236:237], v[130:131], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[238:239], v[134:135], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[250:251], v[136:137], v[122:129] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v140, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v145, v123
	v_cvt_f32_i32_e32 v146, v124
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v149, v125
	v_cvt_f32_i32_e32 v150, v126
	v_cvt_f32_i32_e32 v151, v127
	v_cvt_f32_i32_e32 v153, v128
	v_cvt_f32_i32_e32 v155, v129
	.loc	1 945 31                        ; ragged.py:945:31
	v_wmma_i32_16x16x16_iu4 v[122:129], v[252:253], v[132:133], v[213:220] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[254:255], v[130:131], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[86:87], v[134:135], v[122:129] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[112:113], v[136:137], v[122:129] neg_lo:[1,1,0]
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v86, v122
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v122, v83, s34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v87, v123
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v123, v156, s34
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v112, v124
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v124, v159, s34
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v113, v125
	.loc	1 959 25                        ; ragged.py:959:25
	v_mul_lo_u32 v125, v160, s34
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v130, v126
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v122, s25, v122, 1
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v131, v127
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v123, s25, v123, 1
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v132, v128
	.loc	1 958 40                        ; ragged.py:958:40
	v_add_lshl_u32 v124, s25, v124, 1
	v_cndmask_b32_e64 v122, 0x80000000, v122, s4
	v_add_lshl_u32 v125, s25, v125, 1
	v_cndmask_b32_e64 v123, 0x80000000, v123, s3
	.loc	1 956 27                        ; ragged.py:956:27
	v_cvt_f32_i32_e32 v133, v129
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e64 v124, 0x80000000, v124, s2
	.loc	1 972 17                        ; ragged.py:972:17
	s_add_i32 s25, s25, 1
	.loc	1 958 40                        ; ragged.py:958:40
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 928 19                        ; ragged.py:928:19
	s_cmp_lg_u32 s25, s34
	.loc	1 965 40                        ; ragged.py:965:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v126, v8, s1, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	buffer_load_u16 v126, v126, s[36:39], 0 offen
	.loc	1 958 40                        ; ragged.py:958:40
	s_clause 0x3
	buffer_load_u16 v122, v122, s[16:19], 0 offen
	buffer_load_u16 v134, v123, s[16:19], 0 offen
	buffer_load_u16 v135, v124, s[16:19], 0 offen
	buffer_load_u16 v136, v125, s[16:19], 0 offen
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 965 40                        ; ragged.py:965:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v123, 16, v126
	.loc	1 958 40                        ; ragged.py:958:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v137, 16, v122
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v1, v1, v137
	.loc	1 970 21                        ; ragged.py:970:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v8, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[122:125], v121
	ds_load_b128 v[126:129], v121 offset:16
	.loc	1 971 17                        ; ragged.py:971:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v104, v1, v125 :: v_dual_lshlrev_b32 v1, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v98, v98, v1
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v90, v98, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v98, v114, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v89, v98, v123 :: v_dual_mul_f32 v98, v115, v1
	v_fmac_f32_e32 v88, v98, v124
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v98, v116, v1
	v_mul_f32_e32 v118, v118, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v85, v98, v125 :: v_dual_lshlrev_b32 v98, 16, v135
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v4, v4, v137 :: v_dual_fmac_f32 v81, v118, v122
	v_mul_f32_e32 v118, v119, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v114, v163, v98
	.loc	1 971 17                        ; ragged.py:971:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v103, v4, v126 :: v_dual_mul_f32 v4, v5, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v5, v31, v137 :: v_dual_fmac_f32 v106, v118, v123
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v69, v114, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v114, v165, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v102, v4, v127
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v6, v137
	v_mul_f32_e32 v6, v32, v137
	v_mul_f32_e32 v118, v120, v137
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v68, v114, v123
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v114, v168, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v101, v4, v128 :: v_dual_mul_f32 v4, v7, v137
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v7, v33, v137
	v_mul_f32_e32 v33, v157, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v67, v114, v124 :: v_dual_mul_f32 v114, v169, v98
	v_fmac_f32_e32 v100, v4, v129
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v117, v1
	v_dual_mul_f32 v32, v148, v1 :: v_dual_fmac_f32 v105, v118, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v66, v114, v125
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v31, v147, v1 :: v_dual_fmac_f32 v82, v4, v126
	v_mul_f32_e32 v4, v154, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v80, v4, v127
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v164, v1
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v79, v4, v128 :: v_dual_mul_f32 v4, v166, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v4, v129
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v172, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v65, v4, v126 :: v_dual_lshlrev_b32 v114, 16, v136
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v115, v140, v114
	v_mul_f32_e32 v4, v175, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v53, v115, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v115, v145, v114 :: v_dual_fmac_f32 v64, v4, v127
	v_mul_f32_e32 v4, v186, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v52, v115, v123 :: v_dual_mul_f32 v115, v146, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v63, v4, v128 :: v_dual_mul_f32 v4, v187, v98
	v_fmac_f32_e32 v51, v115, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v115, v149, v114 :: v_dual_fmac_f32 v62, v4, v129
	v_mul_f32_e32 v4, v150, v114
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v50, v115, v125 :: v_dual_fmac_f32 v49, v4, v126
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v151, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v48, v4, v127
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v153, v114
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v47, v4, v128 :: v_dual_mul_f32 v4, v155, v114
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v46, v4, v129
	.loc	1 970 21                        ; ragged.py:970:21
	ds_load_b128 v[122:125], v121 offset:512
	ds_load_b128 v[126:129], v121 offset:528
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v84, v137
	v_mul_f32_e32 v84, v131, v114
	.loc	1 971 17                        ; ragged.py:971:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v4, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v36, v137
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v36, v139, v98 :: v_dual_fmac_f32 v93, v5, v127
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v92, v6, v128 :: v_dual_fmac_f32 v91, v7, v129
	v_dual_fmac_f32 v97, v4, v123 :: v_dual_mul_f32 v4, v35, v137
	.loc	1 963 21                        ; ragged.py:963:21
	v_dual_mul_f32 v35, v138, v98 :: v_dual_fmac_f32 v72, v31, v127
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v71, v32, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v57, v33, v126 :: v_dual_fmac_f32 v96, v4, v124
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v34, v137
	v_dual_mul_f32 v34, v158, v98 :: v_dual_fmac_f32 v55, v35, v128
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v54, v36, v129
	v_fmac_f32_e32 v44, v84, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v4, v125
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v161, v1
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v56, v34, v127 :: v_dual_fmac_f32 v77, v4, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v162, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v76, v4, v123
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v184, v1
	.loc	1 971 17                        ; ragged.py:971:17
	v_dual_fmac_f32 v75, v4, v124 :: v_dual_mul_f32 v4, v185, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v4, v125
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v141, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v61, v4, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v142, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v60, v4, v123
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v143, v98
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v59, v4, v124
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v144, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v58, v4, v125
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v86, v114
	v_mul_f32_e32 v86, v132, v114
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v45, v4, v122
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v87, v114
	v_mul_f32_e32 v87, v133, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v39, v86, v128
	v_fmac_f32_e32 v43, v4, v123
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v112, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v38, v87, v129
	v_fmac_f32_e32 v42, v4, v124
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v113, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v41, v4, v125
	.loc	1 963 21                        ; ragged.py:963:21
	v_mul_f32_e32 v4, v30, v137
	v_mul_f32_e32 v30, v37, v1
	v_mul_f32_e32 v1, v152, v1
	v_mul_f32_e32 v37, v130, v114
	.loc	1 971 17                        ; ragged.py:971:17
	v_fmac_f32_e32 v94, v4, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v73, v30, v126 :: v_dual_fmac_f32 v70, v1, v129
	v_fmac_f32_e32 v40, v37, v126
	.loc	1 928 19                        ; ragged.py:928:19
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_and_b32_e32 v1, 0xf0, v0
.LBB0_4:                                ; %._crit_edge
	.loc	1 974 9 is_stmt 1               ; ragged.py:974:9
	v_bfe_u32 v21, v81, 16, 1
	v_bfe_u32 v22, v106, 16, 1
	v_cmp_o_f32_e64 s19, v81, v81
	v_bfe_u32 v24, v105, 16, 1
	v_cmp_o_f32_e64 s20, v106, v106
	v_add3_u32 v23, v81, v21, 0x7fff
	v_add3_u32 v22, v106, v22, 0x7fff
	v_cmp_o_f32_e64 s21, v105, v105
	v_add3_u32 v24, v105, v24, 0x7fff
	v_bfe_u32 v25, v103, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v104, 16, 1
	v_bfe_u32 v26, v102, 16, 1
	v_cmp_o_f32_e64 s19, v104, v104
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s20
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s21
	v_add3_u32 v23, v104, v23, 0x7fff
	v_add3_u32 v25, v103, v25, 0x7fff
	v_cmp_o_f32_e64 s20, v103, v103
	v_add3_u32 v26, v102, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v102, v102
	v_cndmask_b16 v24.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v101, 16, 1
	v_bfe_u32 v27, v100, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s20
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s21
	v_bfe_u32 v26, v99, 16, 1
	v_add3_u32 v23, v101, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v101, v101
	v_add3_u32 v27, v100, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v100, v100
	v_bfe_u32 v28, v97, 16, 1
	v_add3_u32 v26, v99, v26, 0x7fff
	v_cmp_o_f32_e64 s21, v99, v99
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cndmask_b16 v23.h, 0x7fff, v27.h, s20
	v_bfe_u32 v27, v96, 16, 1
	v_bfe_u32 v29, v95, 16, 1
	v_add3_u32 v28, v97, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v97, v97
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s21
	v_add3_u32 v27, v96, v27, 0x7fff
	v_cmp_o_f32_e64 s20, v96, v96
	v_add3_u32 v29, v95, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v95, v95
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s19
	v_bfe_u32 v28, v94, 16, 1
	v_bfe_u32 v30, v93, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s20
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s21
	v_bfe_u32 v29, v92, 16, 1
	v_add3_u32 v28, v94, v28, 0x7fff
	v_cmp_o_f32_e64 s19, v94, v94
	v_add3_u32 v30, v93, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v93, v93
	v_bfe_u32 v31, v91, 16, 1
	v_add3_u32 v29, v92, v29, 0x7fff
	v_cmp_o_f32_e64 s21, v92, v92
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s19
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s20
	v_bfe_u32 v30, v90, 16, 1
	v_bfe_u32 v32, v89, 16, 1
	v_add3_u32 v31, v91, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v91, v91
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s21
	v_add3_u32 v30, v90, v30, 0x7fff
	v_cmp_o_f32_e64 s20, v90, v90
	v_add3_u32 v32, v89, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v89, v89
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s19
	v_bfe_u32 v31, v88, 16, 1
	v_bfe_u32 v33, v85, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s20
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s21
	v_bfe_u32 v32, v82, 16, 1
	v_add3_u32 v31, v88, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v88, v88
	v_add3_u32 v33, v85, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v85, v85
	v_bfe_u32 v34, v80, 16, 1
	v_add3_u32 v32, v82, v32, 0x7fff
	v_cmp_o_f32_e64 s21, v82, v82
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s19
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s20
	v_bfe_u32 v33, v79, 16, 1
	v_bfe_u32 v35, v78, 16, 1
	v_add3_u32 v34, v80, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v80, v80
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s21
	v_add3_u32 v33, v79, v33, 0x7fff
	v_cmp_o_f32_e64 s20, v79, v79
	v_add3_u32 v35, v78, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v78, v78
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s19
	v_bfe_u32 v34, v77, 16, 1
	v_bfe_u32 v36, v76, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s20
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s21
	v_bfe_u32 v35, v75, 16, 1
	v_add3_u32 v34, v77, v34, 0x7fff
	v_cmp_o_f32_e64 s19, v77, v77
	v_add3_u32 v36, v76, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v76, v76
	v_bfe_u32 v37, v74, 16, 1
	v_add3_u32 v35, v75, v35, 0x7fff
	v_cmp_o_f32_e64 s21, v75, v75
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s19
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s20
	v_bfe_u32 v36, v73, 16, 1
	v_bfe_u32 v75, v72, 16, 1
	v_add3_u32 v37, v74, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v74, v74
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s21
	v_add3_u32 v36, v73, v36, 0x7fff
	v_cmp_o_f32_e64 s20, v73, v73
	v_add3_u32 v73, v72, v75, 0x7fff
	v_cmp_o_f32_e64 s21, v72, v72
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s19
	v_bfe_u32 v37, v71, 16, 1
	v_bfe_u32 v72, v70, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s20
	v_cndmask_b16 v36.h, 0x7fff, v73.h, s21
	v_bfe_u32 v73, v69, 16, 1
	v_add3_u32 v37, v71, v37, 0x7fff
	v_cmp_o_f32_e64 s19, v71, v71
	v_add3_u32 v71, v70, v72, 0x7fff
	v_cmp_o_f32_e64 s20, v70, v70
	v_add3_u32 v70, v69, v73, 0x7fff
	v_cmp_o_f32_e64 s21, v69, v69
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s19
	v_bfe_u32 v69, v68, 16, 1
	v_cndmask_b16 v37.h, 0x7fff, v71.h, s20
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
	v_bfe_u32 v60, v59, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v62.h, s20
	v_bfe_u32 v62, v58, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v66.h, s19
	v_bfe_u32 v65, v57, 16, 1
	v_add3_u32 v60, v59, v60, 0x7fff
	v_cmp_o_f32_e64 s19, v59, v59
	v_add3_u32 v59, v58, v62, 0x7fff
	v_cmp_o_f32_e64 s20, v58, v58
	v_cndmask_b16 v61.h, 0x7fff, v61.h, s21
	v_add3_u32 v58, v57, v65, 0x7fff
	v_cmp_o_f32_e64 s21, v57, v57
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s19
	v_bfe_u32 v60, v56, 16, 1
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s20
	v_bfe_u32 v59, v55, 16, 1
	v_bfe_u32 v62, v54, 16, 1
	v_cmp_o_f32_e64 s19, v56, v56
	v_add3_u32 v60, v56, v60, 0x7fff
	v_cmp_o_f32_e64 s20, v55, v55
	v_add3_u32 v56, v55, v59, 0x7fff
	v_add3_u32 v55, v54, v62, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v58.h, s21
	v_cmp_o_f32_e64 s21, v54, v54
	v_bfe_u32 v54, v53, 16, 1
	v_cndmask_b16 v55.l, 0x7fff, v56.h, s20
	v_bfe_u32 v56, v52, 16, 1
	v_cndmask_b16 v58.h, 0x7fff, v60.h, s19
	v_bfe_u32 v59, v51, 16, 1
	v_add3_u32 v54, v53, v54, 0x7fff
	v_cmp_o_f32_e64 s19, v53, v53
	v_add3_u32 v53, v52, v56, 0x7fff
	v_cmp_o_f32_e64 s20, v52, v52
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s21
	v_add3_u32 v52, v51, v59, 0x7fff
	v_cmp_o_f32_e64 s21, v51, v51
	v_cndmask_b16 v51.l, 0x7fff, v54.h, s19
	v_bfe_u32 v54, v50, 16, 1
	v_cndmask_b16 v51.h, 0x7fff, v53.h, s20
	v_bfe_u32 v53, v49, 16, 1
	v_bfe_u32 v56, v48, 16, 1
	v_cmp_o_f32_e64 s19, v50, v50
	v_add3_u32 v54, v50, v54, 0x7fff
	v_cmp_o_f32_e64 s20, v49, v49
	v_add3_u32 v50, v49, v53, 0x7fff
	v_add3_u32 v49, v48, v56, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s21
	v_cmp_o_f32_e64 s21, v48, v48
	v_bfe_u32 v48, v47, 16, 1
	v_cndmask_b16 v49.l, 0x7fff, v50.h, s20
	v_bfe_u32 v50, v46, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s19
	v_bfe_u32 v53, v45, 16, 1
	v_add3_u32 v48, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v47, v47
	v_add3_u32 v47, v46, v50, 0x7fff
	v_cmp_o_f32_e64 s20, v46, v46
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s21
	v_add3_u32 v46, v45, v53, 0x7fff
	v_cmp_o_f32_e64 s21, v45, v45
	v_cndmask_b16 v45.l, 0x7fff, v48.h, s19
	v_bfe_u32 v48, v43, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s20
	v_bfe_u32 v47, v42, 16, 1
	v_bfe_u32 v50, v41, 16, 1
	v_cmp_o_f32_e64 s19, v43, v43
	v_add3_u32 v48, v43, v48, 0x7fff
	v_cmp_o_f32_e64 s20, v42, v42
	v_add3_u32 v43, v42, v47, 0x7fff
	v_add3_u32 v42, v41, v50, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s21
	v_cmp_o_f32_e64 s21, v41, v41
	v_bfe_u32 v41, v40, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s20
	v_bfe_u32 v43, v44, 16, 1
	v_cndmask_b16 v46.h, 0x7fff, v48.h, s19
	v_bfe_u32 v47, v39, 16, 1
	v_add3_u32 v41, v40, v41, 0x7fff
	v_cmp_o_f32_e64 s19, v40, v40
	v_add3_u32 v40, v44, v43, 0x7fff
	v_bfe_u32 v43, v38, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s21
	v_cmp_o_f32_e64 s20, v44, v44
	v_add3_u32 v44, v39, v47, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s21, v39, v39
	v_add3_u32 v39, v38, v43, 0x7fff
	v_cmp_o_f32_e64 s22, v38, v38
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s19
	v_cmp_eq_u32_e64 s19, 0, v0
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s20
	v_cndmask_b16 v0.l, 0x7fff, v44.h, s21
	v_cndmask_b16 v0.h, 0x7fff, v39.h, s22
	v_mov_b32_e32 v54, 0x5410
	v_cndmask_b32_e64 v48, v55, v57, s19
	v_cndmask_b32_e64 v50, v57, v55, s19
	v_cndmask_b32_e64 v53, v49, v51, s19
	v_cndmask_b32_e64 v49, v51, v49, s19
	v_cndmask_b32_e64 v51, v45, v52, s19
	v_cndmask_b32_e64 v45, v52, v45, s19
	v_cndmask_b32_e64 v52, v38, v46, s19
	v_cndmask_b32_e64 v38, v46, v38, s19
	v_cndmask_b32_e64 v46, v0, v42, s19
	v_mov_b32_e32 v55, 0x7632
	v_cndmask_b32_e64 v0, v42, v0, s19
	v_cndmask_b32_e64 v42, 0x1054, v54, s19
	.loc	1 877 36                        ; ragged.py:877:36
	v_lshrrev_b32_e32 v1, 1, v1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v20, v83, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v54, 0x3276, v55, s19
	v_cndmask_b32_e64 v39, v25, v22, s19
	v_lshl_or_b32 v42, v42, 8, v42
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v11, s35, v1
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, v22, v25, s19
	v_lshl_or_b32 v54, v54, 8, v54
	s_mov_b32 s20, 0x76543210
	v_and_b32_e32 v42, 0x540054, v42
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v16, 1, v11
	v_or_b32_e32 v15, 2, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_and_b32_e32 v54, 0x760076, v54
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s18, s33, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_lshl_or_b32 v42, v42, 4, v42
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
	v_cndmask_b32_e64 v40, v70, v63, s19
	v_cndmask_b32_e64 v43, v67, v64, s19
	v_cndmask_b32_e64 v47, v61, v58, s19
	v_permlanex16_b32 v22, v22, s20, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v54, v54, 4, v54
	v_and_b32_e32 v42, 0x5040504, v42
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s17, s33, v16
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v84, v11, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s16, s33, v15
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v85, v16, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v14, 3, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v21.h, 0
	v_cndmask_b32_e64 v37, v63, v70, s19
	v_cndmask_b32_e64 v41, v64, v67, s19
	v_cndmask_b32_e64 v44, v58, v61, s19
	v_permlanex16_b32 v23, v23, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v27, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v30, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v31, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v34, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v35, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v40, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v43, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v47, v47, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v50, v50, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v49, v49, s20, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v54, 0x7060706, v54
	v_permlanex16_b32 v45, v45, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v38, s20, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s20, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v55, v22, v39, v42
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
	v_cmp_gt_i32_e64 s15, s33, v14
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v22, v22, v39, v54
	v_perm_b32 v39, v23, v25, v42
	v_perm_b32 v23, v23, v25, v54
	v_perm_b32 v25, v26, v24, v42
	v_perm_b32 v24, v26, v24, v54
	v_perm_b32 v26, v27, v28, v42
	v_perm_b32 v27, v27, v28, v54
	v_perm_b32 v28, v30, v29, v42
	v_perm_b32 v29, v30, v29, v54
	v_perm_b32 v30, v31, v32, v42
	v_perm_b32 v31, v31, v32, v54
	v_perm_b32 v32, v34, v33, v42
	v_perm_b32 v33, v34, v33, v54
	v_perm_b32 v34, v35, v36, v42
	v_perm_b32 v35, v35, v36, v54
	v_perm_b32 v36, v40, v37, v42
	v_perm_b32 v37, v40, v37, v54
	v_perm_b32 v40, v43, v41, v42
	v_perm_b32 v41, v43, v41, v54
	v_perm_b32 v43, v47, v44, v42
	v_perm_b32 v44, v47, v44, v54
	v_perm_b32 v47, v50, v48, v42
	v_perm_b32 v48, v50, v48, v54
	v_perm_b32 v50, v49, v53, v42
	v_perm_b32 v49, v49, v53, v54
	v_perm_b32 v53, v45, v51, v42
	v_perm_b32 v45, v45, v51, v54
	v_perm_b32 v51, v38, v52, v42
	v_perm_b32 v42, v0, v46, v42
	v_perm_b32 v0, v0, v46, v54
	v_mov_b16_e32 v46.l, v55.h
	v_mov_b16_e32 v46.h, v21.h
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s26
	v_cndmask_b32_e64 v86, 0x80000000, v86, s19
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v10, 6, v11
	.loc	1 974 9                         ; ragged.py:974:9
	buffer_store_b16 v55, v84, s[20:23], 0 offen
	v_add_lshl_u32 v55, v14, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s14, s33, v13
	v_cmp_gt_i32_e64 s13, s33, v12
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v21.l, v22.h
	s_clause 0x1
	buffer_store_b16 v46, v85, s[20:23], 0 offen
	buffer_store_b16 v22, v86, s[20:23], 0 offen
	v_add_lshl_u32 v22, v13, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s15, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v9, 7, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s12, s33, v10
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v46, 0x80000000, v55, s19
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
	v_cmp_gt_i32_e64 s11, s33, v9
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v55, 0x80000000, v55, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s12, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v6, 0x82, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_perm_b32 v38, v38, v52, v54
	v_mov_b16_e32 v54.l, v39.h
	v_mov_b16_e32 v54.h, v21.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s10, s33, v8
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
	buffer_store_b16 v21, v46, s[20:23], 0 offen
	buffer_store_b16 v39, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v9, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s9, s33, v7
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v8, v20, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s11, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v5, 0x83, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s8, s33, v6
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
	v_add_lshl_u32 v39, v6, v20, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s9, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v3, 0x85, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s7, s33, v5
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s8, s4
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v2, 0x86, v11
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v57.l, v25.h
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s6, s33, v4
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v39, 0x80000000, v39, s19
	s_clause 0x1
	buffer_store_b16 v52, v21, s[20:23], 0 offen
	buffer_store_b16 v25, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v5, v20, 1
	.loc	1 877 18                        ; ragged.py:877:18
	v_or_b32_e32 v1, 0x87, v11
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s5, s33, v3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v4, v20, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v19, v156, s33
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s7, s4
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s1, s33, v2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v57, v23, s[20:23], 0 offen
	buffer_store_b16 v24, v39, s[20:23], 0 offen
	v_add_lshl_u32 v23, v3, v20, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s19, s6, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v56.l, v24.h
	v_add_lshl_u32 v24, v2, v20, 1
	.loc	1 879 20                        ; ragged.py:879:20
	v_cmp_gt_i32_e64 s0, s33, v1
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
	v_add_lshl_u32 v21, v11, v19, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s0, s4
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v22, v16, v19, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s18, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v58.l, v27.h
	s_clause 0x1
	buffer_store_b16 v59, v23, s[20:23], 0 offen
	buffer_store_b16 v27, v24, s[20:23], 0 offen
	v_add_lshl_u32 v23, v15, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s17, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v61.l, v28.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s16, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v58, v20, s[20:23], 0 offen
	buffer_store_b16 v28, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v14, v19, 1
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
	v_mov_b16_e32 v60.l, v29.h
	v_add_lshl_u32 v23, v10, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s13, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v63.l, v30.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s12, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v60, v20, s[20:23], 0 offen
	buffer_store_b16 v30, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v9, v19, 1
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
	v_mov_b16_e32 v62.l, v31.h
	v_add_lshl_u32 v23, v6, v19, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s9, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v65.l, v32.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s4, s8, s3
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v62, v20, s[20:23], 0 offen
	buffer_store_b16 v32, v21, s[20:23], 0 offen
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	v_add_lshl_u32 v20, v5, v19, 1
	v_add_lshl_u32 v21, v4, v19, 1
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v18, v159, s33
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
	v_mov_b16_e32 v64.l, v33.h
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
	v_mov_b16_e32 v67.l, v34.h
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	s_clause 0x1
	buffer_store_b16 v64, v20, s[20:23], 0 offen
	buffer_store_b16 v34, v21, s[20:23], 0 offen
	v_add_lshl_u32 v20, v11, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s0, s3
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v21, v16, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s18, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v66.l, v35.h
	s_clause 0x1
	buffer_store_b16 v67, v22, s[20:23], 0 offen
	buffer_store_b16 v35, v23, s[20:23], 0 offen
	v_add_lshl_u32 v22, v15, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s17, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v69.l, v36.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s16, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v66, v19, s[20:23], 0 offen
	buffer_store_b16 v36, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v14, v18, 1
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
	v_mov_b16_e32 v68.l, v37.h
	v_add_lshl_u32 v22, v10, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s13, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v71.l, v40.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s12, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v68, v19, s[20:23], 0 offen
	buffer_store_b16 v40, v20, s[20:23], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v19, v9, v18, 1
	v_add_lshl_u32 v20, v8, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s11, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v71, v21, s[20:23], 0 offen
	buffer_store_b16 v41, v22, s[20:23], 0 offen
	v_add_lshl_u32 v21, v7, v18, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s10, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v70.l, v41.h
	v_add_lshl_u32 v22, v6, v18, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s9, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v73.l, v43.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s8, s2
	.loc	1 975 13                        ; ragged.py:975:13
	v_mul_lo_u32 v17, v160, s33
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_clause 0x1
	buffer_store_b16 v70, v19, s[20:23], 0 offen
	buffer_store_b16 v43, v20, s[20:23], 0 offen
	v_add_lshl_u32 v19, v5, v18, 1
	v_add_lshl_u32 v20, v4, v18, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s7, s2
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x1
	buffer_store_b16 v73, v21, s[20:23], 0 offen
	buffer_store_b16 v44, v22, s[20:23], 0 offen
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
	v_add_lshl_u32 v11, v11, v17, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s3, s1, s2
	s_and_b32 s2, s0, s2
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v72.l, v44.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s18, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v74.l, v48.h
	v_mov_b16_e32 v75.l, v47.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_add_lshl_u32 v16, v16, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_add_lshl_u32 v15, v15, v17, 1
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s17, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	s_clause 0x5
	buffer_store_b16 v72, v19, s[20:23], 0 offen
	buffer_store_b16 v47, v20, s[20:23], 0 offen
	buffer_store_b16 v75, v21, s[20:23], 0 offen
	buffer_store_b16 v48, v22, s[20:23], 0 offen
	buffer_store_b16 v74, v18, s[20:23], 0 offen
	buffer_store_b16 v50, v11, s[20:23], 0 offen
	v_add_lshl_u32 v11, v14, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s16, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v13, v13, v17, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s15, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v12, v12, v17, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s14, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v10, v10, v17, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s13, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v9, v9, v17, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s12, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v8, v8, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s11, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v7, v7, v17, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s10, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v6, v6, v17, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s9, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v5, v5, v17, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s8, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v4, v4, v17, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s7, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v3, v3, v17, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s6, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_add_lshl_u32 v2, v2, v17, 1
	v_add_lshl_u32 v1, v1, v17, 1
	v_mov_b16_e32 v76.l, v49.h
	v_mov_b16_e32 v77.l, v50.h
	v_mov_b16_e32 v78.l, v45.h
	v_mov_b16_e32 v79.l, v53.h
	v_mov_b16_e32 v80.l, v38.h
	v_mov_b16_e32 v81.l, v51.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 s2, s5, vcc_lo
	s_and_b32 s1, s1, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_mov_b16_e32 v83.l, v42.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 977 18                        ; ragged.py:977:18
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 974 9                         ; ragged.py:974:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	v_mov_b16_e32 v82.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v77, v16, s[20:23], 0 offen
	buffer_store_b16 v49, v15, s[20:23], 0 offen
	buffer_store_b16 v76, v11, s[20:23], 0 offen
	buffer_store_b16 v53, v13, s[20:23], 0 offen
	buffer_store_b16 v79, v12, s[20:23], 0 offen
	buffer_store_b16 v45, v10, s[20:23], 0 offen
	buffer_store_b16 v78, v9, s[20:23], 0 offen
	buffer_store_b16 v51, v8, s[20:23], 0 offen
	buffer_store_b16 v81, v7, s[20:23], 0 offen
	buffer_store_b16 v38, v6, s[20:23], 0 offen
	buffer_store_b16 v80, v5, s[20:23], 0 offen
	buffer_store_b16 v42, v4, s[20:23], 0 offen
	buffer_store_b16 v83, v3, s[20:23], 0 offen
	buffer_store_b16 v0, v2, s[20:23], 0 offen
	buffer_store_b16 v82, v1, s[20:23], 0 offen
	.loc	1 837 5                         ; ragged.py:837:5
	s_endpgm
.Ltmp3:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 104
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
		.amdhsa_next_free_sgpr 83
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 83
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 104
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15220
; TotalNumSgprs: 85
; NumVgprs: 256
; ScratchSize: 104
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 85
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 104
    .sgpr_count:     85
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_bfloat16_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 25
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
