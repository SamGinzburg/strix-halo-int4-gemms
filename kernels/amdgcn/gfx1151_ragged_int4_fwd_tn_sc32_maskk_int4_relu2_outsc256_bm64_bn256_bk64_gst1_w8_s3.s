	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s45, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v0
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s45, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s45, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[42:43], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[40:41], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s2, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[2:3]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v25, 15, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v26, 0xf0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s46, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s47, s[0:1], 0x58
	s_load_b32 s48, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v10, s45, 8, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[42:43], v[1:2]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[2:3], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[1:2]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[42:43], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[5:6]
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[7:8]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1153 29 is_stmt 1             ; ragged.py:1153:29
	s_mul_i32 s3, s47, s33
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[40:41], v[7:8]
	v_dual_mov_b32 v105, 0 :: v_dual_lshlrev_b32 v8, 2, v26
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v13, 1, v0
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v5, 32, v5
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v1, s34, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v15, 28, v13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[11:12], null, s3, s7, v[10:11]
	v_add3_u32 v5, 0, v8, v5
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v2, 16, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v101, v5, v15
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[13:14], null, s33, 3, v[11:12]
	v_mad_u64_u32 v[14:15], null, s33, 5, v[11:12]
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_lshrrev_b32_e32 v7, 1, v0
	v_mad_u64_u32 v[15:16], null, s33, 6, v[11:12]
	v_mad_u64_u32 v[16:17], null, s33, 7, v[11:12]
	v_mad_u64_u32 v[17:18], null, s33, 9, v[11:12]
	v_mad_u64_u32 v[18:19], null, s33, 10, v[11:12]
	v_mad_u64_u32 v[19:20], null, s33, 11, v[11:12]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v32, v1, s44
	v_mul_lo_u32 v33, v2, s44
	v_mul_lo_u32 v34, v3, s44
	v_mul_lo_u32 v36, v4, s44
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v41, 0, v25
	v_or_b32_e32 v1, 0x300, v0
	v_or_b32_e32 v2, 0x3f0, v0
	v_or_b32_e32 v3, 0x700, v0
	v_or_b32_e32 v4, 0xb00, v0
	v_or_b32_e32 v6, 0xf00, v0
	v_dual_mov_b32 v96, 0 :: v_dual_and_b32 v7, 0x70, v7
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v8, 1, v26
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[20:21], null, s33, 12, v[11:12]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v31, 6, v0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[21:22], null, s33, 13, v[11:12]
	s_mov_b32 s8, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	v_mad_u64_u32 v[22:23], null, s33, 14, v[11:12]
	v_mad_u64_u32 v[23:24], null, s33, 15, v[11:12]
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v88, 0, v1
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v89, 0, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v90, 0, v3
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v91, 0, v4
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v92, 0, v6
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v94, v41, v7
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v103, 0, v8
	v_dual_mov_b32 v1, s8 :: v_dual_mov_b32 v2, s9
	v_or_b32_e32 v67, 12, v31
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v68, s33, v11
	v_lshl_add_u32 v69, s33, 1, v11
	v_lshl_add_u32 v71, s33, 2, v11
	v_lshl_add_u32 v76, s33, 3, v11
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v86, 0, v0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v3, s10 :: v_dual_mov_b32 v4, s11
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s5
	s_and_b32 s2, s2, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s49, s44, s7
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s3, s8, 4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 s4, s3, 1
	s_or_b32 s6, s3, 2
	s_or_b32 s55, s3, 3
	s_or_b32 s54, s3, 4
	s_or_b32 s53, s3, 5
	s_or_b32 s52, s3, 6
	s_or_b32 s51, s3, 7
	s_or_b32 s50, s3, 8
	s_or_b32 s15, s3, 9
	s_or_b32 s14, s3, 10
	s_or_b32 s13, s3, 11
	s_or_b32 s12, s3, 12
	s_or_b32 s11, s3, 13
	s_or_b32 s10, s3, 14
	s_or_b32 s9, s3, 15
	v_or_b32_e32 v111, s3, v31
	s_cmp_lt_i32 s3, s47
	s_mul_i32 s5, s3, s33
	v_or_b32_e32 v112, s3, v67
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s4, s47
	v_add_nc_u32_e32 v113, s5, v11
	v_add_nc_u32_e32 v114, s5, v68
	v_add_nc_u32_e32 v115, s5, v69
	v_add_nc_u32_e32 v116, s5, v13
	v_add_nc_u32_e32 v117, s5, v71
	v_add_nc_u32_e32 v118, s5, v14
	v_add_nc_u32_e32 v119, s5, v15
	v_add_nc_u32_e32 v120, s5, v16
	v_add_nc_u32_e32 v121, s5, v76
	v_add_nc_u32_e32 v122, s5, v17
	v_add_nc_u32_e32 v123, s5, v18
	v_add_nc_u32_e32 v124, s5, v19
	v_add_nc_u32_e32 v125, s5, v20
	v_add_nc_u32_e32 v126, s5, v21
	v_add_nc_u32_e32 v127, s5, v22
	v_add_nc_u32_e32 v128, s5, v23
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s6, s47
	v_or_b32_e32 v129, 4, v111
	v_or_b32_e32 v130, 8, v111
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s55, s47
	v_mad_u64_u32 v[109:110], null, v111, s48, v[9:10]
	v_cndmask_b32_e64 v131, 0x80000000, v113, s3
	s_cselect_b32 s3, -1, 0
	s_cmp_lt_i32 s54, s47
	v_cmp_gt_i32_e64 s4, s47, v111
	v_mad_u64_u32 v[110:111], null, v112, s48, v[9:10]
	v_cmp_gt_i32_e64 s6, s47, v112
	v_cndmask_b32_e64 v115, 0x80000000, v115, s7
	v_mad_u64_u32 v[111:112], null, v129, s48, v[9:10]
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s53, s47
	v_mad_u64_u32 v[112:113], null, v130, s48, v[9:10]
	v_cndmask_b32_e64 v113, 0x80000000, v117, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s52, s47
	v_cndmask_b32_e64 v118, 0x80000000, v118, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s51, s47
	v_cndmask_b32_e64 v119, 0x80000000, v119, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s50, s47
	v_cndmask_b32_e64 v120, 0x80000000, v120, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s15, s47
	v_cndmask_b32_e64 v121, 0x80000000, v121, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s14, s47
	v_cndmask_b32_e64 v122, 0x80000000, v122, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s13, s47
	v_cndmask_b32_e64 v123, 0x80000000, v123, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s12, s47
	v_cndmask_b32_e64 v124, 0x80000000, v124, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s11, s47
	v_cndmask_b32_e64 v116, 0x80000000, v116, s3
	v_cmp_gt_i32_e64 s3, s47, v129
	v_cndmask_b32_e64 v125, 0x80000000, v125, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s10, s47
	v_cndmask_b32_e64 v114, 0x80000000, v114, s5
	v_cmp_gt_i32_e64 s5, s47, v130
	v_cndmask_b32_e64 v126, 0x80000000, v126, s7
	s_cselect_b32 s7, -1, 0
	s_cmp_lt_i32 s9, s47
	v_cndmask_b32_e64 v127, 0x80000000, v127, s7
	s_cselect_b32 s7, -1, 0
	s_and_b32 s3, s46, s3
	s_and_b32 s4, s46, s4
	v_cndmask_b32_e64 v111, 0x80000000, v111, s3
	s_and_b32 s3, s46, s5
	v_cndmask_b32_e64 v109, 0x80000000, v109, s4
	v_cndmask_b32_e64 v112, 0x80000000, v112, s3
	s_and_b32 s3, s46, s6
	v_cndmask_b32_e64 v128, 0x80000000, v128, s7
	v_cndmask_b32_e64 v110, 0x80000000, v110, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x4
	buffer_load_u8 v117, v131, s[28:31], 0 offen
	buffer_load_u8 v114, v114, s[28:31], 0 offen
	buffer_load_u8 v115, v115, s[28:31], 0 offen
	buffer_load_u8 v126, v126, s[28:31], 0 offen
	buffer_load_u8 v127, v127, s[28:31], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v109, v109, s[24:27], 0 offen
	buffer_load_u8 v111, v111, s[24:27], 0 offen
	buffer_load_u8 v112, v112, s[24:27], 0 offen
	buffer_load_u8 v110, v110, s[24:27], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xa
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v116, v116, s[28:31], 0 offen
	buffer_load_u8 v118, v118, s[28:31], 0 offen
	buffer_load_u8 v119, v119, s[28:31], 0 offen
	buffer_load_u8 v120, v120, s[28:31], 0 offen
	buffer_load_u8 v121, v121, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v113, v113, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s8, s49
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(14)
	ds_store_b8 v86, v109
	s_waitcnt vmcnt(13)
	ds_store_b8 v86, v111 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v86, v112 offset:512
	s_waitcnt vmcnt(11)
	ds_store_b8 v88, v110
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v109, v41 offset:320
	ds_load_u8 v110, v41 offset:256
	ds_load_u8 v111, v41 offset:336
	ds_load_u8 v112, v41 offset:272
	ds_load_u8 v129, v41 offset:352
	ds_load_u8 v130, v41 offset:288
	ds_load_u8 v131, v41 offset:368
	ds_load_u8 v132, v41 offset:304
	ds_load_u8 v133, v41 offset:448
	ds_load_u8 v134, v41 offset:384
	ds_load_u8 v135, v41 offset:464
	ds_load_u8 v136, v41 offset:400
	ds_load_u8 v137, v41 offset:480
	ds_load_u8 v138, v41 offset:416
	ds_load_u8 v139, v41 offset:496
	ds_load_u8 v140, v41 offset:432
	ds_load_u8 v141, v41 offset:64
	ds_load_u8 v142, v41
	ds_load_u8 v143, v41 offset:80
	ds_load_u8 v144, v41 offset:96
	ds_load_u8 v145, v41 offset:112
	ds_load_u8 v146, v41 offset:16
	ds_load_u8 v147, v41 offset:32
	ds_load_u8 v148, v41 offset:48
	ds_load_u8 v149, v41 offset:192
	ds_load_u8 v150, v41 offset:128
	ds_load_u8 v151, v41 offset:208
	ds_load_u8 v152, v41 offset:144
	ds_load_u8 v153, v41 offset:224
	ds_load_u8 v154, v41 offset:160
	ds_load_u8 v155, v41 offset:240
	ds_load_u8 v156, v41 offset:176
	ds_load_u8 v157, v41 offset:960
	ds_load_u8 v158, v41 offset:896
	ds_load_u8 v159, v41 offset:976
	ds_load_u8 v160, v41 offset:912
	ds_load_u8 v161, v41 offset:992
	ds_load_u8 v162, v41 offset:928
	ds_load_u8 v163, v89
	ds_load_u8 v164, v41 offset:944
	ds_load_u8 v165, v41 offset:832
	ds_load_u8 v166, v41 offset:768
	ds_load_u8 v167, v41 offset:848
	ds_load_u8 v168, v41 offset:784
	ds_load_u8 v169, v41 offset:864
	ds_load_u8 v170, v41 offset:800
	ds_load_u8 v171, v41 offset:880
	ds_load_u8 v172, v41 offset:816
	ds_load_u8 v173, v41 offset:704
	ds_load_u8 v174, v41 offset:640
	ds_load_u8 v175, v41 offset:720
	ds_load_u8 v176, v41 offset:656
	ds_load_u8 v177, v41 offset:736
	ds_load_u8 v178, v41 offset:672
	ds_load_u8 v179, v41 offset:752
	ds_load_u8 v180, v41 offset:688
	ds_load_u8 v181, v41 offset:576
	ds_load_u8 v182, v41 offset:512
	ds_load_u8 v183, v41 offset:592
	ds_load_u8 v184, v41 offset:528
	ds_load_u8 v185, v41 offset:608
	ds_load_u8 v186, v41 offset:544
	ds_load_u8 v187, v41 offset:624
	ds_load_u8 v188, v41 offset:560
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v86, v117
	ds_store_b8 v86, v114 offset:256
	ds_store_b8 v86, v115 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v86, v113 offset:1024
	ds_store_b8 v86, v118 offset:1280
	ds_store_b8 v86, v119 offset:1536
	ds_store_b8 v86, v121 offset:2048
	ds_store_b8 v86, v122 offset:2304
	ds_store_b8 v86, v123 offset:2560
	s_waitcnt vmcnt(0)
	ds_store_b8 v86, v125 offset:3072
	ds_store_b8 v86, v126 offset:3328
	ds_store_b8 v88, v116
	ds_store_b8 v90, v120
	ds_store_b8 v91, v124
	ds_store_b8 v86, v127 offset:3584
	ds_store_b8 v92, v128
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v113, v94 offset:1280
	ds_load_u8 v114, v94 offset:1024
	ds_load_u8 v115, v94 offset:1792
	ds_load_u8 v116, v94 offset:1536
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v94 offset:1920
	ds_load_u8 v118, v94 offset:1664
	ds_load_u8 v120, v94 offset:1408
	ds_load_u8 v122, v94 offset:1152
	v_perm_b32 v119, v142, v141, 0xc0c0004
	v_perm_b32 v121, v150, v149, 0xc0c0004
	v_perm_b32 v128, v158, v157, 0xc0c0004
	ds_load_u8 v141, v94 offset:3328
	ds_load_u8 v142, v94 offset:3072
	ds_load_u8 v149, v94 offset:3968
	ds_load_u8 v150, v94 offset:3712
	ds_load_u8 v157, v94 offset:3456
	ds_load_u8 v158, v94 offset:3200
	v_perm_b32 v117, v134, v133, 0xc0c0004
	v_perm_b32 v133, v182, v181, 0xc0c0004
	v_perm_b32 v134, v174, v173, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v112, v136, v135, 0xc0c0004
	v_perm_b32 v135, v146, v143, 0xc0c0004
	v_perm_b32 v136, v152, v151, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v94 offset:256
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v94
	ds_load_u8 v123, v94 offset:896
	ds_load_u8 v124, v94 offset:640
	ds_load_u8 v125, v94 offset:384
	ds_load_u8 v126, v94 offset:128
	v_perm_b32 v130, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v110, v118, v110, 0xc0c0004
	v_perm_b32 v137, v147, v144, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v120, v122, v120, 0xc0c0004
	v_perm_b32 v138, v154, v153, 0xc0c0004
	v_perm_b32 v143, v168, v167, 0xc0c0004
	v_perm_b32 v146, v160, v159, 0xc0c0004
	v_perm_b32 v151, v184, v183, 0xc0c0004
	v_perm_b32 v152, v176, v175, 0xc0c0004
	v_perm_b32 v144, v170, v169, 0xc0c0004
	v_perm_b32 v147, v162, v161, 0xc0c0004
	v_perm_b32 v153, v186, v185, 0xc0c0004
	v_perm_b32 v154, v178, v177, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v132, v140, v139, 0xc0c0004
	v_perm_b32 v139, v148, v145, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v116, v114, 0xc0c0004
	ds_load_u8 v116, v94 offset:768
	ds_load_u8 v127, v94 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v126, v125, 0xc0c0004
	v_perm_b32 v122, v124, v123, 0xc0c0004
	v_perm_b32 v123, v158, v157, 0xc0c0004
	v_lshl_or_b32 v126, v117, 16, v109
	v_lshl_or_b32 v125, v121, 16, v119
	v_lshl_or_b32 v158, v115, 16, v113
	v_perm_b32 v124, v150, v149, 0xc0c0004
	v_perm_b32 v140, v156, v155, 0xc0c0004
	v_perm_b32 v145, v188, v187, 0xc0c0004
	v_perm_b32 v148, v180, v179, 0xc0c0004
	v_perm_b32 v155, v172, v171, 0xc0c0004
	v_perm_b32 v156, v164, v163, 0xc0c0004
	v_lshl_or_b32 v159, v134, 16, v133
	v_lshl_or_b32 v164, v110, 16, v120
	v_lshl_or_b32 v163, v122, 16, v118
	v_lshl_or_b32 v170, v130, 16, v129
	v_lshl_or_b32 v169, v138, 16, v137
	v_lshl_or_b32 v168, v146, 16, v143
	v_lshl_or_b32 v167, v152, 16, v151
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v127, v116, 0xc0c0004
	v_perm_b32 v127, v166, v165, 0xc0c0004
	ds_load_u8 v142, v94 offset:3840
	ds_load_u8 v165, v94 offset:3584
	v_lshl_or_b32 v172, v147, 16, v144
	v_lshl_or_b32 v171, v154, 16, v153
	v_lshl_or_b32 v157, v116, 16, v114
	v_lshl_or_b32 v160, v128, 16, v127
	v_lshl_or_b32 v175, v148, 16, v145
	v_lshl_or_b32 v176, v156, 16, v155
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s33
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v165, v142, 0xc0c0004
	ds_load_u8 v165, v94 offset:2304
	ds_load_u8 v166, v94 offset:2048
	ds_load_u8 v173, v94 offset:2944
	ds_load_u8 v174, v94 offset:2688
	ds_load_u8 v181, v94 offset:2432
	ds_load_u8 v182, v94 offset:2176
	v_lshl_or_b32 v162, v142, 16, v141
	v_lshl_or_b32 v142, v112, 16, v111
	v_lshl_or_b32 v141, v136, 16, v135
	v_wmma_i32_16x16x16_iu4 v[109:116], v[157:158], v[125:126], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	ds_load_u8 v166, v94 offset:2816
	ds_load_u8 v189, v94 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v150, v174, v173, 0xc0c0004
	v_lshl_or_b32 v174, v132, 16, v131
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v182, v181, 0xc0c0004
	v_lshl_or_b32 v173, v140, 16, v139
	v_wmma_i32_16x16x16_iu4 v[133:140], v[163:164], v[141:142], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v189, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v161, v166, 16, v165
	v_lshl_or_b32 v166, v124, 16, v123
	v_lshl_or_b32 v165, v150, 16, v149
	v_wmma_i32_16x16x16_iu4 v[117:124], v[163:164], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[157:158], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[157:158], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[163:164], v[169:170], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[161:162], v[159:160], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[165:166], v[159:160], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[161:162], v[167:168], v[125:132] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[165:166], v[167:168], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[161:162], v[171:172], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[165:166], v[171:172], v[149:156] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v159, v109
	v_cvt_f32_i32_e32 v160, v110
	v_cvt_f32_i32_e32 v167, v111
	v_cvt_f32_i32_e32 v168, v112
	v_cvt_f32_i32_e32 v169, v113
	v_cvt_f32_i32_e32 v170, v114
	v_cvt_f32_i32_e32 v171, v115
	v_cvt_f32_i32_e32 v172, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[157:158], v[173:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[161:162], v[175:176], v[109:116] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v157, v109
	v_cvt_f32_i32_e32 v158, v110
	v_cvt_f32_i32_e32 v161, v111
	v_cvt_f32_i32_e32 v162, v112
	v_cvt_f32_i32_e32 v177, v113
	v_cvt_f32_i32_e32 v178, v114
	v_cvt_f32_i32_e32 v179, v115
	v_cvt_f32_i32_e32 v180, v116
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[163:164], v[173:174], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v163, s8, v32, 1
	v_add_lshl_u32 v164, s8, v33, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v173, v10, s3, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[109:116], v[165:166], v[175:176], v[109:116] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v165, s8, v34, 1
	v_add_lshl_u32 v166, s8, v36, 1
	v_cndmask_b32_e32 v163, 0x80000000, v163, vcc_lo
	v_cndmask_b32_e64 v164, 0x80000000, v164, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v165, 0x80000000, v165, s1
	v_cndmask_b32_e64 v166, 0x80000000, v166, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v173, v173, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v163, v163, s[36:39], 0 offen
	buffer_load_u16 v164, v164, s[36:39], 0 offen
	buffer_load_u16 v165, v165, s[36:39], 0 offen
	buffer_load_u16 v166, v166, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
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
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v164, 16, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v130, v130, v164 :: v_dual_lshlrev_b32 v163, 16, v163
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v172, v172, v163 :: v_dual_lshlrev_b32 v165, 16, v165
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v169, v169, v163 :: v_dual_lshlrev_b32 v166, 16, v166
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v173, 16, v173
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v159, v159, v163
	v_mul_f32_e32 v160, v160, v163
	v_mul_f32_e32 v167, v167, v163
	v_dual_mul_f32 v168, v168, v163 :: v_dual_mul_f32 v125, v125, v164
	v_mul_f32_e32 v126, v126, v164
	v_mul_f32_e32 v127, v127, v164
	v_dual_mul_f32 v128, v128, v164 :: v_dual_mul_f32 v141, v141, v165
	v_mul_f32_e32 v142, v142, v165
	v_mul_f32_e32 v143, v143, v165
	v_dual_mul_f32 v144, v144, v165 :: v_dual_mul_f32 v157, v157, v166
	v_mul_f32_e32 v158, v158, v166
	v_mul_f32_e32 v161, v161, v166
	v_mul_f32_e32 v162, v162, v166
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v101, v173
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v170, v170, v163
	v_dual_mul_f32 v171, v171, v163 :: v_dual_mul_f32 v132, v132, v164
	v_dual_mul_f32 v129, v129, v164 :: v_dual_mul_f32 v146, v146, v165
	v_dual_mul_f32 v131, v131, v164 :: v_dual_mul_f32 v148, v148, v165
	v_dual_mul_f32 v145, v145, v165 :: v_dual_mul_f32 v174, v178, v166
	v_dual_mul_f32 v147, v147, v165 :: v_dual_mul_f32 v176, v180, v166
	v_dual_mul_f32 v173, v177, v166 :: v_dual_mul_f32 v178, v118, v163
	v_dual_mul_f32 v175, v179, v166 :: v_dual_mul_f32 v180, v120, v163
	v_dual_mul_f32 v177, v117, v163 :: v_dual_mul_f32 v134, v134, v164
	v_dual_mul_f32 v179, v119, v163 :: v_dual_mul_f32 v136, v136, v164
	v_dual_mul_f32 v133, v133, v164 :: v_dual_mul_f32 v150, v150, v165
	v_dual_mul_f32 v135, v135, v164 :: v_dual_mul_f32 v152, v152, v165
	v_dual_mul_f32 v149, v149, v165 :: v_dual_mul_f32 v182, v122, v163
	v_dual_mul_f32 v151, v151, v165 :: v_dual_mul_f32 v138, v138, v164
	v_dual_mul_f32 v181, v121, v163 :: v_dual_mul_f32 v140, v140, v164
	v_dual_mul_f32 v183, v123, v163 :: v_dual_mul_f32 v154, v154, v165
	v_mul_f32_e32 v163, v124, v163
	v_dual_mul_f32 v137, v137, v164 :: v_dual_mul_f32 v156, v156, v165
	v_dual_mul_f32 v139, v139, v164 :: v_dual_mul_f32 v186, v113, v166
	v_dual_mul_f32 v153, v153, v165 :: v_dual_mul_f32 v184, v111, v166
	v_dual_mul_f32 v155, v155, v165 :: v_dual_mul_f32 v164, v109, v166
	v_mul_f32_e32 v165, v110, v166
	v_mul_f32_e32 v185, v112, v166
	v_mul_f32_e32 v187, v114, v166
	v_mul_f32_e32 v188, v115, v166
	v_mul_f32_e32 v166, v116, v166
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[109:112], v103
	ds_load_b128 v[113:116], v103 offset:16
	ds_load_b128 v[117:120], v103 offset:512
	ds_load_b128 v[121:124], v103 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v27, v159, v109 :: v_dual_fmac_f32 v108, v160, v110
	v_dual_fmac_f32 v107, v167, v111 :: v_dual_fmac_f32 v62, v142, v110
	v_fmac_f32_e32 v106, v168, v112
	v_dual_fmac_f32 v84, v125, v109 :: v_dual_fmac_f32 v83, v126, v110
	v_fmac_f32_e32 v60, v144, v112
	v_dual_fmac_f32 v82, v127, v111 :: v_dual_fmac_f32 v81, v128, v112
	v_dual_fmac_f32 v63, v141, v109 :: v_dual_fmac_f32 v46, v158, v110
	v_dual_fmac_f32 v61, v143, v111 :: v_dual_fmac_f32 v44, v162, v112
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v47, v157, v109 :: v_dual_fmac_f32 v104, v170, v114
	v_dual_fmac_f32 v45, v161, v111 :: v_dual_fmac_f32 v100, v172, v116
	v_dual_fmac_f32 v105, v169, v113 :: v_dual_fmac_f32 v102, v171, v115
	v_dual_fmac_f32 v80, v129, v113 :: v_dual_fmac_f32 v79, v130, v114
	v_dual_fmac_f32 v78, v131, v115 :: v_dual_fmac_f32 v77, v132, v116
	v_dual_fmac_f32 v59, v145, v113 :: v_dual_fmac_f32 v58, v146, v114
	v_dual_fmac_f32 v57, v147, v115 :: v_dual_fmac_f32 v56, v148, v116
	v_dual_fmac_f32 v43, v173, v113 :: v_dual_fmac_f32 v42, v174, v114
	v_dual_fmac_f32 v40, v175, v115 :: v_dual_fmac_f32 v39, v176, v116
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v99, v177, v117 :: v_dual_fmac_f32 v98, v178, v118
	v_dual_fmac_f32 v97, v179, v119 :: v_dual_fmac_f32 v96, v180, v120
	v_dual_fmac_f32 v75, v133, v117 :: v_dual_fmac_f32 v74, v134, v118
	v_dual_fmac_f32 v73, v135, v119 :: v_dual_fmac_f32 v72, v136, v120
	v_dual_fmac_f32 v55, v149, v117 :: v_dual_fmac_f32 v54, v150, v118
	v_dual_fmac_f32 v53, v151, v119 :: v_dual_fmac_f32 v52, v152, v120
	v_dual_fmac_f32 v38, v164, v117 :: v_dual_fmac_f32 v37, v165, v118
	v_dual_fmac_f32 v35, v184, v119 :: v_dual_fmac_f32 v30, v185, v120
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v95, v181, v121 :: v_dual_fmac_f32 v66, v138, v122
	v_dual_fmac_f32 v93, v182, v122 :: v_dual_fmac_f32 v70, v137, v121
	v_dual_fmac_f32 v87, v183, v123 :: v_dual_fmac_f32 v64, v140, v124
	v_dual_fmac_f32 v85, v163, v124 :: v_dual_fmac_f32 v50, v154, v122
	v_dual_fmac_f32 v65, v139, v123 :: v_dual_fmac_f32 v48, v156, v124
	v_dual_fmac_f32 v51, v153, v121 :: v_dual_fmac_f32 v28, v187, v122
	v_dual_fmac_f32 v49, v155, v123 :: v_dual_fmac_f32 v12, v166, v124
	v_dual_fmac_f32 v29, v186, v121 :: v_dual_fmac_f32 v24, v188, v123
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v5, v105, v105 :: v_dual_max_f32 v6, v104, v104
	v_dual_max_f32 v7, v102, v102 :: v_dual_max_f32 v8, v100, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v10, v99, v99 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v19, v84, v84 :: v_dual_max_f32 v20, v83, v83
	v_dual_max_f32 v23, v80, v80 :: v_dual_max_f32 v32, v77, v77
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v42, v42, v42
	v_dual_max_f32 v1, v27, v27 :: v_dual_max_f32 v2, v108, v108
	v_dual_max_f32 v3, v107, v107 :: v_dual_max_f32 v4, v106, v106
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v11, v98, v98
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, v97, v97
	v_dual_max_f32 v14, v96, v96 :: v_dual_max_f32 v15, v95, v95
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v16, v93, v93 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v17, v87, v87 :: v_dual_max_f32 v18, v85, v85
	v_dual_max_f32 v21, v82, v82 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v22, v81, v81
	v_dual_max_f32 v27, v79, v79 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v31, v78, v78 :: v_dual_max_f32 v36, v73, v73
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v34, v74, v74
	v_dual_max_f32 v33, v75, v75 :: v_dual_max_f32 v66, v66, v66
	v_dual_max_f32 v41, v72, v72 :: v_dual_max_f32 v62, v62, v62
	v_dual_max_f32 v67, v70, v70 :: v_dual_max_f32 v64, v64, v64
	v_dual_max_f32 v65, v65, v65 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v58, v58, v58
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v56, v56, v56
	v_dual_max_f32 v59, v59, v59 :: v_dual_max_f32 v54, v54, v54
	v_dual_max_f32 v57, v57, v57 :: v_dual_max_f32 v52, v52, v52
	v_dual_max_f32 v55, v55, v55 :: v_dual_max_f32 v50, v50, v50
	v_dual_max_f32 v53, v53, v53 :: v_dual_max_f32 v48, v48, v48
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v46, v46, v46
	v_dual_max_f32 v49, v49, v49 :: v_dual_max_f32 v44, v44, v44
	v_dual_max_f32 v97, 0, v47 :: v_dual_max_f32 v40, v40, v40
	v_dual_max_f32 v45, v45, v45 :: v_dual_max_f32 v38, v38, v38
	v_max_f32_e32 v43, v43, v43
	v_dual_max_f32 v101, 0, v42 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v12, v12, v12
	v_max_f32_e32 v29, v29, v29
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v36, 0, v36
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v78, 0, v66
	v_dual_max_f32 v41, 0, v41 :: v_dual_max_f32 v80, 0, v64
	v_dual_max_f32 v71, 0, v67 :: v_dual_max_f32 v82, 0, v62
	v_dual_max_f32 v79, 0, v65 :: v_dual_max_f32 v84, 0, v60
	v_dual_max_f32 v81, 0, v63 :: v_dual_max_f32 v86, 0, v58
	v_dual_max_f32 v83, 0, v61 :: v_dual_max_f32 v88, 0, v56
	v_dual_max_f32 v85, 0, v59 :: v_dual_max_f32 v90, 0, v54
	v_dual_max_f32 v87, 0, v57 :: v_dual_max_f32 v92, 0, v52
	v_dual_max_f32 v89, 0, v55 :: v_dual_max_f32 v94, 0, v50
	v_dual_max_f32 v91, 0, v53 :: v_dual_max_f32 v96, 0, v48
	v_dual_max_f32 v93, 0, v51 :: v_dual_max_f32 v98, 0, v46
	v_dual_max_f32 v45, 0, v45 :: v_dual_max_f32 v104, 0, v38
	v_dual_max_f32 v99, 0, v44 :: v_dual_max_f32 v106, 0, v35
	v_dual_max_f32 v102, 0, v40 :: v_dual_max_f32 v95, 0, v49
	v_dual_max_f32 v100, 0, v43 :: v_dual_max_f32 v105, 0, v37
	v_dual_max_f32 v110, 0, v24 :: v_dual_max_f32 v107, 0, v30
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v52, v4, v4
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v109, 0, v28 :: v_dual_mul_f32 v50, v2, v2
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v103, 0, v39
	v_max_f32_e32 v108, 0, v29
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v47, v1, v1 :: v_dual_mul_f32 v56, v6, v6
	v_dual_mul_f32 v51, v3, v3 :: v_dual_mul_f32 v60, v8, v8
	v_dual_mul_f32 v55, v5, v5 :: v_dual_mul_f32 v64, v11, v11
	v_dual_mul_f32 v59, v7, v7 :: v_dual_mul_f32 v68, v14, v14
	v_dual_mul_f32 v63, v10, v10 :: v_dual_mul_f32 v72, v15, v15
	v_dual_mul_f32 v67, v13, v13 :: v_dual_mul_f32 v74, v20, v20
	v_dual_mul_f32 v73, v16, v16 :: v_dual_mul_f32 v76, v17, v17
	v_dual_mul_f32 v77, v18, v18 :: v_dual_mul_f32 v70, v21, v21
	v_dual_mul_f32 v75, v19, v19 :: v_dual_mul_f32 v58, v33, v33
	v_dual_mul_f32 v69, v22, v22 :: v_dual_mul_f32 v66, v23, v23
	v_dual_mul_f32 v65, v27, v27 :: v_dual_mul_f32 v54, v36, v36
	v_dual_mul_f32 v62, v31, v31 :: v_dual_mul_f32 v61, v32, v32
	v_dual_mul_f32 v57, v34, v34 :: v_dual_mul_f32 v46, v79, v79
	v_dual_mul_f32 v53, v41, v41 :: v_dual_mul_f32 v48, v78, v78
	v_dual_mul_f32 v49, v71, v71 :: v_dual_mul_f32 v44, v80, v80
	v_dual_mul_f32 v43, v81, v81 :: v_dual_mul_f32 v42, v82, v82
	v_dual_mul_f32 v41, v83, v83 :: v_dual_mul_f32 v40, v84, v84
	v_dual_mul_f32 v39, v85, v85 :: v_dual_mul_f32 v38, v86, v86
	v_dual_mul_f32 v37, v87, v87 :: v_dual_mul_f32 v36, v88, v88
	v_dual_mul_f32 v35, v89, v89 :: v_dual_mul_f32 v34, v90, v90
	v_dual_mul_f32 v33, v91, v91 :: v_dual_mul_f32 v32, v92, v92
	v_dual_mul_f32 v31, v93, v93 :: v_dual_mul_f32 v30, v94, v94
	v_dual_mul_f32 v29, v95, v95 :: v_dual_mul_f32 v28, v96, v96
	v_dual_mul_f32 v27, v97, v97 :: v_dual_mul_f32 v24, v98, v98
	v_dual_mul_f32 v23, v45, v45 :: v_dual_mul_f32 v22, v99, v99
	v_dual_mul_f32 v21, v100, v100 :: v_dual_mul_f32 v20, v101, v101
	v_dual_mul_f32 v19, v102, v102 :: v_dual_mul_f32 v18, v103, v103
	v_dual_mul_f32 v17, v104, v104 :: v_dual_mul_f32 v16, v105, v105
	v_dual_mul_f32 v15, v106, v106 :: v_dual_mul_f32 v10, v107, v107
	v_dual_mul_f32 v8, v108, v108 :: v_dual_mul_f32 v7, v109, v109
	v_dual_mul_f32 v6, v110, v110 :: v_dual_mov_b32 v3, v9
	v_mul_f32_e32 v4, v12, v12
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v50, v50 :: v_dual_max_f32 v2, v47, v47
	v_max3_f32 v5, v52, v55, v56
	v_max3_f32 v9, v64, v67, v68
	v_max3_f32 v11, v72, v73, v76
	v_dual_max_f32 v12, v75, v75 :: v_dual_max_f32 v1, v2, v1
	v_max_f32_e32 v2, v74, v74
	v_max3_f32 v45, v57, v54, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v9, v9, v11, v77
	v_max_f32_e32 v11, v43, v43
	v_max3_f32 v1, v1, v51, v5
	v_max_f32_e32 v5, v42, v42
	v_max_f32_e32 v2, v12, v2
	v_max3_f32 v12, v69, v66, v65
	v_max3_f32 v71, v49, v48, v46
	v_max3_f32 v14, v62, v61, v58
	v_max_f32_e32 v5, v11, v5
	v_max3_f32 v11, v40, v39, v38
	v_max3_f32 v78, v34, v33, v32
	v_max3_f32 v79, v31, v30, v29
	v_max3_f32 v2, v2, v70, v12
	v_max3_f32 v12, v45, v71, v44
	v_max3_f32 v13, v59, v60, v63
	v_max3_f32 v45, v37, v36, v35
	v_max3_f32 v5, v5, v41, v11
	v_max3_f32 v11, v78, v79, v28
	v_max3_f32 v2, v2, v14, v12
	s_mov_b32 s0, 0x76543210
	v_max_f32_e32 v78, v27, v27
	v_max3_f32 v1, v1, v13, v9
	v_max3_f32 v5, v5, v45, v11
	v_max3_f32 v13, v16, v15, v10
	v_max3_f32 v14, v8, v7, v6
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v45, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v71, v24, v24
	v_max3_f32 v11, v22, v21, v20
	v_max3_f32 v12, v19, v18, v17
	v_max3_f32 v13, v13, v14, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_max_f32 v14, v45, v45 :: v_dual_max_f32 v9, v78, v71
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v71, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v2, v14 :: v_dual_and_b32 v14, 0x80, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v45, v71, v71 :: v_dual_and_b32 v2, 4, v0
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v83, 3, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v5, v45
	v_max3_f32 v9, v9, v23, v11
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 8, v0
	v_lshl_add_u32 v85, v2, 6, 0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v9, v12, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v11, v11, v11
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v71, 3, v0
	v_lshlrev_b32_e32 v12, 4, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v1, v11 :: v_dual_and_b32 v13, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v71
	v_lshl_add_u32 v5, v71, 9, 0
	v_permlanex16_b32 v1, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_and_or_b32 v81, 0x680, v12, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v5, v2, 2, v5
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v12, 1, v14
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v82, v11, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v84, v81, v13
	v_lshl_add_u32 v5, v45, 4, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v9, v1 :: v_dual_add_nc_u32 v14, 0, v14
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v5, v12, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v85, v83, v84
	ds_store_b128 v1, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v78
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v78, v78, v78 :: v_dual_mov_b32 v9, v80
	v_dual_max_f32 v82, v81, v81 :: v_dual_mov_b32 v5, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v1, v78, v1 :: v_dual_max_f32 v78, v80, v80
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v1 :: v_dual_max_f32 v9, v78, v9
	v_lshlrev_b32_e32 v45, 3, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v80
	v_max_f32_e32 v5, v79, v5
	v_max_f32_e32 v79, v81, v81
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v5 :: v_dual_max_f32 v78, v82, v79
	v_mov_b32_e32 v79, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v1 :: v_dual_max_f32 v80, v82, v82
	v_mov_b32_e32 v82, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	v_max_f32_e32 v83, v78, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v9, v9, v79
	v_max_f32_e32 v79, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v78, v1, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v9
	v_lshrrev_b32_e32 v82, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v5, v79
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v80, v80
	v_max_f32_e32 v80, v9, v1
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v84, v83 :: v_dual_lshlrev_b32 v1, 5, v2
	v_lshl_add_u32 v2, v71, 4, 0
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_add3_u32 v1, v2, v1, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v71, 32, v9
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v84, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v81, v83, v5
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v5, v14, v82, v45
	ds_store_b128 v5, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v1
.Ltmp44:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v1, v78, v78 :: v_dual_max_f32 v80, v80, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v5, 0x2b8cbccc, v1 :: v_dual_max_f32 v80, 0x2b8cbccc, v80
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v14, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v84, vcc_lo, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v80
	v_rcp_f32_e32 v45, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[40:41], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v82, -v14, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v82, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s0, s34, v71
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v71, v79, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v84, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s34, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v71, 0x2b8cbccc, v71
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v88, -v14, v87, v84
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	v_fma_f32 v2, -v85, v86, 1.0
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v71
	v_fmac_f32_e32 v87, v88, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v88, 0x2b8cbccc, v1
	v_fmac_f32_e32 v86, v2, v86
	v_div_scale_f32 v2, s6, v80, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v14, v87, v84
	v_rcp_f32_e32 v14, v81
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[42:43], v[82:83]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v45, v87
	v_mul_f32_e32 v45, v2, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v87, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[40:41], v[82:83]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v82, -v81, v14, 1.0
	v_fma_f32 v5, -v85, v45, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[42:43], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[40:41], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v14, v82, v14
	v_div_scale_f32 v82, s7, v71, 0x40e00000, v71
	v_fmac_f32_e32 v45, v5, v86
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v83.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v89, -v84, v87, 1.0
	v_mul_f32_e32 v90, v82, v14
	v_fma_f32 v2, -v85, v45, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s8, v88, 0x40e00000, v88
	v_fma_f32 v78, -v81, v90, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v45, v2, v86, v45
	v_mul_f32_e32 v79, v89, v87
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v78, v14 :: v_dual_and_b32 v85, 0xffff0000, v5
	v_div_fixup_f32 v45, v45, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v84, v79, v89
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v81, v90, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v85, v85, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v79, v78, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v80, v14, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v81
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v78, -v84, v79, v89
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v45.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v14, v14, 0x40e00000, v71
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v83.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v71, v78, v87, v79
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v85, v85, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v14.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v81, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v71, v71, 0x40e00000, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[42:43], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v79
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, vcc_lo, v47, v85, v47
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[40:41], v[1:2]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v83.l, v71.h
	v_and_b32_e32 v2, 1, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v84, v82, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v45, v78, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v85, v85, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v78, 1, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v81, v84, v82
	v_div_scale_f32 v89, null, v85, v85, v52
	v_fma_f32 v45, -v79, v86, 1.0
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v80
	v_rcp_f32_e32 v83, v89
	v_div_scale_f32 v90, s8, v50, v85, v50
	v_fmac_f32_e32 v86, v45, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v84, v82
	v_div_scale_f32 v94, null, v85, v85, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v14, v14, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v90, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v87, v88, 1.0
	v_fma_f32 v93, -v89, v83, 1.0
	v_div_fmas_f32 v80, v81, v80, v84
	v_div_scale_f32 v84, s10, v52, v85, v52
	v_fma_f32 v82, -v79, v91, v90
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v51, v85, v51
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v85, v85, v56
	v_fmac_f32_e32 v91, v82, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v92, v88
	v_rcp_f32_e32 v82, v94
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v47, v80, v85, v47
	v_fma_f32 v79, -v79, v91, v90
	v_fma_f32 v80, -v87, v81, v92
	v_mul_f32_e32 v90, v84, v83
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v71, v78, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v91
	v_fmac_f32_e32 v81, v80, v88
	v_fma_f32 v96, -v94, v82, 1.0
	v_fma_f32 v80, -v89, v90, v84
	v_fma_f32 v91, -v93, v95, 1.0
	v_div_scale_f32 v86, s8, v55, v85, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v96, v82
	v_div_fixup_f32 v50, v79, v85, v50
	v_fma_f32 v79, -v87, v81, v92
	v_fmac_f32_e32 v90, v80, v83
	v_fmac_f32_e32 v95, v91, v95
	v_div_scale_f32 v91, null, v85, v85, v59
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v80, v86, v82
	v_div_scale_f32 v87, s11, v56, v85, v56
	v_div_fmas_f32 v79, v79, v88, v81
	v_fma_f32 v81, -v89, v90, v84
	v_rcp_f32_e32 v88, v91
	v_div_scale_f32 v92, null, v85, v85, v60
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v84, -v94, v80, v86
	v_mul_f32_e32 v89, v87, v95
	v_div_fmas_f32 v81, v81, v83, v90
	v_rcp_f32_e32 v83, v92
	v_div_fixup_f32 v51, v79, v85, v51
	v_fmac_f32_e32 v80, v84, v82
	v_fma_f32 v84, -v93, v89, v87
	v_fma_f32 v90, -v91, v88, 1.0
	v_div_fixup_f32 v52, v81, v85, v52
	v_div_scale_f32 v81, s9, v59, v85, v59
	v_fma_f32 v79, -v94, v80, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v84, v95 :: v_dual_fmac_f32 v88, v90, v88
	v_fma_f32 v84, -v92, v83, 1.0
	v_div_scale_f32 v86, null, v85, v85, v63
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v85, v85, v64
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v93, v89, v87
	v_dual_mul_f32 v82, v81, v88 :: v_dual_fmac_f32 v83, v84, v83
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v87, s8, v60, v85, v60
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v79, v85, v55
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v91, v82, v81
	v_mul_f32_e32 v93, v87, v83
	v_rcp_f32_e32 v95, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v86, v84, 1.0
	v_fmac_f32_e32 v82, v89, v88
	v_fma_f32 v79, -v92, v93, v87
	v_div_fixup_f32 v56, v80, v85, v56
	v_div_scale_f32 v80, s10, v63, v85, v63
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v81, -v91, v82, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v90, v95, 1.0
	v_fmac_f32_e32 v93, v79, v83
	v_div_scale_f32 v96, null, v85, v85, v68
	v_mul_f32_e32 v79, v80, v84
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v64, v85, v64
	v_div_fmas_f32 v81, v81, v88, v82
	v_fma_f32 v82, -v92, v93, v87
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v87, -v86, v79, v80
	v_mul_f32_e32 v88, v94, v95
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v83, v93
	v_rcp_f32_e32 v83, v96
	v_fmac_f32_e32 v79, v87, v84
	v_fma_f32 v87, -v90, v88, v94
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v60, v82, v85, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v86, v79, v80
	v_fmac_f32_e32 v88, v87, v95
	v_div_scale_f32 v87, s9, v68, v85, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v96, v83, 1.0
	v_div_fmas_f32 v79, v80, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v90, v88, v94
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v95, v88
	v_mul_f32_e32 v88, v87, v83
	v_div_scale_f32 v89, null, v85, v85, v67
	v_div_fixup_f32 v59, v81, v85, v59
	v_div_scale_f32 v86, null, v85, v85, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v90, null, v85, v85, v73
	v_rcp_f32_e32 v82, v86
	v_div_fixup_f32 v63, v79, v85, v63
	v_div_fixup_f32 v64, v80, v85, v64
	v_fma_f32 v80, -v96, v88, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v89, v91, 1.0
	v_fmac_f32_e32 v88, v80, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v86, v82, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, s8, v67, v85, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v93, null, v85, v85, v76
	v_mul_f32_e32 v81, v92, v91
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v89, v81, v92
	v_fmac_f32_e32 v81, v84, v91
	v_rcp_f32_e32 v84, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v89, v81, v92
	v_div_scale_f32 v89, s10, v72, v85, v72
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v91, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v92, -v90, v84, 1.0
	v_rcp_f32_e32 v81, v93
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v91, s8, v73, v85, v73
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v92, null, v85, v85, v77
	v_div_fixup_f32 v67, v79, v85, v67
	v_fma_f32 v79, -v96, v88, v87
	v_fma_f32 v87, -v86, v80, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v92
	v_mul_f32_e32 v94, v91, v84
	v_fma_f32 v96, -v93, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v79, v79, v83, v88
	v_fma_f32 v83, -v90, v94, v91
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v87, s9, v76, v85, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v92, v95, 1.0
	v_dual_fmac_f32 v94, v83, v84 :: v_dual_and_b32 v45, 0xffff0000, v2
	v_div_fixup_f32 v68, v79, v85, v68
	v_fma_f32 v79, -v86, v80, v89
	v_mul_f32_e32 v83, v87, v81
	v_fmac_f32_e32 v95, v88, v95
	v_div_scale_f32 v88, null, v78, v78, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s11, v77, v85, v77
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v94, v91
	v_fma_f32 v82, -v93, v83, v87
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v91, null, v78, v78, v74
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v94
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v72, v79, v85, v72
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v79, -v93, v83, v87
	v_div_fixup_f32 v73, v80, v85, v73
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v80, s8, v75, v78, v75
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v84, -v91, v82, 1.0
	v_div_scale_f32 v87, null, v78, v78, v70
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v92, v90, v86
	v_mul_f32_e32 v83, v80, v89
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v86, s9, v74, v78, v74
	v_div_scale_f32 v92, null, v78, v78, v69
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v82
	v_div_fmas_f32 v81, v81, v95, v90
	v_fma_f32 v90, -v88, v83, v80
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fixup_f32 v76, v79, v85, v76
	v_fma_f32 v79, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_fixup_f32 v77, v81, v85, v77
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v81, s10, v70, v78, v70
	v_div_scale_f32 v85, null, v78, v78, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_fmac_f32_e32 v93, v79, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_rcp_f32_e32 v88, v85
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v90, s11, v69, v78, v69
	v_div_fmas_f32 v80, v80, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	v_div_scale_f32 v94, null, v78, v78, v65
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v87, v79, v81
	v_mul_f32_e32 v89, v90, v95
	v_div_fmas_f32 v82, v83, v82, v93
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v91, -v85, v88, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v92, v89, v90
	v_div_fixup_f32 v74, v82, v78, v74
	v_div_fixup_f32 v75, v80, v78, v75
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s8, v66, v78, v66
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v94, v83, 1.0
	v_div_scale_f32 v86, null, v78, v78, v62
	v_fma_f32 v80, -v87, v79, v81
	v_mul_f32_e32 v81, v91, v88
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v65, v78, v65
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v92, v89, v90
	v_fma_f32 v84, -v85, v81, v91
	v_div_scale_f32 v90, null, v78, v78, v61
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v86, v82, 1.0
	v_fmac_f32_e32 v81, v84, v88
	v_rcp_f32_e32 v84, v90
	v_div_fmas_f32 v80, v80, v95, v89
	v_mul_f32_e32 v89, v87, v83
	v_div_fixup_f32 v70, v79, v78, v70
	v_fma_f32 v79, -v85, v81, v91
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v78, v78, v58
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v69, v80, v78, v69
	v_fma_f32 v80, -v94, v89, v87
	v_div_scale_f32 v85, s10, v62, v78, v62
	v_fma_f32 v91, -v90, v84, 1.0
	v_div_fmas_f32 v79, v79, v88, v81
	v_rcp_f32_e32 v81, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v80, v83 :: v_dual_mul_f32 v80, v85, v82
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v88, s8, v61, v78, v61
	v_div_scale_f32 v91, null, v78, v78, v57
	v_div_fixup_f32 v66, v79, v78, v66
	v_fma_f32 v79, -v94, v89, v87
	v_fma_f32 v87, -v86, v80, v85
	v_mul_f32_e32 v93, v88, v84
	v_rcp_f32_e32 v94, v91
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v79, v79, v83, v89
	v_fma_f32 v83, -v90, v93, v88
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v58, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v65, v79, v78, v65
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v86, v80, v85
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_div_scale_f32 v86, null, v78, v78, v54
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v85, s11, v57, v78, v57
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v90, v93, v88
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v78, v78, v53
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v90
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v62, v79, v78, v62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v88, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v61, v80, v78, v61
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v54, v78, v54
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v84, -v90, v82, 1.0
	v_div_scale_f32 v87, null, v78, v78, v49
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v78, v78, v44
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v91, v89, v85
	v_mul_f32_e32 v83, v80, v88
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s9, v53, v78, v53
	v_div_scale_f32 v91, null, v78, v78, v48
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v82
	v_div_fmas_f32 v81, v81, v94, v89
	v_fma_f32 v89, -v86, v83, v80
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v87, v84, 1.0
	v_div_fixup_f32 v58, v79, v78, v58
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v83, v89, v88
	v_div_fixup_f32 v57, v81, v78, v57
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v81, s10, v49, v78, v49
	v_div_scale_f32 v89, null, v78, v78, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v80, -v86, v83, v80
	v_fmac_f32_e32 v92, v79, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_rcp_f32_e32 v86, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v48, v78, v48
	v_div_fmas_f32 v80, v80, v88, v83
	v_fma_f32 v83, -v90, v92, v85
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v79, v81
	v_mul_f32_e32 v88, v93, v94
	v_div_fixup_f32 v54, v80, v78, v54
	v_div_fmas_f32 v82, v83, v82, v92
	v_rcp_f32_e32 v83, v95
	v_fma_f32 v90, -v89, v86, 1.0
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v88, v93
	v_div_fixup_f32 v53, v82, v78, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v46, v78, v46
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v71, v71, v43
	v_fma_f32 v80, -v87, v79, v81
	v_mul_f32_e32 v81, v90, v86
	v_fmac_f32_e32 v83, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v87, s9, v44, v78, v44
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v88, v93
	v_fma_f32 v84, -v89, v81, v90
	v_div_scale_f32 v91, null, v71, v71, v42
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v49, v79, v78, v49
	v_fmac_f32_e32 v81, v84, v86
	v_rcp_f32_e32 v84, v91
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_fmas_f32 v80, v80, v94, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v79, -v89, v81, v90
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v92, null, v71, v71, v41
	v_div_fixup_f32 v48, v80, v78, v48
	v_fma_f32 v80, -v95, v88, v87
	v_div_scale_f32 v89, s10, v43, v71, v43
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_fmas_f32 v79, v79, v86, v81
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v88, v80, v83
	v_mul_f32_e32 v80, v89, v82
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v86, s8, v42, v71, v42
	v_div_scale_f32 v90, null, v71, v71, v40
	v_div_fixup_f32 v46, v79, v78, v46
	v_fma_f32 v79, -v95, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_rcp_f32_e32 v94, v90
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v82
	v_div_fmas_f32 v79, v79, v83, v88
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v41, v71, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v79, v78, v44
	v_fma_f32 v88, -v90, v94, 1.0
	v_fma_f32 v78, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	v_mul_f32_e32 v79, v87, v81
	v_div_scale_f32 v85, null, v71, v71, v39
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v83, s11, v40, v71, v40
	v_div_fmas_f32 v78, v78, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v79, v87
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v71, v71, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v83, v94 :: v_dual_fmac_f32 v79, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v80, v80, v84, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v90, v88, v83
	v_div_fixup_f32 v43, v78, v71, v43
	v_fma_f32 v91, -v85, v86, 1.0
	v_fma_f32 v78, -v92, v79, v87
	v_div_fixup_f32 v42, v80, v71, v42
	v_fmac_f32_e32 v88, v84, v94
	v_div_scale_f32 v80, s8, v39, v71, v39
	v_fmac_f32_e32 v86, v91, v86
	v_fma_f32 v84, -v89, v82, 1.0
	v_div_scale_f32 v87, null, v71, v71, v37
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v88, v83
	v_mul_f32_e32 v81, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_rcp_f32_e32 v83, v87
	v_div_scale_f32 v84, s9, v38, v71, v38
	v_div_scale_f32 v90, null, v71, v71, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v82
	v_div_fmas_f32 v79, v79, v94, v88
	v_fma_f32 v88, -v85, v81, v80
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v83, 1.0
	v_div_fixup_f32 v41, v78, v71, v41
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v81, v88, v86
	v_div_scale_f32 v88, null, v71, v71, v35
	v_div_fixup_f32 v40, v79, v71, v40
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v79, s10, v37, v71, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v80, -v85, v81, v80
	v_fmac_f32_e32 v91, v78, v82
	v_rcp_f32_e32 v85, v88
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v78, v79, v83 :: v_dual_fmac_f32 v93, v92, v93
	v_div_scale_f32 v92, s11, v36, v71, v36
	v_div_fmas_f32 v80, v80, v86, v81
	v_fma_f32 v81, -v89, v91, v84
	v_div_scale_f32 v94, null, v71, v71, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v87, v78, v79
	v_mul_f32_e32 v86, v92, v93
	v_fma_f32 v89, -v88, v85, 1.0
	v_div_fmas_f32 v81, v81, v82, v91
	v_rcp_f32_e32 v82, v94
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v86, v92
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v35, v71, v35
	v_div_fixup_f32 v39, v80, v71, v39
	v_div_fixup_f32 v38, v81, v71, v38
	v_fma_f32 v79, -v87, v78, v79
	v_fmac_f32_e32 v86, v84, v93
	v_mul_f32_e32 v80, v89, v85
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v71, v71, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v34, v71, v34
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v86, v92
	v_fma_f32 v83, -v88, v80, v89
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v90, null, v71, v71, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v85
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v78, v71, v37
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v79, v79, v93, v86
	v_mul_f32_e32 v86, v87, v82
	v_fma_f32 v78, -v88, v80, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v36, v79, v71, v36
	v_fma_f32 v79, -v94, v86, v87
	v_div_scale_f32 v88, s10, v33, v71, v33
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_scale_f32 v91, null, v71, v71, v31
	v_div_fmas_f32 v78, v78, v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v79, v82 :: v_dual_fmac_f32 v83, v89, v83
	v_rcp_f32_e32 v80, v91
	v_div_scale_f32 v89, null, v71, v71, v30
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v85, s8, v32, v71, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v35, v78, v71, v35
	v_fma_f32 v78, -v94, v86, v87
	v_fma_f32 v87, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v86
	v_fmac_f32_e32 v79, v87, v81
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v31, v71, v31
	v_fma_f32 v87, -v89, v93, 1.0
	v_div_fixup_f32 v34, v78, v71, v34
	v_fma_f32 v78, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v82, v86, v80 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v71, v71, v29
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, s11, v30, v71, v30
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v71, v71, v28
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v90
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v89, v88, v84
	v_div_fixup_f32 v33, v78, v71, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v87, v85, 1.0
	v_fma_f32 v78, -v91, v82, v86
	v_div_fixup_f32 v32, v79, v71, v32
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v29, v71, v29
	v_fmac_f32_e32 v85, v92, v85
	v_fma_f32 v83, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v45, v45, v24
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v89, v88, v84
	v_mul_f32_e32 v82, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, null, v45, v45, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s9, v28, v71, v28
	v_div_fmas_f32 v80, v80, v93, v88
	v_rcp_f32_e32 v86, v83
	v_fma_f32 v88, -v87, v82, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v89, v84, v81
	v_div_fixup_f32 v31, v78, v71, v31
	v_div_fixup_f32 v30, v80, v71, v30
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v78, -v90, v89, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v93, null, v45, v45, v22
	v_fma_f32 v88, -v83, v86, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_div_scale_f32 v87, null, v45, v45, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v78, v81 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v78, s10, v27, v45, v27
	v_rcp_f32_e32 v88, v87
	v_fma_f32 v92, -v91, v80, 1.0
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v90, v89, v84
	v_mul_f32_e32 v84, v78, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v85, s8, v24, v45, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v92, -v83, v84, v78
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v95, v93
	v_div_fmas_f32 v81, v82, v81, v89
	v_mul_f32_e32 v94, v85, v80
	v_fmac_f32_e32 v84, v92, v86
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v23, v45, v23
	v_div_fixup_f32 v29, v79, v71, v29
	v_div_fixup_f32 v28, v81, v71, v28
	v_fma_f32 v71, -v83, v84, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v81, null, v45, v45, v21
	v_fma_f32 v82, -v91, v94, v85
	v_fma_f32 v79, -v93, v95, 1.0
	v_fma_f32 v78, -v87, v89, v90
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v80 :: v_dual_fmac_f32 v95, v79, v95
	v_fmac_f32_e32 v89, v78, v88
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v79, s9, v22, v45, v22
	v_div_fmas_f32 v71, v71, v86, v84
	v_fma_f32 v82, -v91, v94, v85
	v_div_scale_f32 v84, null, v45, v45, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v79, v95
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v71, v45, v27
	v_fma_f32 v85, -v81, v78, 1.0
	v_div_fmas_f32 v80, v82, v80, v94
	v_fma_f32 v82, -v87, v89, v90
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v93, v83, v79
	v_fmac_f32_e32 v78, v85, v78
	v_div_scale_f32 v85, s8, v21, v45, v21
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v95
	v_div_fmas_f32 v82, v82, v88, v89
	v_mul_f32_e32 v71, v85, v78
	v_div_fixup_f32 v24, v80, v45, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v84, v86, 1.0
	v_fma_f32 v79, -v93, v83, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v81, v71, v85
	v_div_fixup_f32 v23, v82, v45, v23
	v_div_scale_f32 v82, null, v45, v45, v19
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s10, v20, v45, v20
	v_div_fmas_f32 v79, v79, v95, v83
	v_fmac_f32_e32 v71, v87, v78
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v83, v80, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v79, v45, v22
	v_fma_f32 v79, -v81, v71, v85
	v_div_scale_f32 v87, null, v45, v45, v18
	v_fma_f32 v81, -v84, v83, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v79, v78, v71
	v_div_scale_f32 v78, null, v45, v45, v17
	v_fma_f32 v85, -v82, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v78
	v_div_scale_f32 v79, s8, v19, v45, v19
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v45, v45, v16
	v_div_fixup_f32 v21, v71, v45, v21
	v_fma_f32 v80, -v84, v83, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v78, v81, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v71, v89
	v_div_scale_f32 v71, s9, v18, v45, v18
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v45, v45, v15
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v82, v84, v79
	v_mul_f32_e32 v86, v71, v89
	v_div_scale_f32 v92, s10, v17, v45, v17
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v83, v88
	v_fma_f32 v83, -v87, v86, v71
	v_mul_f32_e32 v95, v92, v81
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v16, v45, v16
	v_div_fixup_f32 v20, v80, v45, v20
	v_fma_f32 v79, -v82, v84, v79
	v_fmac_f32_e32 v86, v83, v89
	v_fma_f32 v80, -v78, v95, v92
	v_mul_f32_e32 v82, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v87, v86, v71
	v_fmac_f32_e32 v95, v80, v81
	v_fma_f32 v80, -v85, v82, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s8, v15, v45, v15
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v78, -v78, v95, v92
	v_fmac_f32_e32 v82, v80, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v83, v94
	v_div_scale_f32 v84, null, v45, v45, v10
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v79, v45, v19
	v_div_fmas_f32 v71, v71, v89, v86
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v78, v78, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v80, v83
	v_div_fixup_f32 v18, v71, v45, v18
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v78, v45, v17
	v_div_fmas_f32 v81, v81, v91, v82
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v84, v86, 1.0
	v_div_scale_f32 v78, null, v45, v45, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v90, v80, v83
	v_div_fixup_f32 v16, v81, v45, v16
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, null, v45, v45, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v94, v80
	v_div_scale_f32 v82, vcc_lo, v10, v45, v10
	v_rcp_f32_e32 v80, v78
	v_rcp_f32_e32 v83, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v15, v71, v45, v15
	v_mul_f32_e32 v87, v82, v86
	v_div_scale_f32 v81, null, v45, v45, v6
	v_div_scale_f32 v88, null, v45, v45, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v84, v87, v82
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v78, v80, 1.0
	v_fma_f32 v89, -v79, v83, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v87, v91, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v71, v80
	v_div_scale_f32 v71, s8, v8, v45, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v92, -v81, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v88, v90, 1.0
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s11, v4, v45, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v7, v45, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v71, v80
	v_mul_f32_e32 v97, v94, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v95, v89, v83
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v82, v45, v10
	v_fma_f32 v91, -v78, v93, v71
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v79, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v91, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v78, v93, v71
	v_fma_f32 v78, -v88, v97, v94
	v_fma_f32 v79, -v79, v95, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v80, v93
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v97, v78, v90
	v_div_fmas_f32 v79, v79, v83, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v71, v45, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v97, v94
	v_div_fixup_f32 v7, v79, v45, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v6, v45, v6
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v92, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v91, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v78, -v81, v96, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v85, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v90, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v78, v45, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v43
	v_cvt_i32_f32_e32 v90, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v80, v45, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v80, v41
	v_cvt_i32_f32_e32 v98, v19
	v_cvt_i32_f32_e32 v10, v10
	v_and_b32_e32 v19, 15, v52
	v_and_b32_e32 v31, 15, v68
	v_and_b32_e32 v38, 15, v69
	v_and_b32_e32 v52, 15, v79
	v_and_b32_e32 v68, 15, v24
	v_and_b32_e32 v69, 15, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v23, 10, v0
	v_and_b32_e32 v24, 16, v0
	v_lshlrev_b32_e32 v79, 4, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v71, v73
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v76, v46
	v_cvt_i32_f32_e32 v81, v40
	v_cvt_i32_f32_e32 v99, v18
	v_cvt_i32_f32_e32 v6, v6
	v_and_b32_e32 v18, 15, v51
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v51, 15, v78
	v_and_b32_e32 v53, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v23, 0x1800, v23
	v_lshlrev_b32_e32 v80, 6, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v10, v79, v13
	v_lshlrev_b32_e32 v13, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v82, v39
	v_cvt_i32_f32_e32 v102, v15
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v23, 0, v23, v80
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v45
	v_and_b32_e32 v45, 15, v54
	v_and_b32_e32 v54, 15, v81
	v_and_b32_e32 v81, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v6, 0x1b00, v13, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v94, v27
	v_cvt_i32_f32_e32 v95, v22
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v77, v44
	v_cvt_i32_f32_e32 v86, v35
	v_cvt_i32_f32_e32 v88, v33
	v_cvt_i32_f32_e32 v89, v32
	v_cvt_i32_f32_e32 v100, v17
	v_cvt_i32_f32_e32 v101, v16
	v_cvt_i32_f32_e32 v97, v20
	v_and_b32_e32 v16, 15, v47
	v_and_b32_e32 v17, 15, v50
	v_and_b32_e32 v20, 15, v55
	v_and_b32_e32 v55, 15, v82
	v_and_b32_e32 v80, 15, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v23, v10, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v82, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v6, v26, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v92, v29
	v_cvt_i32_f32_e32 v93, v28
	v_and_b32_e32 v27, 15, v60
	v_and_b32_e32 v28, 15, v63
	v_and_b32_e32 v29, 15, v64
	v_and_b32_e32 v30, 15, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v84, v37
	v_cvt_i32_f32_e32 v85, v36
	v_cvt_i32_f32_e32 v96, v21
	v_and_b32_e32 v21, 15, v56
	v_and_b32_e32 v22, 15, v59
	v_and_b32_e32 v35, 15, v75
	v_and_b32_e32 v36, 15, v74
	v_and_b32_e32 v37, 15, v70
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v70, 15, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	v_and_b32_e32 v32, 15, v71
	v_and_b32_e32 v33, 15, v72
	v_and_b32_e32 v34, 15, v73
	v_and_b32_e32 v41, 15, v62
	v_and_b32_e32 v42, 15, v61
	v_and_b32_e32 v43, 15, v58
	v_and_b32_e32 v44, 15, v57
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v76
	v_and_b32_e32 v50, 15, v77
	v_and_b32_e32 v59, 15, v86
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_and_b32_e32 v77, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[15:18]
	ds_store_b128 v7, v[27:30] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v4
	ds_load_b128 v[15:18], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v66
	v_and_b32_e32 v40, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[35:38]
	ds_store_b128 v7, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v4
	ds_load_b128 v[35:38], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[51:54]
	ds_store_b128 v7, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[51:54], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[67:70]
	ds_store_b128 v7, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	ds_load_b128 v[67:70], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[19:22]
	ds_store_b128 v7, v[31:34] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[19:22], v4
	ds_load_b128 v[30:33], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_and_b32_e32 v48, 15, v48
	v_and_b32_e32 v56, 15, v83
	v_and_b32_e32 v57, 15, v84
	v_and_b32_e32 v58, 15, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[39:42]
	ds_store_b128 v7, v[47:50] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v4
	ds_load_b128 v[47:50], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v93
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	v_and_b32_e32 v74, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[55:58]
	ds_store_b128 v7, v[63:66] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v4
	ds_load_b128 v[63:66], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v79, 15, v8
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v25, 3, v25
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[71:74]
	ds_store_b128 v7, v[79:82] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[71:74], v4
	ds_load_b128 v[75:78], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s45, 7, v25
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v15, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v16, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v12
	v_lshl_or_b32 v13, v18, 4, v13
	v_lshl_or_b32 v16, v30, 4, v19
	v_lshl_or_b32 v17, v31, 4, v20
	v_lshl_or_b32 v18, v32, 4, v21
	v_lshl_or_b32 v19, v33, 4, v22
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v35, 4, v26
	v_lshl_or_b32 v21, v36, 4, v27
	v_lshl_or_b32 v22, v37, 4, v28
	v_lshl_or_b32 v23, v38, 4, v29
	v_lshl_or_b32 v26, v47, 4, v39
	v_lshl_or_b32 v27, v48, 4, v40
	v_lshl_or_b32 v28, v49, 4, v41
	v_lshl_or_b32 v29, v50, 4, v42
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v13.l
	v_and_b16 v2.l, 0xff, v15.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v63, 4, v55
	v_lshl_or_b32 v35, v64, 4, v56
	v_lshl_or_b32 v36, v65, 4, v57
	v_lshl_or_b32 v37, v66, 4, v58
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v29.l
	v_and_b16 v6.l, 0xff, v28.l
	v_lshlrev_b16 v6.h, 8, v27.l
	v_and_b16 v7.l, 0xff, v26.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v51, 4, v43
	v_lshl_or_b32 v31, v52, 4, v44
	v_lshl_or_b32 v32, v53, 4, v45
	v_lshl_or_b32 v33, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v75, 4, v71
	v_lshl_or_b32 v43, v76, 4, v72
	v_lshl_or_b32 v44, v77, 4, v73
	v_lshl_or_b32 v45, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v37.l
	v_and_b16 v6.l, 0xff, v36.l
	v_lshlrev_b16 v6.h, 8, v35.l
	v_and_b16 v7.l, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v67, 4, v59
	v_lshl_or_b32 v39, v68, 4, v60
	v_lshl_or_b32 v40, v69, 4, v61
	v_lshl_or_b32 v41, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	v_lshlrev_b16 v4.l, 8, v31.l
	v_and_b16 v4.h, 0xff, v30.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v6.l, 0xff, v44.l
	v_lshlrev_b16 v6.h, 8, v43.l
	v_and_b16 v7.l, 0xff, v42.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v41.l
	v_and_b16 v2.l, 0xff, v40.l
	v_lshlrev_b16 v4.l, 8, v39.l
	v_and_b16 v4.h, 0xff, v38.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v25
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v25
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s45, 1
	s_and_b32 vcc_lo, vcc_lo, s46
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_next_free_vgpr 190
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 190
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16136
; TotalNumSgprs: 58
; NumVgprs: 190
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 190
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     190
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
