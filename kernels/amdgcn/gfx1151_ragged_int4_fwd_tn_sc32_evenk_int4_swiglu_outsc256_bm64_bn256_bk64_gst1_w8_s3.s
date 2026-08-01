	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_dual_mov_b32 v124, v0 :: v_dual_mov_b32 v191, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_load_b128 s[12:15], s[0:1], 0x28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 63, v124
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	s_sub_i32 s5, s41, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s9, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s9
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s9, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s10, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s7, s2, 1
	s_sub_i32 s8, s3, s6
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_cselect_b32 s3, s8, s3
	s_add_i32 s7, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s11, s2, s10
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s41, s11, s10
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s9, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s6, s12, s4
	s_addc_u32 s7, s13, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s14, s4
	s_addc_u32 s7, s15, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, s2, s34, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s2
	v_add_nc_u32_e32 v0, s34, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	s_waitcnt lgkmcnt(0)
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[2:3]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow675
	s_load_b128 s[20:23], s[0:1], 0x40
	v_dual_mov_b32 v50, 0 :: v_dual_and_b32 v125, 15, v124
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v126, 0xf0, v124
	v_dual_mov_b32 v196, 0 :: v_dual_and_b32 v207, 0x80, v124
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v130, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v131, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s24, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v2, s0, s34, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_dual_mov_b32 v51, 0 :: v_dual_lshlrev_b32 v10, 5, v124
	v_add_co_u32 v4, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[8:9], s[0:1], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[2:3]
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v3, s34, v125
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[4:5]
	v_cmp_le_i64_e64 s3, s[38:39], v[8:9]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[4:5]
	v_cmp_gt_i64_e64 s7, s[36:37], v[8:9]
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_lshrrev_b32_e32 v4, 7, v207
	v_lshrrev_b32_e32 v9, 1, v124
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v8, 48, v3
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v39, 0 :: v_dual_lshlrev_b32 v0, 1, v124
	v_dual_mov_b32 v40, 0 :: v_dual_and_b32 v17, 0x70, v9
	v_dual_mov_b32 v192, 0 :: v_dual_lshlrev_b32 v9, 2, v126
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v10, 32, v10
	v_dual_mov_b32 v58, 0 :: v_dual_lshlrev_b32 v11, 1, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s4, s33, 1
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v7, 32, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v8, s40, v8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s4, s4, s24
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s24, s24, s8
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v14, 0xfe, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v6, 16, v3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s5, s40, s8
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v0, 28, v0
	v_add3_u32 v18, 0, v9, v10
	v_lshl_add_u32 v20, s24, 1, v11
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s6, s5, 1
	v_mul_lo_u32 v7, s40, v7
	s_or_b32 s6, s6, 1
	s_mul_i32 s5, s5, s33
	v_mul_lo_u32 v6, s40, v6
	v_mul_lo_u32 v3, s40, v3
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v11, 29, v20
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v8, 1, v8
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v0, v18, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s6, s33, s6
	s_lshl_b32 s7, s11, 8
	s_lshl_b32 s5, s5, 1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v2, 6, v124
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v9, s6, s7, v124
	v_add3_u32 v10, s5, s7, v124
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v7, 1, v7
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v0, 0
	scratch_store_b32 off, v8, off offset:136 ; 4-byte Folded Spill
	v_mul_lo_u32 v8, s33, v11
	s_lshl_b32 s6, s10, 8
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v5, 12, v2
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v9, s6, v9
	v_subrev_nc_u32_e32 v10, s6, v10
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v6, 1, v6
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v198, 1, v9
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v153, 1, v10
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v7, off offset:140
	scratch_store_b32 off, v6, off offset:144
	scratch_store_b32 off, v125, off offset:232
	scratch_store_b32 off, v3, off offset:148
	scratch_store_b32 off, v0, off
	v_mad_u64_u32 v[9:10], null, v5, s25, v[1:2]
	v_or_b32_e32 v3, 8, v2
	v_add3_u32 v5, v8, s7, v14
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v6, 25, v20
	v_or_b32_e32 v7, 4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[10:11], null, s25, v3, v[1:2]
	v_subrev_nc_u32_e32 v3, s6, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s33, v6
	v_mad_u64_u32 v[11:12], null, s25, v7, v[1:2]
	v_mad_u64_u32 v[12:13], null, s25, v2, v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v1, 1, v3
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v6, 21, v20
	v_add3_u32 v3, v5, s7, v14
	v_or_b32_e32 v5, 12, v4
	v_mov_b32_e32 v134, 0
	v_mul_lo_u32 v2, s33, v6
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v6, 17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s33, v5
	v_subrev_nc_u32_e32 v3, s6, v3
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v8, 13, v20
	v_mul_lo_u32 v6, s33, v6
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v201, 0
	v_add3_u32 v2, v2, s7, v14
	v_lshlrev_b32_e32 v5, 1, v5
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 14, v4
	v_or_b32_e32 v7, 10, v4
	v_add3_u32 v6, v6, s7, v14
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v42, 0
	v_mul_lo_u32 v1, s33, v1
	v_mov_b32_e32 v120, 0
	v_subrev_nc_u32_e32 v6, s6, v6
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v132, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v6, 1, v6
	v_lshlrev_b32_e32 v1, 1, v1
	v_or_b32_e32 v15, 0x300, v124
	v_or_b32_e32 v16, 0x3f0, v124
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v150, 0, v125
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 1, v3
	v_mul_lo_u32 v3, s33, v8
	v_mov_b32_e32 v57, 0
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v21, 0, v124
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v19, 1, v126
	v_mov_b32_e32 v81, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s42, s4, s8
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add3_u32 v3, v3, s7, v14
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s4, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v149, s41, 8, v14
	s_mov_b32 s5, s4
	s_mov_b32 s8, s4
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_subrev_nc_u32_e32 v3, s6, v3
	v_mov_b32_e32 v190, 0
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_add_nc_u32_e32 v3, 1, v3
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s6, v2
	v_mul_lo_u32 v2, s33, v7
	v_or_b32_e32 v7, 8, v4
	v_mov_b32_e32 v48, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v1, 1, v1
	scratch_store_b32 off, v5, off offset:164 ; 4-byte Folded Spill
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v5, 9, v20
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:168 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s33, v7
	v_or_b32_e32 v7, 2, v4
	v_mul_lo_u32 v5, s33, v5
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v96, 0
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v176, v21, v124
	v_mul_lo_u32 v7, s33, v7
	v_lshlrev_b32_e32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v2, 5, v20
	v_add3_u32 v5, v5, s7, v14
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v177, v150, v17
	v_mov_b32_e32 v76, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v2, s33, v2
	v_subrev_nc_u32_e32 v5, s6, v5
	v_dual_mov_b32 v78, 0 :: v_dual_add_nc_u32 v179, 0, v19
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v114, 0
	v_add3_u32 v2, v2, s7, v14
	s_add_i32 s7, s7, s33
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v110, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_subrev_nc_u32_e32 v2, s6, v2
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v122, 0
	v_add_nc_u32_e32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:180
	scratch_store_b32 off, v207, off offset:240
	v_or_b32_e32 v1, 6, v4
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	scratch_store_b32 off, v2, off offset:200 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v2, 1, v7
	scratch_store_b32 off, v3, off offset:184 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s33, v20
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	v_add3_u32 v3, s7, v3, v14
	v_lshlrev_b32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:176
	scratch_store_b32 off, v126, off offset:236
	v_or_b32_e32 v6, 4, v4
	v_mul_lo_u32 v4, s33, v4
	scratch_store_b32 off, v1, off offset:188 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s6, v3
	v_add_nc_u32_e32 v3, 1, v5
	v_mul_lo_u32 v6, s33, v6
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v3, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v104, 0
	v_lshlrev_b32_e32 v3, 1, v6
	scratch_store_b32 off, v1, off offset:208 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v4
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v84, 0
	scratch_store_b32 off, v3, off offset:196 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v116, 0
	scratch_store_b32 off, v1, off offset:212 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v15
	scratch_store_b32 off, v2, off offset:204 ; 4-byte Folded Spill
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v74, 0
	scratch_store_b32 off, v1, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v16
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:220
	scratch_store_b32 off, v124, off offset:228
	scratch_store_b32 off, v21, off offset:132
	v_mov_b32_e32 v1, s4
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v8, s11
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v195, 0
	v_mov_b32_e32 v213, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v3, s6
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_add_u32 s43, s42, s33
	s_lshl_b32 s44, s33, 2
	s_lshl_b32 s45, s25, 4
	s_lshl_b32 s46, s33, 5
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s26
	s_mov_b32 s15, s27
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v16, off, off offset:212 ; 4-byte Folded Reload
	s_clause 0x17                           ; 96-byte Folded Spill
	scratch_store_b32 off, v202, off offset:96
	scratch_store_b32 off, v200, off offset:92
	scratch_store_b32 off, v143, off offset:88
	scratch_store_b32 off, v40, off offset:84
	scratch_store_b32 off, v213, off offset:80
	scratch_store_b32 off, v191, off offset:76
	scratch_store_b32 off, v41, off offset:72
	scratch_store_b32 off, v101, off offset:68
	scratch_store_b32 off, v39, off offset:64
	scratch_store_b32 off, v145, off offset:60
	scratch_store_b32 off, v62, off offset:56
	scratch_store_b32 off, v89, off offset:52
	scratch_store_b32 off, v42, off offset:48
	scratch_store_b32 off, v69, off offset:44
	scratch_store_b32 off, v103, off offset:40
	scratch_store_b32 off, v43, off offset:36
	scratch_store_b32 off, v70, off offset:32
	scratch_store_b32 off, v96, off offset:28
	scratch_store_b32 off, v105, off offset:24
	scratch_store_b32 off, v199, off offset:20
	scratch_store_b32 off, v197, off offset:16
	scratch_store_b32 off, v196, off offset:12
	scratch_store_b32 off, v56, off offset:8
	scratch_store_b32 off, v195, off offset:4
	v_mov_b32_e32 v152, v128
	v_mov_b32_e32 v128, v97
	v_mov_b32_e32 v124, v85
	v_mov_b32_e32 v126, v87
	v_mov_b32_e32 v188, v137
	v_dual_mov_b32 v105, v232 :: v_dual_add_nc_u32 v0, s34, v12
	v_dual_mov_b32 v70, v190 :: v_dual_add_nc_u32 v13, s34, v11
	v_add_nc_u32_e32 v14, s34, v10
	v_dual_mov_b32 v62, v248 :: v_dual_add_nc_u32 v15, s34, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s40, s40, -1
	v_mov_b32_e32 v97, v74
	v_mov_b32_e32 v85, v45
	v_mov_b32_e32 v125, v86
	v_mov_b32_e32 v87, v47
	v_dual_mov_b32 v137, v108 :: v_dual_mov_b32 v108, v91
	v_dual_mov_b32 v91, v68 :: v_dual_mov_b32 v68, v57
	v_mov_b32_e32 v57, v48
	v_mov_b32_e32 v74, v44
	v_mov_b32_e32 v86, v46
	v_mov_b32_e32 v106, v98
	v_mov_b32_e32 v98, v82
	v_mov_b32_e32 v82, v80
	v_dual_mov_b32 v80, v54 :: v_dual_add_nc_u32 v11, s45, v11
	v_add_nc_u32_e32 v12, s45, v12
	v_add_nc_u32_e32 v10, s45, v10
	v_add_nc_u32_e32 v9, s45, v9
	s_waitcnt vmcnt(4)
	v_add3_u32 v187, v16, s4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s42, v187
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v20, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v186, v16, s4, v149
	v_add_nc_u32_e32 v16, s42, v186
	buffer_load_u16 v21, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v185, v16, s4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s42, v185
	buffer_load_u16 v22, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v184, v16, s4, v149
	v_add_nc_u32_e32 v16, s42, v184
	buffer_load_u16 v23, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v183, v16, s4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s42, v183
	buffer_load_u16 v24, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v182, v16, s4, v149
	v_add_nc_u32_e32 v16, s42, v182
	buffer_load_u16 v25, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v181, v16, s4, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v16, s42, v181
	buffer_load_u16 v26, v16, s[12:15], 0 offen
	scratch_load_b32 v16, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add3_u32 v180, v16, s4, v149
	v_add_nc_u32_e32 v16, s42, v180
	buffer_load_u16 v27, v16, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v16, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v16, v0
	ds_store_b8 v16, v13 offset:256
	ds_store_b8 v16, v14 offset:512
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v150 offset:320
	ds_load_u8 v13, v150 offset:256
	ds_load_u8 v195, v150 offset:336
	ds_load_u8 v196, v150 offset:272
	ds_load_u8 v218, v150 offset:352
	ds_load_u8 v220, v150 offset:288
	ds_load_u8 v200, v150 offset:368
	ds_load_u8 v202, v150 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v0, 0xc0c0004
	ds_load_u8 v0, v150 offset:448
	ds_load_u8 v14, v150 offset:384
	ds_load_u8 v17, v150 offset:464
	ds_load_u8 v18, v150 offset:400
	ds_load_u8 v222, v150 offset:480
	ds_load_u8 v228, v150 offset:416
	ds_load_u8 v207, v150 offset:496
	ds_load_u8 v208, v150 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v14, v14, v0, 0xc0c0004
	ds_load_u8 v0, v150 offset:64
	ds_load_u8 v15, v150
	ds_load_u8 v19, v150 offset:80
	ds_load_u8 v231, v150 offset:96
	ds_load_u8 v209, v150 offset:112
	ds_load_u8 v148, v150 offset:16
	ds_load_u8 v236, v150 offset:32
	ds_load_u8 v210, v150 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v15, v0, 0xc0c0004
	ds_load_u8 v16, v150 offset:192
	ds_load_u8 v28, v150 offset:128
	ds_load_u8 v0, v150 offset:208
	ds_load_u8 v154, v150 offset:144
	ds_load_u8 v237, v150 offset:224
	ds_load_u8 v238, v150 offset:160
	ds_load_u8 v214, v150 offset:240
	ds_load_u8 v215, v150 offset:176
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v18, v148, v19, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v16, v28, v16, 0xc0c0004
	scratch_load_b32 v28, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v216, v28
	ds_load_u8 v217, v150 offset:944
	ds_load_u8 v28, v150 offset:832
	ds_load_u8 v29, v150 offset:768
	ds_load_u8 v156, v150 offset:848
	ds_load_u8 v199, v150 offset:784
	ds_load_u8 v241, v150 offset:864
	ds_load_u8 v242, v150 offset:800
	ds_load_u8 v224, v150 offset:880
	ds_load_u8 v225, v150 offset:816
	ds_load_u8 v30, v150 offset:704
	ds_load_u8 v31, v150 offset:640
	ds_load_u8 v206, v150 offset:720
	ds_load_u8 v211, v150 offset:656
	ds_load_u8 v243, v150 offset:736
	ds_load_u8 v245, v150 offset:672
	ds_load_u8 v226, v150 offset:752
	ds_load_u8 v227, v150 offset:688
	ds_load_u8 v32, v150 offset:576
	ds_load_u8 v33, v150 offset:512
	ds_load_u8 v158, v150 offset:592
	ds_load_u8 v159, v150 offset:528
	ds_load_u8 v249, v150 offset:608
	ds_load_u8 v250, v150 offset:544
	ds_load_u8 v229, v150 offset:624
	ds_load_u8 v230, v150 offset:560
	v_lshl_or_b32 v13, v16, 16, v15
	ds_load_u8 v15, v150 offset:960
	ds_load_u8 v16, v150 offset:896
	ds_load_u8 v155, v150 offset:976
	ds_load_u8 v197, v150 offset:912
	ds_load_u8 v239, v150 offset:992
	ds_load_u8 v240, v150 offset:928
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v176, v20
	ds_store_b16 v176, v21 offset:512
	ds_store_b16 v176, v22 offset:1024
	ds_store_b16 v176, v23 offset:1536
	ds_store_b16 v176, v24 offset:2048
	ds_store_b16 v176, v25 offset:2560
	ds_store_b16 v176, v26 offset:3072
	ds_store_b16 v176, v27 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v20, v177 offset:1280
	ds_load_u8 v21, v177 offset:1024
	ds_load_u8 v22, v177 offset:1920
	ds_load_u8 v23, v177 offset:1664
	ds_load_u8 v24, v177 offset:1408
	ds_load_u8 v34, v177 offset:1152
	v_perm_b32 v0, v154, v0, 0xc0c0004
	v_perm_b32 v19, v211, v206, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v177 offset:1792
	ds_load_u8 v25, v177 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	ds_load_u8 v25, v177 offset:256
	ds_load_u8 v26, v177
	ds_load_u8 v35, v177 offset:896
	ds_load_u8 v36, v177 offset:640
	ds_load_u8 v37, v177 offset:384
	ds_load_u8 v38, v177 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v177 offset:768
	ds_load_u8 v27, v177 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v27, v26, 0xc0c0004
	v_lshl_or_b32 v26, v21, 16, v20
	v_perm_b32 v20, v29, v28, 0xc0c0004
	v_perm_b32 v21, v33, v32, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v25, v27, 16, v25
	v_perm_b32 v27, v31, v30, 0xc0c0004
	v_lshl_or_b32 v16, v15, 16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[25:26], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v27, 16, v21
	ds_load_u8 v20, v177 offset:3328
	ds_load_u8 v21, v177 offset:3072
	ds_load_u8 v31, v177 offset:3968
	ds_load_u8 v32, v177 offset:3712
	ds_load_u8 v33, v177 offset:3456
	ds_load_u8 v39, v177 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v177 offset:3840
	ds_load_u8 v27, v177 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v27, v21, 0xc0c0004
	ds_load_u8 v27, v177 offset:2304
	ds_load_u8 v28, v177 offset:2048
	ds_load_u8 v40, v177 offset:2944
	ds_load_u8 v41, v177 offset:2688
	ds_load_u8 v42, v177 offset:2432
	ds_load_u8 v43, v177 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v177 offset:2816
	ds_load_u8 v29, v177 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v29, v28, 0xc0c0004
	v_lshl_or_b32 v28, v21, 16, v20
	v_perm_b32 v20, v34, v24, 0xc0c0004
	v_perm_b32 v21, v23, v22, 0xc0c0004
	v_perm_b32 v22, v38, v37, 0xc0c0004
	v_lshl_or_b32 v27, v29, 16, v27
	v_perm_b32 v23, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v30, v21, 16, v20
	v_perm_b32 v20, v39, v33, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[160:167], v[27:28], v[15:16], v[160:167] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v29, v23, 16, v22
	v_perm_b32 v21, v32, v31, 0xc0c0004
	v_perm_b32 v22, v43, v42, 0xc0c0004
	v_perm_b32 v23, v41, v40, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v157, v160
	v_cvt_f32_i32_e32 v191, v161
	v_cvt_f32_i32_e32 v213, v162
	v_cvt_f32_i32_e32 v219, v163
	v_cvt_f32_i32_e32 v89, v164
	v_cvt_f32_i32_e32 v96, v165
	v_cvt_f32_i32_e32 v101, v166
	v_cvt_f32_i32_e32 v103, v167
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v37, v21, 16, v20
	v_lshl_or_b32 v36, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[160:167], v[29:30], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v0, 16, v18
	v_perm_b32 v0, v199, v156, 0xc0c0004
	v_perm_b32 v18, v159, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[160:167], v[36:37], v[15:16], v[160:167] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v19, 16, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v20, v160
	scratch_store_b32 off, v20, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v165
	scratch_store_b32 off, v20, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v166
	scratch_store_b32 off, v20, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v167
	scratch_store_b32 off, v20, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v161
	scratch_store_b32 off, v20, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v162
	scratch_store_b32 off, v20, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v163
	scratch_store_b32 off, v20, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v20, v164
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v20, off offset:112 ; 4-byte Folded Spill
	v_perm_b32 v20, v196, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v40, v17, 16, v20
	v_perm_b32 v17, v197, v155, 0xc0c0004
	v_lshl_or_b32 v42, v17, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v0, v220, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[41:42], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v248, v17
	v_cvt_f32_i32_e32 v143, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v145, v19
	v_cvt_f32_i32_e32 v190, v20
	v_cvt_f32_i32_e32 v235, v21
	v_cvt_f32_i32_e32 v234, v22
	v_cvt_f32_i32_e32 v233, v23
	v_cvt_f32_i32_e32 v232, v24
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[36:37], v[41:42], v[17:24] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v206, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v56, v18
	v_cvt_f32_i32_e32 v69, v19
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v17, v228, v222, 0xc0c0004
	v_perm_b32 v18, v236, v231, 0xc0c0004
	v_perm_b32 v19, v238, v237, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v197, v22
	v_cvt_f32_i32_e32 v196, v23
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v33, v17, 16, v0
	v_perm_b32 v0, v242, v241, 0xc0c0004
	v_lshl_or_b32 v32, v19, 16, v18
	v_perm_b32 v17, v240, v239, 0xc0c0004
	v_perm_b32 v18, v250, v249, 0xc0c0004
	v_perm_b32 v19, v245, v243, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v24
	v_cvt_f32_i32_e32 v211, v20
	v_cvt_f32_i32_e32 v199, v21
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v240, v17, 16, v0
	v_lshl_or_b32 v239, v19, 16, v18
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[32:33], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v241, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[239:240], v[17:24] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v18
	v_cvt_f32_i32_e32 v154, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v148, v20
	v_cvt_f32_i32_e32 v255, v21
	v_cvt_f32_i32_e32 v254, v22
	v_cvt_f32_i32_e32 v253, v23
	v_cvt_f32_i32_e32 v252, v24
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[17:24], v[29:30], v[32:33], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[36:37], v[239:240], v[17:24] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v231, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v238, v18
	v_cvt_f32_i32_e32 v237, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v236, v20
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v17, v202, v200, 0xc0c0004
	v_perm_b32 v18, v208, v207, 0xc0c0004
	v_perm_b32 v19, v210, v209, 0xc0c0004
	v_perm_b32 v20, v215, v214, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v222, v22
	v_cvt_f32_i32_e32 v220, v23
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v53, v18, 16, v17
	v_perm_b32 v17, v230, v229, 0xc0c0004
	v_lshl_or_b32 v52, v20, 16, v19
	v_perm_b32 v18, v227, v226, 0xc0c0004
	v_perm_b32 v19, v225, v224, 0xc0c0004
	v_perm_b32 v20, v217, v216, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v24
	v_cvt_f32_i32_e32 v228, v21
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v215, v18, 16, v17
	v_mov_b32_e32 v217, v49
	v_lshl_or_b32 v216, v20, 16, v19
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v26, s43, v181
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[215:216], v[17:24] neg_lo:[1,1,0]
	scratch_load_b32 v28, off, off offset:208 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v27, s43, v180
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v175, v18
	v_cvt_f32_i32_e32 v174, v19
	v_cvt_f32_i32_e32 v172, v20
	v_cvt_f32_i32_e32 v165, v21
	v_cvt_f32_i32_e32 v164, v22
	v_cvt_f32_i32_e32 v163, v23
	v_cvt_f32_i32_e32 v162, v24
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[18:25], v[29:30], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[18:25], v[36:37], v[215:216], v[18:25] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v17, v20
	v_add_nc_u32_e32 v20, s43, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v251, v18
	v_cvt_f32_i32_e32 v18, v21
	v_add_nc_u32_e32 v21, s43, v186
	v_cvt_f32_i32_e32 v250, v22
	v_add_nc_u32_e32 v22, s43, v185
	v_cvt_f32_i32_e32 v245, v23
	v_add_nc_u32_e32 v23, s43, v184
	v_cvt_f32_i32_e32 v243, v24
	v_add_nc_u32_e32 v24, s43, v183
	v_cvt_f32_i32_e32 v242, v25
	v_add_nc_u32_e32 v25, s43, v182
	v_cvt_f32_i32_e32 v19, v19
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s4, v28
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v28, v28, s[12:15], 0 offen
	buffer_load_u8 v29, v20, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	buffer_load_u8 v30, v20, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	s_clause 0x2
	buffer_load_u8 v31, v20, s[12:15], 0 offen
	buffer_load_u8 v21, v21, s[12:15], 0 offen
	buffer_load_u8 v22, v22, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	buffer_load_u8 v34, v20, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v21.h, 8, v34.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	s_clause 0x2
	buffer_load_u8 v35, v20, s[12:15], 0 offen
	buffer_load_u8 v23, v23, s[12:15], 0 offen
	buffer_load_u8 v24, v24, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v21.h, v23.l, v21.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	buffer_load_u8 v36, v20, s[12:15], 0 offen
	scratch_load_b32 v20, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v22.h, 8, v36.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	s_clause 0x2
	buffer_load_u8 v37, v20, s[12:15], 0 offen
	buffer_load_u8 v25, v25, s[12:15], 0 offen
	buffer_load_u8 v26, v26, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v20, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v23.l, 8, v37.l
	s_waitcnt vmcnt(2)
	v_or_b16 v22.h, v25.l, v22.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, s4, v20
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v38, v20, s[12:15], 0 offen
	buffer_load_u8 v27, v27, s[12:15], 0 offen
	v_lshlrev_b16 v20.h, 8, v30.l
	v_lshlrev_b16 v20.l, 8, v28.l
	v_or_b16 v23.l, v26.l, v23.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v20.h, v21.l, v20.h
	v_lshlrev_b16 v21.l, 8, v31.l
	v_or_b16 v20.l, v29.l, v20.l
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s4, s4, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v21.l, v22.l, v21.l
	v_lshlrev_b16 v22.l, 8, v35.l
	v_or_b16 v22.l, v24.l, v22.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v23.h, 8, v38.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v23.h, v27.l, v23.h
	ds_store_b16 v176, v20
	ds_store_b16_d16_hi v176, v20 offset:512
	ds_store_b16 v176, v21 offset:1024
	ds_store_b16_d16_hi v176, v21 offset:1536
	ds_store_b16 v176, v22 offset:2048
	ds_store_b16_d16_hi v176, v22 offset:2560
	ds_store_b16 v176, v23 offset:3072
	ds_store_b16_d16_hi v176, v23 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v20, v177 offset:1280
	ds_load_u8 v21, v177 offset:1024
	ds_load_u8 v22, v177 offset:1920
	ds_load_u8 v23, v177 offset:1664
	ds_load_u8 v24, v177 offset:1408
	ds_load_u8 v25, v177 offset:1152
	ds_load_u8 v44, v177 offset:2944
	ds_load_u8 v45, v177 offset:2688
	ds_load_u8 v46, v177 offset:2432
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v177 offset:1792
	ds_load_u8 v26, v177 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v26, v21, 0xc0c0004
	ds_load_u8 v26, v177 offset:256
	ds_load_u8 v27, v177
	ds_load_u8 v30, v177 offset:896
	ds_load_u8 v31, v177 offset:640
	ds_load_u8 v34, v177 offset:384
	ds_load_u8 v35, v177 offset:128
	v_lshl_or_b32 v29, v21, 16, v20
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v177 offset:768
	ds_load_u8 v28, v177 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v28, v27, 16, v26
	ds_load_u8 v20, v177 offset:3328
	ds_load_u8 v21, v177 offset:3072
	ds_load_u8 v26, v177 offset:3968
	ds_load_u8 v27, v177 offset:3712
	ds_load_u8 v36, v177 offset:3456
	ds_load_u8 v37, v177 offset:3200
	v_wmma_i32_16x16x16_iu4 v[180:187], v[28:29], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v177 offset:3840
	ds_load_u8 v38, v177 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v38, v21, 0xc0c0004
	ds_load_u8 v38, v177 offset:2304
	ds_load_u8 v43, v177 offset:2048
	v_lshl_or_b32 v55, v21, 16, v20
	v_perm_b32 v20, v25, v24, 0xc0c0004
	v_perm_b32 v21, v23, v22, 0xc0c0004
	v_perm_b32 v22, v35, v34, 0xc0c0004
	v_perm_b32 v23, v31, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v35, v21, 16, v20
	v_perm_b32 v20, v37, v36, 0xc0c0004
	v_lshl_or_b32 v34, v23, 16, v22
	v_perm_b32 v21, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v21, 16, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v43, v38, 0xc0c0004
	ds_load_u8 v43, v177 offset:2816
	ds_load_u8 v48, v177 offset:2560
	ds_load_u8 v47, v177 offset:2176
	v_perm_b32 v23, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v43, v48, v43, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v54, v43, 16, v38
	v_lshl_or_b32 v48, v23, 16, v22
	v_wmma_i32_16x16x16_iu4 v[20:27], v[34:35], v[13:14], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[180:187], v[54:55], v[15:16], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[48:49], v[15:16], v[20:27] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v161, v184
	v_cvt_f32_i32_e32 v212, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v156, v20
	v_cvt_f32_i32_e32 v13, v25
	v_cvt_f32_i32_e32 v14, v26
	v_cvt_f32_i32_e32 v15, v27
	v_cvt_f32_i32_e32 v202, v21
	v_cvt_f32_i32_e32 v200, v22
	v_cvt_f32_i32_e32 v184, v23
	v_cvt_f32_i32_e32 v16, v24
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v173, v181
	v_cvt_f32_i32_e32 v170, v183
	v_cvt_f32_i32_e32 v160, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[20:27], v[54:55], v[41:42], v[20:27] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v159, v186
	v_cvt_f32_i32_e32 v158, v187
	v_cvt_f32_i32_e32 v171, v182
	v_cvt_f32_i32_e32 v38, v20
	v_cvt_f32_i32_e32 v37, v21
	v_cvt_f32_i32_e32 v36, v22
	v_cvt_f32_i32_e32 v31, v23
	v_cvt_f32_i32_e32 v169, v24
	v_cvt_f32_i32_e32 v168, v25
	v_cvt_f32_i32_e32 v167, v26
	v_cvt_f32_i32_e32 v166, v27
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[20:27], v[34:35], v[39:40], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[48:49], v[41:42], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[28:29], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v208, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[54:55], v[239:240], v[40:47] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v180, v25
	v_cvt_f32_i32_e32 v181, v26
	v_cvt_f32_i32_e32 v214, v21
	v_cvt_f32_i32_e32 v210, v22
	v_cvt_f32_i32_e32 v183, v24
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v39, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v21, v45
	v_cvt_f32_i32_e32 v20, v46
	v_cvt_f32_i32_e32 v178, v47
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[34:35], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v182, v27
	v_cvt_f32_i32_e32 v209, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[239:240], v[40:47] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v225, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v185, v45
	v_cvt_f32_i32_e32 v186, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v187, v47
	v_cvt_f32_i32_e32 v229, v41
	v_cvt_f32_i32_e32 v227, v42
	v_cvt_f32_i32_e32 v226, v43
	v_cvt_f32_i32_e32 v207, v44
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[28:29], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[54:55], v[215:216], v[40:47] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v27, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v32, v41
	v_cvt_f32_i32_e32 v33, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v54, v43
	v_cvt_f32_i32_e32 v30, v44
	v_cvt_f32_i32_e32 v29, v45
	v_cvt_f32_i32_e32 v28, v46
	v_cvt_f32_i32_e32 v23, v47
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[34:35], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:148
	scratch_load_b32 v35, off, off offset:144
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[215:216], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v230, v40
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v40, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v53, v41
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v41, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v45
	v_cvt_f32_i32_e32 v216, v46
	v_cvt_f32_i32_e32 v52, v47
	v_cvt_f32_i32_e32 v240, v42
	v_cvt_f32_i32_e32 v239, v43
	v_cvt_f32_i32_e32 v224, v44
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v34, s5, v34
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v35, s5, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, s5, v40
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v41, s5, v41
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s5, s5, 2
	s_cmp_lg_u32 s40, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	s_clause 0x3
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v48, v40, s[28:31], 0 offen
	buffer_load_u16 v49, v41, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v40, v153, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v153, s44, v153
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v249, 16, v34
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v40, 16, v40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v249, v157
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v14, v249
	v_dual_mul_f32 v15, v15, v249 :: v_dual_mul_f32 v16, v249, v16
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	scratch_load_b32 v157, off, off         ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[40:43], v179
	ds_load_b128 v[44:47], v179 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v13, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_fmac_f32 v157, v34, v40 :: v_dual_mul_f32 v34, v249, v191
	scratch_load_b32 v191, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_store_b32 off, v157, off        ; 4-byte Folded Spill
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v249, v213 :: v_dual_lshlrev_b32 v157, 16, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v34, v42 :: v_dual_mul_f32 v34, v249, v219
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v219, 16, v48
	v_mov_b32_e32 v48, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v219, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v244, v0, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v219, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v247, v0, v42 :: v_dual_mul_f32 v0, v219, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v246, v0, v43
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v0, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v121, v34, v43 :: v_dual_mul_f32 v34, v157, v248
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v99, v34, v40 :: v_dual_mul_f32 v34, v157, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v143, off, off offset:88
	scratch_load_b32 v213, off, off offset:80
	v_fmac_f32_e32 v116, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v190
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v34, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v219, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v34, v40 :: v_dual_mul_f32 v34, v0, v151
	v_dual_fmac_f32 v221, v34, v40 :: v_dual_mul_f32 v34, v0, v175
	v_dual_mov_b32 v57, v68 :: v_dual_mov_b32 v68, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v91, v108 :: v_dual_fmac_f32 v64, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v0, v174
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v0, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v65, v34, v43 :: v_dual_mul_f32 v34, v249, v89
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v113, v34, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v249, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v34, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v249, v101
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v34, v46 :: v_dual_mul_f32 v34, v249, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v34, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v235
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v34, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v34, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v233
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v34, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v34, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v219, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v241, v34, v44 :: v_dual_mul_f32 v34, v219, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v151, v241
	v_fmac_f32_e32 v193, v34, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v219, v253
	v_dual_mov_b32 v108, v137 :: v_dual_mov_b32 v137, v188
	v_mov_b32_e32 v190, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v223, v34, v46 :: v_dual_mul_f32 v34, v219, v252
	v_dual_fmac_f32 v217, v34, v47 :: v_dual_mul_f32 v34, v0, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v49, v217
	v_fmac_f32_e32 v201, v34, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v0, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v34, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v0, v163
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v34, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v0, v162
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v34, v47
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[40:43], v179 offset:512
	ds_load_b128 v[44:47], v179 offset:528
	v_mov_b32_e32 v248, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v145, off, off offset:60
	scratch_load_b32 v62, off, off offset:56
	scratch_load_b32 v89, off, off offset:52
	scratch_load_b32 v101, off, off offset:68
	scratch_load_b32 v34, off, off offset:128
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6) lgkmcnt(1)
	v_fmac_f32_e32 v143, v17, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v0, v18
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, v17, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v249, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v95, v17, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	v_mul_f32_e32 v34, v34, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v131, v34, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v34, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v17, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v34, v249, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v34, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v17, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v34, v249, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v34, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v142, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v157, v199
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v249, v34
	scratch_load_b32 v199, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v71, v17, v44 :: v_dual_fmac_f32 v94, v34, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v206, v157
	v_mul_f32_e32 v17, v197, v157
	scratch_load_b32 v197, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v34, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v17, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v196, v157
	v_mul_f32_e32 v19, v0, v19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v196, off, off offset:12
	scratch_load_b32 v56, off, off offset:8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v69
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v138, v17, v46 :: v_dual_mul_f32 v17, v195, v157
	v_fmac_f32_e32 v213, v19, v41
	scratch_load_b32 v195, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v88, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v157, v211
	v_mov_b32_e32 v232, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v17, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v219, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v34, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v231, v219 :: v_dual_fmac_f32 v73, v17, v44
	v_mul_f32_e32 v17, v222, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v34, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v219, v238
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v134, v17, v45 :: v_dual_mul_f32 v17, v220, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v204, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v219, v237 :: v_dual_fmac_f32 v133, v17, v46
	v_mul_f32_e32 v17, v218, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v205, v34, v42 :: v_dual_mul_f32 v34, v219, v236
	v_dual_fmac_f32 v132, v17, v47 :: v_dual_mul_f32 v17, v0, v250
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v34, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v251, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v17, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v245, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v129, v34, v40
	v_fmac_f32_e32 v123, v17, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v243, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v17, v46 :: v_dual_mul_f32 v17, v242, v0
	v_fmac_f32_e32 v115, v17, v47
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v17, v198, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v198, s44, v198
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v179
	ds_load_b128 v[44:47], v179 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v212
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v17, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v173
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v17, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v17, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v170
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v17, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v17, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v17, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v17, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v31
	v_dual_mul_f32 v31, v52, v0 :: v_dual_fmac_f32 v84, v17, v43
	v_dual_mul_f32 v17, v219, v26 :: v_dual_mul_f32 v26, v186, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v63, v17, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v219, v25
	v_mul_f32_e32 v25, v156, v249
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v62, v17, v41 :: v_dual_mul_f32 v17, v219, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v60, v17, v42 :: v_dual_mul_f32 v17, v219, v39
	scratch_load_b32 v39, off, off offset:64 ; 4-byte Folded Reload
	v_fmac_f32_e32 v61, v17, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v27
	v_mul_f32_e32 v27, v187, v219
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v203, v17, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v32
	scratch_load_b32 v40, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v199, v17, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v33
	scratch_load_b32 v41, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v232, v17, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v54
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v42, off, off offset:48
	scratch_load_b32 v69, off, off offset:44
	scratch_load_b32 v103, off, off offset:40
	v_dual_mov_b32 v54, v80 :: v_dual_fmac_f32 v67, v17, v43
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v43, off, off offset:36
	scratch_load_b32 v70, off, off offset:32
	scratch_load_b32 v96, off, off offset:28
	scratch_load_b32 v105, off, off offset:24
	v_mul_f32_e32 v17, v249, v161
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v105, v17, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v160
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v17, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v249, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v17, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v249, v158 :: v_dual_mov_b32 v80, v82
	v_mov_b32_e32 v82, v98
	v_dual_mov_b32 v98, v106 :: v_dual_fmac_f32 v101, v17, v47
	v_mul_f32_e32 v17, v157, v169
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v17, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v168
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v17, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v17, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v157, v166
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v17, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v219, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v81, v17, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v219, v21
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v80, v17, v45 :: v_dual_mul_f32 v17, v219, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v17, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v219, v178
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v75, v17, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v30
	v_mul_f32_e32 v30, v216, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v17, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v0, v29 :: v_dual_mov_b32 v44, v74
	v_dual_mov_b32 v74, v97 :: v_dual_mov_b32 v97, v128
	v_mov_b32_e32 v128, v152
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v248, v17, v45 :: v_dual_mul_f32 v17, v0, v28
	v_dual_mov_b32 v45, v85 :: v_dual_mul_f32 v28, v219, v207
	v_mov_b32_e32 v85, v124
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v215, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v43, v17, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v0, v23 :: v_dual_mov_b32 v46, v86
	v_mov_b32_e32 v86, v125
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v42, v17, v47
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[17:20], v179 offset:512
	ds_load_b128 v[21:24], v179 offset:528
	v_mov_b32_e32 v47, v87
	v_mov_b32_e32 v87, v126
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v39, v25, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v25, v249, v202 :: v_dual_fmac_f32 v194, v15, v24
	scratch_load_b32 v202, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v44, v28, v21
	v_dual_fmac_f32 v146, v27, v24 :: v_dual_fmac_f32 v97, v25, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v249, v200
	scratch_load_b32 v200, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v85, v16, v21
	v_dual_fmac_f32 v147, v26, v23 :: v_dual_fmac_f32 v128, v29, v22
	v_fmac_f32_e32 v87, v25, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v249, v184
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v51, v30, v23
	v_fmac_f32_e32 v127, v31, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v86, v25, v20 :: v_dual_mul_f32 v25, v208, v157
	v_fmac_f32_e32 v40, v25, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v157, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v25, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v157, v210
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v74, v25, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v157, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v25, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v225, v219
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v189, v25, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v219, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v47, v25, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v219, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v46, v25, v19 :: v_dual_mul_f32 v25, v219, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v25, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v25, v230, v0
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v25, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v53
	v_mul_f32_e32 v25, v185, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v56, v17, v18 :: v_dual_mul_f32 v17, v0, v240
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v181, v157
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v41, v25, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v196, v17, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v239
	v_dual_mul_f32 v19, v182, v157 :: v_dual_mul_f32 v0, v0, v224
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v59, v18, v23
	v_fmac_f32_e32 v195, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v17, v180, v157 :: v_dual_mul_f32 v20, v157, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v58, v19, v24
	v_fmac_f32_e32 v50, v0, v21
	v_fmac_f32_e32 v192, v17, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v70, v20, v21
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v202, v13, v22
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v200, v14, v23
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v3, off, off offset:244
	scratch_load_b32 v124, off, off offset:228
	scratch_load_b32 v125, off, off offset:232
	scratch_load_b32 v126, off, off offset:236
	scratch_load_b32 v207, off, off offset:240
	scratch_load_b32 v106, off, off
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v109
	v_dual_mul_f32 v8, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v200
	v_dual_mul_f32 v2, 0xbfb8aa3b, v194 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v202 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v100
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_dual_mul_f32 v14, 0xbfb8aa3b, v58 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v39
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v200
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v194
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v202
	v_exp_f32_e32 v13, v6
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_exp_f32_e32 v1, v1
	v_mul_f32_e32 v170, 0xbfb8aa3b, v70
	v_dual_mul_f32 v18, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v159, 0xbfb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_mul_f32_e32 v184, 0xbfb8aa3b, v87
	v_ldexp_f32 v9, v13, v9
	v_mul_f32_e32 v13, 0xbfb8aa3b, v40
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v0, v1, v0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v13, 0xbfb8aa3b, v59
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v17, v17
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_ldexp_f32 v11, v12, v11
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v177, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_ldexp_f32 v10, v10, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v192
	v_mul_f32_e32 v178, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v40 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v157, 0xbfb8aa3b, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v182, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v22, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v149, 0xbfb8aa3b, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v192 :: v_dual_mul_f32 v206, 0xbfb8aa3b, v43
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v15, v14
	v_ldexp_f32 v15, v17, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v17, 0xbfb8aa3b, v147
	v_ldexp_f32 v12, v12, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v189
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v9, v9, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v147
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v156, 0xbfb8aa3b, v199
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v189
	v_dual_mul_f32 v154, 0xbfb8aa3b, v197 :: v_dual_add_f32 v15, 1.0, v15
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v166, 0xbfb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v19, v19
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v41 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v108
	v_dual_mul_f32 v7, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v105
	v_mul_f32_e32 v181, 0xbfb8aa3b, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v17, v17
	v_dual_mul_f32 v188, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v84
	v_ldexp_f32 v16, v16, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v18, v19, v18
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v17, v17, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v128 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v148, 0xbfb8aa3b, v196 :: v_dual_add_f32 v17, 1.0, v17
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v186, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v86
	v_dual_mul_f32 v180, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	v_mul_f32_e32 v150, 0xbfb8aa3b, v42
	v_exp_f32_e32 v2, v2
	v_dual_mul_f32 v176, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_mul_f32_e32 v152, 0xbfb8aa3b, v248
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v128
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v77
	v_mul_f32_e32 v173, 0xbfb8aa3b, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v27, v2, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v50
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v25, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v27, 1.0, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, vcc_lo, v39, v9, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v38, null, v12, v12, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v21, v23, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v26, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v172, 0xbfb8aa3b, v74 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v63
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v28, v23, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v195
	v_dual_mul_f32 v168, 0xbfb8aa3b, v62 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v81
	v_dual_mul_f32 v164, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v161, 0xbfb8aa3b, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v31, v29, v28 :: v_dual_mul_f32 v162, 0xbfb8aa3b, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v163, 0xbfb8aa3b, v54
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v22, v20
	v_ldexp_f32 v22, v25, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v0, v0, v202
	v_fma_f32 v33, -v26, v31, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v160, 0xbfb8aa3b, v46 :: v_dual_mul_f32 v153, 0xbfb8aa3b, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v23, v24
	v_fmac_f32_e32 v31, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v158, 0xbfb8aa3b, v44 :: v_dual_mul_f32 v155, 0xbfb8aa3b, v67
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v31, v29
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v24, v23, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v28, v31
	v_rcp_f32_e32 v28, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v32, v23
	v_div_scale_f32 v25, null, v10, v10, v200
	v_div_scale_f32 v32, s0, v202, v0, v202
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v25
	v_div_scale_f32 v35, s1, v200, v10, v200
	v_mul_f32_e32 v33, v32, v23
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v26, v9, v39
	v_div_scale_f32 v26, s3, v194, v11, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v24, v33, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v25, v30, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v131, v131, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v33, v29, v23 :: v_dual_fmac_f32 v30, v34, v30
	v_div_scale_f32 v34, null, v11, v11, v194
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v24, -v24, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v35, v30
	v_rcp_f32_e32 v36, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v24, v23, v33
	v_fma_f32 v29, -v25, v37, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v23, v0, v202
	v_fma_f32 v31, -v34, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v29, v30
	v_fma_f32 v29, -v38, v28, 1.0
	v_fmac_f32_e32 v36, v31, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v25, v37, v35
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, null, v13, v13, v192
	v_div_scale_f32 v31, s0, v40, v12, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v25, v26, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v14, v14, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v33, v31, v28
	v_div_fmas_f32 v24, v24, v30, v37
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v32, -v34, v25, v26
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v23, -v38, v33, v31
	v_div_fixup_f32 v10, v24, v10, v200
	v_rcp_f32_e32 v24, v35
	v_fmac_f32_e32 v25, v32, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v29, v30, 1.0
	v_fma_f32 v26, -v34, v25, v26
	v_fmac_f32_e32 v33, v23, v28
	v_div_scale_f32 v23, s1, v192, v13, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v34, null, v15, v15, v58
	v_div_fmas_f32 v25, v26, v36, v25
	v_fma_f32 v26, -v38, v33, v31
	v_mul_f32_e32 v31, v23, v30
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v32, v34
	v_fma_f32 v37, -v35, v24, 1.0
	v_div_fmas_f32 v26, v26, v28, v33
	v_fma_f32 v28, -v29, v31, v23
	v_div_scale_f32 v38, null, v16, v16, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v37, v24
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v31, v28, v30
	v_div_scale_f32 v28, null, v17, v17, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v34, v32, 1.0
	v_div_scale_f32 v36, s3, v59, v14, v59
	v_fma_f32 v23, -v29, v31, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v29, v28
	v_fmac_f32_e32 v32, v37, v32
	v_rcp_f32_e32 v37, v38
	v_div_scale_f32 v39, s0, v58, v15, v58
	v_div_fmas_f32 v23, v23, v30, v31
	v_div_fixup_f32 v12, v26, v12, v40
	v_div_fixup_f32 v11, v25, v11, v194
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v31, -v28, v29, 1.0
	v_div_fixup_f32 v13, v23, v13, v192
	v_fma_f32 v40, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v31, v29
	v_mul_f32_e32 v33, v36, v24
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s4, v189, v16, v189
	v_mul_f32_e32 v26, v39, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v35, v33, v36
	v_div_scale_f32 v31, null, v18, v18, v147
	v_fmac_f32_e32 v33, v25, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v34, v26, v39
	v_fma_f32 v30, -v35, v33, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v26, v25, v32 :: v_dual_mul_f32 v25, v40, v37
	v_div_fmas_f32 v24, v30, v24, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v34, v26, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v38, v25, v40
	v_div_scale_f32 v34, s1, v41, v17, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v30, v32, v26
	v_rcp_f32_e32 v30, v31
	v_fmac_f32_e32 v25, v33, v37
	v_div_fixup_f32 v23, v24, v14, v59
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v26, v15, v58
	v_div_scale_f32 v26, null, v19, v19, v146
	v_fma_f32 v14, -v38, v25, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v31, v30, 1.0
	v_div_fmas_f32 v14, v14, v37, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v25, v26
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v30, v33, v30
	v_mul_f32_e32 v32, v34, v29
	v_div_scale_f32 v33, null, v27, v27, v140
	v_div_fixup_f32 v35, v14, v16, v189
	v_div_scale_f32 v37, null, v20, v20, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v28, v32, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v130, v130, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v32, v15, v29
	v_div_scale_f32 v15, s0, v147, v18, v147
	v_fma_f32 v14, -v28, v32, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v16, v15, v30
	v_fma_f32 v28, -v26, v25, 1.0
	v_rcp_f32_e32 v34, v33
	v_div_fmas_f32 v14, v14, v29, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v31, v16, v15
	v_fmac_f32_e32 v25, v28, v25
	v_div_scale_f32 v28, null, v21, v21, v128
	v_div_scale_f32 v32, s1, v146, v19, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v16, v29, v30
	v_fma_f32 v36, -v33, v34, 1.0
	v_div_fixup_f32 v17, v14, v17, v41
	v_rcp_f32_e32 v14, v28
	v_mul_f32_e32 v29, v32, v25
	v_fma_f32 v15, -v31, v16, v15
	v_div_scale_f32 v41, null, v22, v22, v127
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, s3, v140, v27, v140
	v_fma_f32 v31, -v26, v29, v32
	v_div_fmas_f32 v15, v15, v30, v16
	v_rcp_f32_e32 v30, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v38, v36, v34
	v_fma_f32 v39, -v28, v14, 1.0
	v_fmac_f32_e32 v29, v31, v25
	v_div_fixup_f32 v18, v15, v18, v147
	v_div_scale_f32 v31, s0, v128, v21, v128
	v_fma_f32 v16, -v33, v38, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v15, -v26, v29, v32
	v_div_scale_f32 v26, s4, v51, v20, v51
	v_fmac_f32_e32 v14, v39, v14
	v_fma_f32 v39, -v37, v40, 1.0
	v_fma_f32 v32, -v41, v30, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v15, v15, v25, v29
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, s1, v127, v22, v127
	v_fmac_f32_e32 v40, v39, v40
	v_fmac_f32_e32 v38, v16, v34
	v_div_fixup_f32 v19, v15, v19, v146
	v_fma_f32 v25, -v33, v38, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v33, v26, v40 :: v_dual_mul_f32 v16, v31, v14
	v_fma_f32 v15, -v37, v33, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v28, v16, v31
	v_fmac_f32_e32 v16, v29, v14
	v_mul_f32_e32 v29, v32, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v15, v40
	v_div_fmas_f32 v25, v25, v34, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v28, v16, v31
	v_fma_f32 v15, -v41, v29, v32
	v_div_fixup_f32 v25, v25, v27, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v29, v15, v30
	v_div_fmas_f32 v8, v8, v14, v16
	v_fma_f32 v14, -v37, v33, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v15, -v41, v29, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v14, v14, v40, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v8, v21, v128
	v_div_fmas_f32 v7, v15, v30, v29
	v_div_fixup_f32 v20, v14, v20, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v141, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v7, v22, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v16, v27
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v109
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v139, v13 :: v_dual_mul_f32 v13, v138, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v176
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v127, v142, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v27, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v144, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, vcc_lo, v111, v0, v111
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v9, v132, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v26, v27, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v137, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v23, v23, v110
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v4 :: v_dual_fmac_f32 v27, v7, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v129, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v28, v28, v109
	v_dual_mul_f32 v33, v29, v27 :: v_dual_mul_f32 v10, v134, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v133, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v136, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v26, v33, v29
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v24, v30, 1.0
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v51.h, 0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v33, v18, v27 :: v_dual_fmac_f32 v30, v19, v30
	v_div_scale_f32 v18, s0, v110, v23, v110
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v4, v123, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v31, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v32, v17, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v5, v120, v20 :: v_dual_add_f32 v20, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v26, v33, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v19, v17
	v_div_scale_f32 v19, s1, v109, v28, v109
	v_div_fmas_f32 v21, v21, v27, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v19, v17
	v_div_fixup_f32 v0, v21, v0, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v32, v31, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v21, v17
	v_mul_f32_e32 v25, v18, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v32, v31, v19
	v_fma_f32 v29, -v24, v25, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v29, v30
	v_div_scale_f32 v26, null, v20, v20, v108
	v_div_scale_f32 v29, s3, v108, v20, v108
	v_fma_f32 v18, -v24, v25, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v27, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v115, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v26, v27, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v27, v22, v27 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v105
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v18, v18, v30, v25
	v_mul_f32_e32 v25, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v23, v110
	v_fma_f32 v30, -v26, v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v30, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v21, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v19, v17, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v24, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v26, v25, v29
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v28, v109
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v27, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v109, v122, v18 :: v_dual_mul_f32 v110, v121, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v19, v19, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v20, v23, v20, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v108, v106, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v135, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v26, v25, 1.0
	v_fmac_f32_e32 v25, v30, v25
	v_div_scale_f32 v30, s1, v103, v19, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v33
	v_ldexp_f32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v20, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v21, v21, v105
	v_div_scale_f32 v27, s0, v105, v21, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v31, null, v20, v20, v100
	v_rcp_f32_e32 v22, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v17, v31
	v_fma_f32 v28, -v34, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v28, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v29, v27, v22 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v34, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v29, v24, v22 :: v_dual_mul_f32 v24, v30, v25
	v_fma_f32 v18, -v34, v29, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v28, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v26, v24, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v27, v25
	v_div_fmas_f32 v18, v18, v22, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v17, 1.0
	v_div_scale_f32 v23, null, v0, v0, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v18, v21, v105
	v_fma_f32 v21, -v26, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v21, v21, v25, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s3
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v21, v19, v103
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v30, -v23, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v87
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v30, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s1, v101, v0, v101
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v25, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v22, s0, v100, v20, v100
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_mul_f32 v29, v22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v24, v24, v87
	v_fma_f32 v21, -v31, v29, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v29, v21, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v28, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v30, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v22, -v31, v29, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v23, v27, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v25, null, v21, v21, v97
	v_fmac_f32_e32 v27, v31, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v25
	v_fma_f32 v34, -v25, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v32, v34, v32
	v_div_fmas_f32 v17, v22, v17, v29
	v_fma_f32 v22, -v23, v27, v30
	v_rcp_f32_e32 v30, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v20, v100
	v_div_fmas_f32 v22, v22, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v113, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v22, v0, v101
	v_fma_f32 v28, -v33, v30, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v27, vcc_lo, v97, v21, v97
	v_div_scale_f32 v28, s0, v87, v24, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v86
	v_dual_mul_f32 v20, v28, v30 :: v_dual_mul_f32 v103, v102, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v27, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v119, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v0, -v25, v29, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v22, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v0, v32
	v_fma_f32 v0, -v33, v20, v28
	v_div_scale_f32 v23, s1, v86, v26, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v25, v29, v27
	v_fmac_f32_e32 v20, v0, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v31, v34, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v114, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v33, v20, v28
	v_fmac_f32_e32 v34, v0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v18, v21, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v20, v22, v30, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v118
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v24, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v17, v17, v85
	v_div_scale_f32 v29, s0, v85, v17, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v19
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v19, v0, 1.0
	v_fmac_f32_e32 v0, v22, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v29, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v22
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v23, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v19, v25, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v21, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v32, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v19, v25, v29
	v_div_scale_f32 v29, null, v22, v22, v112
	v_fma_f32 v23, -v31, v21, v23
	v_div_scale_f32 v31, null, v24, v24, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v28, v31
	v_div_fmas_f32 v21, v23, v34, v21
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v30, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v19, v0, v25
	v_rcp_f32_e32 v25, v29
	v_div_fixup_f32 v21, v21, v26, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v0, v17, v85
	v_fma_f32 v27, -v31, v28, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_mul_f32 v94, v94, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v95, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v27, v28
	v_div_scale_f32 v27, vcc_lo, v118, v24, v118
	v_fma_f32 v30, -v29, v25, 1.0
	v_div_scale_f32 v17, null, v23, v23, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v26, v27, v28 :: v_dual_fmac_f32 v25, v30, v25
	v_div_scale_f32 v30, s0, v112, v22, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v104
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v93, v20 :: v_dual_mul_f32 v20, v30, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v33
	v_ldexp_f32 v0, v19, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v17
	v_fma_f32 v32, -v31, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v17, v19, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, v32, v28
	v_div_scale_f32 v32, null, v0, v0, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v21, v19
	v_fma_f32 v18, -v31, v26, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v21, v32
	v_fma_f32 v27, -v29, v20, v30
	v_div_scale_f32 v31, s1, v84, v23, v84
	v_div_fmas_f32 v18, v18, v28, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v27, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v31, v19
	v_div_fixup_f32 v18, v18, v24, v118
	v_fma_f32 v33, -v32, v21, 1.0
	v_fma_f32 v24, -v29, v20, v30
	v_div_scale_f32 v30, s3, v104, v0, v104
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v21, v33, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v17, v28, v31
	v_div_fmas_f32 v20, v24, v25, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v30, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v29, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v32, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v17, v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v112
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v27, v26
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v19, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v116, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v23, v84
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v99, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v32, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v19, v19, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v29, v25
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v30, v21, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v31, v28, 1.0
	v_div_fixup_f32 v0, v21, v0, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, v24, v24, v96
	v_rcp_f32_e32 v21, v33
	v_fmac_f32_e32 v28, v25, v28
	v_div_scale_f32 v25, vcc_lo, v98, v26, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v117, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v25, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v31, v34, v25
	v_fma_f32 v23, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v34, v22, v28
	v_fma_f32 v22, -v33, v21, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v30, v23, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v107, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s0, v96, v24, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v31, v34, v25
	v_fmac_f32_e32 v21, v22, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v23, v17, v30
	v_div_scale_f32 v22, s1, v90, v19, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v28, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v22, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v20, v26, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v33, v31, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v27, v23, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v20, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v76, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v29, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v33, v31, v22
	v_fma_f32 v17, -v27, v23, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v27, 0xbfb8aa3b, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v0, v0, v77
	v_div_scale_f32 v29, s3, v77, v0, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v25, v28, 1.0
	v_fmac_f32_e32 v28, v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v17, v17, v30, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v23, v29, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v17, v24, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v23, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v69
	v_exp_f32_e32 v20, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v30, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v24, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v20, v20, v32
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v21, v22, v21, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v21, v19, v90
	v_div_scale_f32 v34, null, v20, v20, v82
	v_fma_f32 v21, -v25, v23, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v168
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v34
	v_fma_f32 v27, -v34, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, s0, v82, v20, v82
	v_mul_f32_e32 v29, v27, v26
	v_div_fmas_f32 v21, v21, v28, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v77, v91, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v79, v79, v0 :: v_dual_fmac_f32 v28, 0xbfb8aa3b, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v74
	v_fma_f32 v24, -v34, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v0, v0, v69
	v_rcp_f32_e32 v23, v25
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v17, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v28, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v23, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v17, 1.0
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, s1, v74, v22, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v21, v17
	v_fmac_f32_e32 v29, v24, v26
	v_div_scale_f32 v21, s0, v69, v0, v69
	v_mul_f32_e32 v24, v30, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v34, v29, v27
	v_div_fmas_f32 v19, v19, v26, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v21, v17
	v_fma_f32 v27, -v25, v24, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v19, v20, v82
	v_fmac_f32_e32 v24, v27, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v25, v24, v30
	v_div_scale_f32 v25, null, v18, v18, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v23, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v26, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	v_exp_f32_e32 v28, v28
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v74
	v_fma_f32 v22, -v31, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v166
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v26, 1.0
	v_fmac_f32_e32 v29, v22, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v27
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, s1, v70, v18, v70
	v_fma_f32 v21, -v31, v29, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v30, v26
	v_div_fmas_f32 v17, v21, v17, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v25, v27, v30
	v_div_fixup_f32 v0, v17, v0, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v88, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v25, v27, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v26, v27
	v_div_scale_f32 v27, vcc_lo, v63, v22, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v21, v18, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v61
	v_exp_f32_e32 v21, v29
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v71, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v23, v24, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v22, v22, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v23, v23, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v31, null, v26, v26, v61
	v_rcp_f32_e32 v30, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v24, v32, 1.0
	v_fmac_f32_e32 v32, v34, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v28, -v33, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v29, v27, v32 :: v_dual_fmac_f32 v30, v28, v30
	v_div_scale_f32 v28, s0, v62, v23, v62
	v_fma_f32 v17, -v24, v29, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v18, v28, v30 :: v_dual_fmac_f32 v29, v17, v32
	v_fma_f32 v17, -v33, v18, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v18, v17, v30
	v_fma_f32 v17, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v34, v17, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v89, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v21, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v68, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v24, v29, v27
	v_fma_f32 v21, -v33, v18, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v19, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v0, v0, v60
	v_div_fixup_f32 v19, v19, v22, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v29, s0, v60, v0, v60
	v_div_fmas_f32 v18, v21, v30, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v23, v62
	v_fma_f32 v22, -v20, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v27
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v22, v17
	v_div_scale_f32 v24, s1, v61, v26, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v28, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v21, v24, v34
	v_ldexp_f32 v23, v23, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v29, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v21, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v20, v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v27, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v32, v17
	v_fma_f32 v24, -v31, v21, v24
	v_div_scale_f32 v31, null, v23, v23, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v22
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v31
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v20, -v20, v25, v29
	v_div_fmas_f32 v21, v24, v34, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v30, v27
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v17, v20, v17, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v31, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v21, v21, v26, v61
	v_div_fixup_f32 v0, v17, v0, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v244, v18 :: v_dual_fmac_f32 v28, v27, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, vcc_lo, v81, v23, v81
	v_div_scale_f32 v17, null, v24, v24, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v247, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v27, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v20, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v246, v21
	v_mul_f32_e32 v60, v83, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v31, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v32, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v32, null, v0, v0, v75
	v_fma_f32 v21, -v17, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v31, v26, v27
	v_div_scale_f32 v31, s1, v54, v24, v54
	v_fmac_f32_e32 v20, v21, v20
	v_rcp_f32_e32 v21, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v19, v19, v28, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v31, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v19, v19, v23, v81
	v_fma_f32 v33, -v32, v21, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v151, v19 :: v_dual_fmac_f32 v21, v33, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v22, v22, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v29, v25, 1.0
	v_fmac_f32_e32 v25, v30, v25
	v_div_scale_f32 v30, s0, v80, v22, v80
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v30, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v29, v18, v30
	v_fmac_f32_e32 v18, v27, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v29, v18, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v30, s3, v75, v0, v75
	v_fma_f32 v29, -v17, v28, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v18, v23, v25, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v23, v30, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v29, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v18, v22, v80
	v_fma_f32 v29, -v32, v23, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v17, v28, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v29, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v33
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v45
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v32, v23, v30
	v_div_fmas_f32 v17, v17, v20, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v26, v26, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v34
	v_ldexp_f32 v25, v29, v25
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v17, v24, v54
	v_div_fmas_f32 v21, v30, v21, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v23, 1.0, v25 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v223, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v75
	v_fma_f32 v25, -v31, v28, 1.0
	v_div_scale_f32 v27, null, v23, v23, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v49, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v25, v28
	v_div_scale_f32 v25, vcc_lo, v47, v26, v47
	v_rcp_f32_e32 v30, v27
	v_div_scale_f32 v17, s0, v46, v23, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v34, v25, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v193, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v34, v25
	v_fma_f32 v24, -v27, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v22, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v24, v30
	v_fma_f32 v18, -v31, v34, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v25, null, v0, v0, v44
	v_mul_f32_e32 v24, v17, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v28, v34
	v_rcp_f32_e32 v28, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v27, v24, v17
	v_div_fixup_f32 v18, v18, v26, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v29, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v25, v28, 1.0
	v_div_scale_f32 v29, s3, v44, v0, v44
	v_fma_f32 v17, -v27, v24, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v26, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v203
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v30, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v199
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v24, v29, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v17, v23, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v25, v24, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v33, null, v20, v20, v45
	v_fmac_f32_e32 v24, v30, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v33
	v_fma_f32 v22, -v33, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, s1, v45, v20, v45
	v_mul_f32_e32 v31, v22, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v33, v31, v22
	v_fmac_f32_e32 v31, v19, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v33, v31, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v19, v19, v32
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v22, v21, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v21, v20, v45
	v_div_scale_f32 v34, null, v19, v19, v203
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v25, v24, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v72, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v205, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v199
	v_div_fmas_f32 v21, v21, v28, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v153
	v_ldexp_f32 v23, v23, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v21, v0, v44
	v_fma_f32 v27, -v34, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v204, v18 :: v_dual_mul_f32 v47, v73, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, s0, v203, v19, v203
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v25, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v232
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v23 :: v_dual_mul_f32 v29, v27, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v24, v30, v24
	v_div_scale_f32 v30, s1, v199, v22, v199
	v_fma_f32 v23, -v34, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v0, v0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v23, v26
	v_mul_f32_e32 v23, v30, v24
	v_rcp_f32_e32 v17, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v34, v29, v27
	v_fma_f32 v27, -v25, v23, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v28, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v26, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v23, v27, v24 :: v_dual_add_f32 v18, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v17, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v20, v19, v203
	v_fma_f32 v20, -v25, v23, v30
	v_div_scale_f32 v25, null, v18, v18, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v17, v21, v17
	v_div_scale_f32 v21, s0, v67, v0, v67
	v_rcp_f32_e32 v26, v25
	v_div_fmas_f32 v20, v20, v24, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v21, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v20, v22, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v28
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v248
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v31, v29, v21
	v_fma_f32 v30, -v25, v26, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v206
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v150
	v_exp_f32_e32 v24, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v22, v17
	v_fmac_f32_e32 v26, v30, v26
	v_div_scale_f32 v30, s1, v232, v18, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v28, v27
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v31, v29, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, v30, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v24, v23
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v25, v27, v30
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v24, null, v22, v22, v197
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v31, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v24
	v_div_fmas_f32 v17, v21, v17, v29
	v_div_scale_f32 v33, null, v23, v23, v248
	v_fma_f32 v21, -v25, v27, v30
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v33
	v_div_fixup_f32 v0, v17, v0, v67
	v_div_fmas_f32 v21, v21, v26, v27
	v_fma_f32 v34, -v24, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v31, v28
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, vcc_lo, v197, v22, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v34, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v33, v30, 1.0
	v_div_fixup_f32 v18, v21, v18, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v27, v32
	v_div_scale_f32 v31, null, v26, v26, v43
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s0, v248, v23, v248
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v66, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v24, v29, v27
	v_rcp_f32_e32 v34, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v18, v28, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v65, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v17, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v221, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v33, v18, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v21, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v64, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v24, v29, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v17, v30
	v_fma_f32 v17, -v31, v34, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v19, v32, v29
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v20, -v33, v18, v28
	v_fmac_f32_e32 v34, v17, v34
	v_div_scale_f32 v17, s1, v43, v26, v43
	v_div_scale_f32 v21, null, v0, v0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v20, v30, v18
	v_mul_f32_e32 v20, v17, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v21
	v_div_fixup_f32 v19, v19, v22, v197
	v_fma_f32 v22, -v31, v20, v17
	v_div_fixup_f32 v18, v18, v23, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v56
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v22, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v27
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v21, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v1, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v31, v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v24, v2, v24
	v_div_scale_f32 v30, s0, v42, v0, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v25, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v34, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v22, v30, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v17, v26, v43
	v_div_scale_f32 v28, null, v20, v20, v56
	v_fma_f32 v29, -v21, v22, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v25, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v26, v28
	v_div_scale_f32 v40, s0, v196, v1, v196
	v_fmac_f32_e32 v22, v29, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v23, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v1, v1, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v21, -v21, v22, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v25, v25, v195
	v_rcp_f32_e32 v32, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v24, v22
	v_div_scale_f32 v22, null, v2, v2, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v27
	v_fma_f32 v29, -v28, v26, 1.0
	v_div_scale_f32 v24, vcc_lo, v56, v20, v56
	v_rcp_f32_e32 v34, v22
	v_div_fixup_f32 v0, v21, v0, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v26, v29, v26
	v_fma_f32 v29, -v23, v32, 1.0
	v_div_scale_f32 v43, s3, v50, v2, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v27, v33, 1.0
	v_dual_mul_f32 v35, v24, v26 :: v_dual_fmac_f32 v32, v29, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v57, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v22, v34, 1.0
	v_fmac_f32_e32 v33, v21, v33
	v_div_scale_f32 v21, s1, v195, v25, v195
	v_fma_f32 v0, -v28, v35, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v41, v40, v32 :: v_dual_fmac_f32 v34, v29, v34
	v_mul_f32_e32 v42, v21, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v48, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v0, v26
	v_fma_f32 v0, -v23, v41, v40
	v_mul_f32_e32 v48, v43, v34
	v_fma_f32 v17, -v27, v42, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v190, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v28, v35, v24
	v_fmac_f32_e32 v41, v0, v32
	v_fma_f32 v0, -v22, v48, v43
	v_fmac_f32_e32 v42, v17, v33
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v24, |v60|, |v61|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v18, v26, v35
	v_fma_f32 v18, -v23, v41, v40
	v_fmac_f32_e32 v48, v0, v34
	v_fma_f32 v0, -v27, v42, v21
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v17, v20, v56
	v_div_fmas_f32 v18, v18, v32, v41
	v_fma_f32 v21, -v22, v48, v43
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v32, v201, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v33, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v18, v1, v196
	v_div_fmas_f32 v21, v21, v34, v48
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v18, |v108|, |v109|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v25, v195
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v19, |v110|, |v100|, |v101|
	v_max3_f32 v20, |v92|, |v93|, |v94|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v21, v2, v50
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v95|, |v130|, |v16|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v145, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v102|, |v103|, |v131|
	v_max3_f32 v22, |v68|, |v69|, |v70|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v191, v2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v18, |v111|, v19
	v_max3_f32 v18, v20, v21, |v127|
	v_max_f32_e64 v19, |v84|, |v85|
	v_max3_f32 v20, |v86|, |v76|, |v77|
	v_max3_f32 v23, |v71|, |v14|, |v13|
	v_max3_f32 v27, |v62|, |v52|, |v53|
	v_max3_f32 v28, |v44|, |v45|, |v46|
	v_max3_f32 v33, |v47|, |v10|, |v8|
	v_max3_f32 v21, |v78|, |v79|, |v15|
	v_max3_f32 v19, v19, |v87|, v20
	v_max3_f32 v20, v22, v23, |v12|
	v_max3_f32 v22, |v54|, |v55|, |v11|
	v_max3_f32 v23, v24, |v63|, v27
	v_max3_f32 v24, v28, v33, |v9|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v143, v1
	v_mul_f32_e32 v28, v213, v17
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v18
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v1, v19, v21, v20
	v_max3_f32 v2, v23, v22, v24
	v_max3_f32 v20, |v28|, |v27|, |v26|
	v_max3_f32 v21, |v25|, |v4|, |v5|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v22, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v17, |v36|, |v37|
	v_max3_f32 v19, |v30|, |v31|, |v7|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v21, |v6|
	v_max_f32_e32 v21, v22, v22
	v_max3_f32 v18, |v38|, |v32|, |v29|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v24, 0x60, v124
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v23, v23 :: v_dual_lshlrev_b32 v23, 4, v124
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v33, 8, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v17, v17, |v39|, v18
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v40, 3, v207
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v17, v19, v20
	v_dual_max_f32 v17, v0, v21 :: v_dual_and_b32 v0, 3, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v19, v2, v22 :: v_dual_and_b32 v2, 4, v124
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v22, v0, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v18, v1, v18 :: v_dual_lshlrev_b32 v21, 5, v0
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v1, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v41, v2, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v34, v2, 2, v22
	v_and_or_b32 v23, 0x680, v23, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v22, 1, v207
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v35, v21, v24
	v_lshl_add_u32 v34, v33, 4, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v23, v23, v24
	v_lshlrev_b32_e32 v33, 3, v33
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v1
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v34, v22, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v23, v41, v40, v23
	ds_store_b128 v1, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v17
	v_dual_mov_b32 v23, v18 :: v_dual_mov_b32 v34, v19
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v20, v20
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v17, v1
	v_max_f32_e32 v17, v18, v23
	v_dual_max_f32 v18, v19, v19 :: v_dual_max_f32 v19, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v34, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v18, v18, v19 :: v_dual_max_f32 v19, v35, v20
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v35, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v34, v34, v34
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v23, v17, v34
	v_dual_max_f32 v17, v20, v20 :: v_dual_max_f32 v20, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v34, v1 :: v_dual_mov_b32 v35, v23
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v18, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v20, v19, v20
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v41, v20
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v17, v34, v34 :: v_dual_max_f32 v18, v35, v35
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v34, 1, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v17, v1, v17 :: v_dual_max_f32 v18, v23, v18
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v35, 0, v207
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v23, v41, v41
	v_max_f32_e32 v19, v40, v1
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v20, v20, v23
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v35, v34, v33
	v_add3_u32 v0, v0, v1, v33
	ds_store_b128 v2, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v0
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v20, 4, v126
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v33, 32, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v40, v40 :: v_dual_max_f32 v17, v42, v42
	v_max_f32_e32 v41, v41, v41
	v_dual_max_f32 v43, v43, v43 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v34, 0x2b8cbccc, v17
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v41, 0x2b8cbccc, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v43, 0x2b8cbccc, v43
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v35, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v40, null, 0x40e00000, 0x40e00000, v34
	v_rcp_f32_e32 v23, v19
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v17, s0, s34, v33
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v42, v40
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v49, null, 0x40e00000, 0x40e00000, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v19, v23, 1.0
	v_div_scale_f32 v50, null, 0x40e00000, 0x40e00000, v43
	v_div_scale_f32 v57, s9, v43, 0x40e00000, v43
	v_fmac_f32_e32 v23, v18, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v48, -v40, v42, 1.0
	v_mul_f32_e32 v33, v35, v23
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[17:18]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v0, -v19, v33, v35
	v_div_scale_f32 v48, s7, v34, 0x40e00000, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v0, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s34, v1
	v_add_co_ci_u32_e64 v1, null, s35, 0, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v19, -v19, v33, v35
	v_rcp_f32_e32 v35, v49
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[17:18]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[0:1]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v19, v19, v23, v33
	v_mul_f32_e32 v23, v48, v42
	v_rcp_f32_e32 v33, v50
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v19, 0x40e00000, v2
	v_fma_f32 v17, -v49, v35, 1.0
	v_fma_f32 v18, -v40, v23, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v17, v35
	v_div_scale_f32 v17, s8, v41, 0x40e00000, v41
	v_fmac_f32_e32 v23, v18, v42
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v18.l, v2.h
	v_mov_b16_e32 v18.h, v51.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v19, -v50, v33, 1.0
	v_mul_f32_e32 v56, v17, v35
	v_fma_f32 v0, -v40, v23, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v33, v19, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v49, v56, v17
	v_div_fmas_f32 v23, v0, v42, v23
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v19, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v40, v57, v33
	v_fmac_f32_e32 v56, v18, v35
	v_div_fixup_f32 v23, v23, 0x40e00000, v34
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s34, v20
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v18, 0xffff0000, v19
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v50, v40, v57
	v_fma_f32 v17, -v49, v56, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v23.h
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v34, null, v18, v18, v108
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v40, v2, v33
	v_div_fmas_f32 v2, v17, v35, v56
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v17, v34
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.h, v51.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v35, -v50, v40, v57
	v_div_fixup_f32 v2, v2, 0x40e00000, v41
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[0:1]
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v50, null, v18, v18, v110
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v33, v35, v33, v40
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v40, 1, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v41, -v34, v17, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v59, null, v18, v18, v100
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v23, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v17, v41, v17
	v_div_scale_f32 v41, vcc_lo, v108, v18, v108
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v64, null, v18, v18, v101
	v_mul_f32_e32 v40, v41, v17
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v33, v33, 0x40e00000, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v23, v2, v0, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v65, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v34, v40, v41
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v51.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v0, v17
	v_rcp_f32_e32 v0, v50
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v49, 1, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v34, -v34, v40, v41
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v33, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v17, v34, v17, v40
	v_fma_f32 v57, -v50, v0, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v0, v57, v0 :: v_dual_and_b32 v33, 0xffff0000, v2
	v_rcp_f32_e32 v57, v59
	v_fma_f32 v66, -v59, v57, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v66, v57
	v_fma_f32 v66, -v64, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v35, null, v18, v18, v109
	v_div_scale_f32 v48, null, v18, v18, v111
	v_div_scale_f32 v51, s9, v109, v18, v109
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v35
	v_div_fixup_f32 v34, v17, v18, v108
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v66, null, v18, v18, v103
	v_div_scale_f32 v75, null, v18, v18, v94
	v_div_scale_f32 v83, null, v18, v18, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v35, v43, 1.0
	v_rcp_f32_e32 v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v42, v43
	v_rcp_f32_e32 v42, v48
	v_mul_f32_e32 v49, v51, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v35, v49, v51
	v_fma_f32 v56, -v48, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v49, v41, v43 :: v_dual_fmac_f32 v42, v56, v42
	v_div_scale_f32 v56, s10, v111, v18, v111
	v_div_scale_f32 v41, s11, v110, v18, v110
	v_fma_f32 v17, -v35, v49, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v40, v56, v42 :: v_dual_mul_f32 v51, v41, v0
	v_div_fmas_f32 v17, v17, v43, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v48, v40, v56
	v_div_scale_f32 v49, s9, v100, v18, v100
	v_fma_f32 v43, -v50, v51, v41
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v35, v42
	v_div_fixup_f32 v35, v17, v18, v109
	v_fmac_f32_e32 v51, v43, v0
	v_mul_f32_e32 v43, v49, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v48, v40, v56
	v_div_scale_f32 v48, s12, v101, v18, v101
	v_div_scale_f32 v56, null, v18, v18, v102
	v_div_fmas_f32 v17, v17, v42, v40
	v_fma_f32 v40, -v50, v51, v41
	v_fma_f32 v41, -v59, v43, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v56
	v_mul_f32_e32 v42, v48, v65
	s_mov_b32 vcc_lo, s11
	v_div_fmas_f32 v0, v40, v0, v51
	v_fmac_f32_e32 v43, v41, v57
	v_rcp_f32_e32 v51, v66
	v_fma_f32 v67, -v64, v42, v48
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v41, v0, v18, v110
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v56, v50, 1.0
	v_fma_f32 v0, -v59, v43, v49
	v_fmac_f32_e32 v42, v67, v65
	v_div_scale_f32 v59, null, v18, v18, v131
	v_div_fixup_f32 v40, v17, v18, v111
	v_fmac_f32_e32 v50, v72, v50
	v_div_scale_f32 v17, s10, v102, v18, v102
	v_fma_f32 v49, -v66, v51, 1.0
	v_div_fmas_f32 v0, v0, v57, v43
	v_fma_f32 v43, -v64, v42, v48
	v_rcp_f32_e32 v57, v59
	v_div_scale_f32 v64, null, v18, v18, v92
	v_mul_f32_e32 v48, v17, v50
	v_fmac_f32_e32 v51, v49, v51
	v_div_scale_f32 v49, s9, v103, v18, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v73, v64
	s_mov_b32 vcc_lo, s12
	v_div_fmas_f32 v43, v43, v65, v42
	v_fma_f32 v65, -v56, v48, v17
	v_mul_f32_e32 v67, v49, v51
	v_fma_f32 v72, -v59, v57, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v42, v0, v18, v100
	v_fmac_f32_e32 v48, v65, v50
	v_fma_f32 v0, -v66, v67, v49
	v_fmac_f32_e32 v57, v72, v57
	v_div_scale_f32 v65, s11, v131, v18, v131
	v_div_scale_f32 v72, null, v18, v18, v93
	v_fma_f32 v74, -v64, v73, 1.0
	v_fma_f32 v17, -v56, v48, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v67, v0, v51 :: v_dual_mul_f32 v0, v65, v57
	v_rcp_f32_e32 v56, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, s12, v92, v18, v92
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, null, v80, v80, v85
	v_div_fmas_f32 v17, v17, v50, v48
	v_fma_f32 v48, -v66, v67, v49
	v_fma_f32 v49, -v59, v0, v65
	v_mul_f32_e32 v50, v74, v73
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v66, -v72, v56, 1.0
	v_div_fmas_f32 v51, v48, v51, v67
	v_fmac_f32_e32 v0, v49, v57
	v_rcp_f32_e32 v67, v75
	v_fma_f32 v81, -v64, v50, v74
	v_fmac_f32_e32 v56, v66, v56
	v_div_scale_f32 v66, s9, v93, v18, v93
	v_div_fixup_f32 v48, v17, v18, v102
	v_fma_f32 v17, -v59, v0, v65
	v_fmac_f32_e32 v50, v81, v73
	v_div_scale_f32 v65, null, v18, v18, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v49, v51, v18, v103
	v_mul_f32_e32 v59, v66, v56
	v_fma_f32 v51, -v75, v67, 1.0
	v_div_fmas_f32 v0, v17, v57, v0
	v_fma_f32 v17, -v64, v50, v74
	v_rcp_f32_e32 v64, v65
	v_div_scale_f32 v81, null, v18, v18, v130
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v57, -v72, v59, v66
	v_fmac_f32_e32 v67, v51, v67
	v_div_scale_f32 v74, s10, v94, v18, v94
	v_div_fmas_f32 v17, v17, v73, v50
	v_rcp_f32_e32 v73, v81
	v_dual_fmac_f32 v59, v57, v56 :: v_dual_and_b32 v58, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v57, v74, v67
	v_fma_f32 v82, -v65, v64, 1.0
	v_div_fixup_f32 v50, v0, v18, v131
	v_div_fixup_f32 v51, v17, v18, v92
	v_fma_f32 v0, -v72, v59, v66
	v_fma_f32 v17, -v75, v57, v74
	v_fmac_f32_e32 v64, v82, v64
	v_div_scale_f32 v66, s11, v95, v18, v95
	v_fma_f32 v72, -v81, v73, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v57, v17, v67
	v_div_fmas_f32 v0, v0, v56, v59
	v_mul_f32_e32 v17, v66, v64
	v_fmac_f32_e32 v73, v72, v73
	v_div_scale_f32 v59, s9, v130, v18, v130
	v_div_scale_f32 v82, null, v18, v18, v16
	v_div_fixup_f32 v56, v0, v18, v93
	v_fma_f32 v0, -v75, v57, v74
	v_fma_f32 v74, -v65, v17, v66
	v_mul_f32_e32 v75, v59, v73
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v72, v82
	v_div_fmas_f32 v0, v0, v67, v57
	v_fmac_f32_e32 v17, v74, v64
	v_fma_f32 v67, -v81, v75, v59
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v74, s10, v16, v18, v16
	v_div_fixup_f32 v57, v0, v18, v94
	v_fma_f32 v0, -v65, v17, v66
	v_fmac_f32_e32 v75, v67, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v82, v72, 1.0
	v_div_scale_f32 v66, s12, v127, v18, v127
	v_div_fmas_f32 v0, v0, v64, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v81, v75, v59
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v67, null, v80, v80, v84
	v_div_fixup_f32 v43, v43, v18, v101
	v_div_fmas_f32 v17, v17, v73, v75
	v_rcp_f32_e32 v73, v90
	v_fmac_f32_e32 v72, v89, v72
	v_fma_f32 v89, -v83, v88, 1.0
	v_rcp_f32_e32 v81, v67
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v64, v17, v18, v130
	v_mul_f32_e32 v65, v74, v72
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v17, s9, v84, v80, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v82, v65, v74
	v_mul_f32_e32 v89, v66, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v67, v81, 1.0
	v_fmac_f32_e32 v65, v59, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v83, v89, v66
	v_div_fixup_f32 v59, v0, v18, v95
	v_fmac_f32_e32 v81, v91, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v82, v65, v74
	v_fmac_f32_e32 v89, v75, v88
	v_fma_f32 v74, -v90, v73, 1.0
	v_div_scale_f32 v75, null, v80, v80, v87
	v_div_scale_f32 v82, null, v80, v80, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v74, v73
	v_div_fmas_f32 v0, v0, v72, v65
	v_rcp_f32_e32 v72, v75
	v_fma_f32 v65, -v83, v89, v66
	v_mul_f32_e32 v66, v17, v81
	v_div_scale_f32 v74, s10, v85, v80, v85
	v_rcp_f32_e32 v91, v82
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v67, v66, v17
	v_div_fmas_f32 v65, v65, v88, v89
	v_mul_f32_e32 v88, v74, v73
	v_fma_f32 v89, -v75, v72, 1.0
	v_div_fixup_f32 v16, v0, v18, v16
	v_fmac_f32_e32 v66, v83, v81
	v_div_fixup_f32 v65, v65, v18, v127
	v_fma_f32 v0, -v90, v88, v74
	v_fmac_f32_e32 v72, v89, v72
	v_div_scale_f32 v18, s11, v87, v80, v87
	v_div_scale_f32 v83, null, v80, v80, v76
	v_fma_f32 v89, -v82, v91, 1.0
	v_fma_f32 v17, -v67, v66, v17
	v_fmac_f32_e32 v88, v0, v73
	v_mul_f32_e32 v0, v18, v72
	v_rcp_f32_e32 v92, v83
	v_fmac_f32_e32 v91, v89, v91
	v_div_scale_f32 v89, s12, v86, v80, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v67, -v75, v0, v18
	v_div_fmas_f32 v17, v17, v81, v66
	v_fma_f32 v66, -v90, v88, v74
	v_mul_f32_e32 v74, v89, v91
	v_div_scale_f32 v90, null, v80, v80, v77
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v83, v92, 1.0
	v_div_fmas_f32 v73, v66, v73, v88
	v_fmac_f32_e32 v0, v67, v72
	v_rcp_f32_e32 v88, v90
	v_fma_f32 v93, -v82, v74, v89
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v81, s9, v76, v80, v76
	v_div_fixup_f32 v66, v17, v80, v84
	v_fma_f32 v17, -v75, v0, v18
	v_fmac_f32_e32 v74, v93, v91
	v_div_scale_f32 v84, null, v80, v80, v78
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v67, v73, v80, v85
	v_mul_f32_e32 v18, v81, v92
	v_fma_f32 v73, -v90, v88, 1.0
	v_div_fmas_f32 v0, v17, v72, v0
	v_fma_f32 v17, -v82, v74, v89
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v85, null, v80, v80, v79
	v_fma_f32 v72, -v83, v18, v81
	v_fmac_f32_e32 v88, v73, v88
	v_div_scale_f32 v75, s10, v77, v80, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v85
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v18, v72, v92
	v_div_fmas_f32 v17, v17, v91, v74
	v_mul_f32_e32 v91, v75, v88
	v_fma_f32 v74, -v84, v82, 1.0
	v_div_fixup_f32 v72, v0, v80, v87
	v_fma_f32 v0, -v83, v18, v81
	v_div_fixup_f32 v73, v17, v80, v86
	v_fma_f32 v17, -v90, v91, v75
	v_fmac_f32_e32 v82, v74, v82
	v_div_scale_f32 v81, s11, v78, v80, v78
	v_fma_f32 v74, -v85, v89, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, null, v80, v80, v15
	v_div_fmas_f32 v0, v0, v92, v18
	v_fmac_f32_e32 v91, v17, v88
	v_mul_f32_e32 v17, v81, v82
	v_fmac_f32_e32 v89, v74, v89
	v_div_scale_f32 v86, s9, v79, v80, v79
	v_rcp_f32_e32 v18, v83
	v_div_scale_f32 v87, null, v80, v80, v68
	v_div_fixup_f32 v74, v0, v80, v76
	v_fma_f32 v0, -v90, v91, v75
	v_fma_f32 v75, -v84, v17, v81
	v_mul_f32_e32 v76, v86, v89
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v90, v87
	v_div_fmas_f32 v0, v0, v88, v91
	v_fmac_f32_e32 v17, v75, v82
	v_fma_f32 v88, -v85, v76, v86
	v_fma_f32 v92, -v83, v18, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v75, v0, v80, v77
	v_fma_f32 v0, -v84, v17, v81
	v_fmac_f32_e32 v76, v88, v89
	v_fmac_f32_e32 v18, v92, v18
	v_div_scale_f32 v91, s10, v15, v80, v15
	v_fma_f32 v92, -v87, v90, 1.0
	v_div_scale_f32 v88, null, v80, v80, v69
	v_div_fmas_f32 v0, v0, v82, v17
	v_fma_f32 v17, -v85, v76, v86
	v_div_scale_f32 v86, null, v80, v80, v70
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v91, v18
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v84, s12, v68, v80, v68
	v_rcp_f32_e32 v82, v88
	v_div_fmas_f32 v17, v17, v89, v76
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v77, -v83, v81, v91
	v_mul_f32_e32 v85, v84, v90
	v_div_fixup_f32 v76, v0, v80, v78
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v77, v18
	v_fma_f32 v92, -v87, v85, v84
	v_fma_f32 v93, -v88, v82, 1.0
	v_div_fixup_f32 v77, v17, v80, v79
	v_fma_f32 v78, -v86, v89, 1.0
	v_div_scale_f32 v79, null, v80, v80, v71
	v_fma_f32 v0, -v83, v81, v91
	v_fmac_f32_e32 v85, v92, v90
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v17, s9, v69, v80, v69
	v_fmac_f32_e32 v89, v78, v89
	v_rcp_f32_e32 v78, v79
	v_div_fmas_f32 v0, v0, v18, v81
	v_fma_f32 v18, -v87, v85, v84
	v_mul_f32_e32 v81, v17, v82
	v_div_scale_f32 v83, s10, v70, v80, v70
	v_div_scale_f32 v84, null, v80, v80, v14
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v87, v83, v89
	v_div_fmas_f32 v18, v18, v90, v85
	v_fma_f32 v85, -v88, v81, v17
	v_fma_f32 v90, -v79, v78, 1.0
	v_rcp_f32_e32 v91, v84
	v_div_fixup_f32 v15, v0, v80, v15
	v_div_fixup_f32 v68, v18, v80, v68
	v_fmac_f32_e32 v81, v85, v82
	v_fma_f32 v0, -v86, v87, v83
	v_fmac_f32_e32 v78, v90, v78
	v_div_scale_f32 v18, s11, v71, v80, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v88, v81, v17
	v_fmac_f32_e32 v87, v0, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v84, v91, 1.0
	v_mul_f32_e32 v0, v18, v78
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v80, v80, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v14, v80, v14
	v_div_fmas_f32 v17, v17, v82, v81
	v_fma_f32 v82, -v79, v0, v18
	v_fma_f32 v81, -v86, v87, v83
	v_mul_f32_e32 v83, v90, v91
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, null, v80, v80, v13
	v_fmac_f32_e32 v0, v82, v78
	v_rcp_f32_e32 v82, v92
	v_div_fmas_f32 v81, v81, v89, v87
	v_fma_f32 v87, -v84, v83, v90
	v_rcp_f32_e32 v88, v85
	v_div_fixup_f32 v69, v17, v80, v69
	v_fma_f32 v17, -v79, v0, v18
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v91
	v_div_fixup_f32 v70, v81, v80, v70
	v_div_scale_f32 v81, null, v58, v58, v60
	v_fma_f32 v79, -v92, v82, 1.0
	v_div_fmas_f32 v0, v17, v78, v0
	v_fma_f32 v17, -v84, v83, v90
	v_div_scale_f32 v84, s10, v12, v80, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v79, v82
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v86, -v85, v88, 1.0
	v_div_fmas_f32 v17, v17, v91, v83
	v_rcp_f32_e32 v79, v81
	v_mul_f32_e32 v83, v84, v82
	v_div_scale_f32 v87, null, v58, v58, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v14, v17, v80, v14
	v_div_fixup_f32 v71, v0, v80, v71
	v_fma_f32 v17, -v92, v83, v84
	v_fmac_f32_e32 v88, v86, v88
	v_div_scale_f32 v86, s9, v13, v80, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v81, v79, 1.0
	v_fmac_f32_e32 v83, v17, v82
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v18, v86, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v58, v58, v63
	v_fma_f32 v78, -v85, v18, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v18, v78, v88
	v_rcp_f32_e32 v78, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v85, v18, v86
	v_div_scale_f32 v85, s11, v60, v58, v60
	v_div_fmas_f32 v0, v0, v88, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v87, v78, 1.0
	v_mul_f32_e32 v17, v85, v79
	v_rcp_f32_e32 v18, v89
	v_div_scale_f32 v88, null, v58, v58, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v86, v78
	v_div_scale_f32 v86, s9, v61, v58, v61
	v_div_fixup_f32 v13, v0, v80, v13
	v_fma_f32 v0, -v92, v83, v84
	v_fma_f32 v84, -v81, v17, v85
	v_mul_f32_e32 v90, v86, v78
	v_rcp_f32_e32 v91, v88
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v92, -v89, v18, 1.0
	v_div_fmas_f32 v0, v0, v82, v83
	v_fmac_f32_e32 v17, v84, v79
	v_fma_f32 v82, -v87, v90, v86
	v_div_scale_f32 v83, s10, v63, v58, v63
	v_fmac_f32_e32 v18, v92, v18
	v_div_fixup_f32 v12, v0, v80, v12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v88, v91, 1.0
	v_fma_f32 v0, -v81, v17, v85
	v_fmac_f32_e32 v90, v82, v78
	v_div_scale_f32 v82, null, v58, v58, v52
	s_mov_b32 vcc_lo, s11
	v_dual_mul_f32 v80, v83, v18 :: v_dual_fmac_f32 v91, v84, v91
	v_div_scale_f32 v81, s12, v62, v58, v62
	v_div_fmas_f32 v0, v0, v79, v17
	v_fma_f32 v17, -v87, v90, v86
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v58, v58, v53
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v89, v80, v83
	v_mul_f32_e32 v85, v81, v91
	v_div_fmas_f32 v17, v17, v78, v90
	v_rcp_f32_e32 v78, v86
	v_div_fixup_f32 v60, v0, v58, v60
	v_fmac_f32_e32 v80, v79, v18
	v_fma_f32 v79, -v88, v85, v81
	v_fma_f32 v87, -v82, v84, 1.0
	v_div_fixup_f32 v61, v17, v58, v61
	v_div_scale_f32 v17, s9, v52, v58, v52
	v_fma_f32 v0, -v89, v80, v83
	v_fmac_f32_e32 v85, v79, v91
	v_fmac_f32_e32 v84, v87, v84
	v_fma_f32 v79, -v86, v78, 1.0
	v_div_scale_f32 v83, null, v58, v58, v54
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v58, v58, v55
	v_div_fmas_f32 v0, v0, v18, v80
	v_fma_f32 v18, -v88, v85, v81
	v_mul_f32_e32 v80, v17, v84
	v_fmac_f32_e32 v78, v79, v78
	v_rcp_f32_e32 v79, v83
	v_div_scale_f32 v81, s10, v53, v58, v53
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v90, v87
	v_div_fmas_f32 v18, v18, v91, v85
	v_fma_f32 v85, -v82, v80, v17
	v_mul_f32_e32 v88, v81, v78
	v_div_fixup_f32 v63, v0, v58, v63
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v80, v85, v84
	v_fma_f32 v0, -v86, v88, v81
	v_div_scale_f32 v85, null, v58, v58, v11
	v_div_fixup_f32 v62, v18, v58, v62
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v18, s11, v54, v58, v54
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v17, -v82, v80, v17
	v_fmac_f32_e32 v88, v0, v78
	v_rcp_f32_e32 v91, v85
	v_mul_f32_e32 v82, v18, v79
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v55, v58, v55
	v_div_fmas_f32 v0, v17, v84, v80
	v_fma_f32 v17, -v86, v88, v81
	v_div_scale_f32 v86, null, v58, v58, v44
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v80, -v83, v82, v18
	v_mul_f32_e32 v81, v89, v90
	v_fma_f32 v84, -v85, v91, 1.0
	v_div_fmas_f32 v17, v17, v78, v88
	v_rcp_f32_e32 v78, v86
	v_fmac_f32_e32 v82, v80, v79
	v_fma_f32 v80, -v87, v81, v89
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s9, v11, v58, v11
	v_div_fixup_f32 v0, v0, v58, v52
	v_div_fixup_f32 v17, v17, v58, v53
	v_fma_f32 v18, -v83, v82, v18
	v_fmac_f32_e32 v81, v80, v90
	v_mul_f32_e32 v53, v84, v91
	v_fma_f32 v52, -v86, v78, 1.0
	v_div_scale_f32 v80, null, v58, v58, v45
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, null, v58, v58, v46
	v_div_fmas_f32 v18, v18, v79, v82
	v_fma_f32 v79, -v87, v81, v89
	v_fma_f32 v82, -v85, v53, v84
	v_fmac_f32_e32 v78, v52, v78
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v87, s10, v44, v58, v44
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v53, v82, v91
	v_div_fmas_f32 v52, v79, v90, v81
	v_rcp_f32_e32 v79, v88
	v_mul_f32_e32 v81, v87, v78
	v_div_fixup_f32 v18, v18, v58, v54
	v_fma_f32 v54, -v85, v53, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v80, v83, 1.0
	v_div_fixup_f32 v52, v52, v58, v55
	v_fma_f32 v55, -v86, v81, v87
	v_div_scale_f32 v85, null, v58, v58, v47
	v_fmac_f32_e32 v83, v82, v83
	v_div_scale_f32 v82, s11, v45, v58, v45
	v_fma_f32 v84, -v88, v79, 1.0
	v_fmac_f32_e32 v81, v55, v78
	v_rcp_f32_e32 v55, v85
	v_div_scale_f32 v89, null, v58, v58, v10
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v84, v79
	v_div_fmas_f32 v53, v54, v91, v53
	v_mul_f32_e32 v54, v82, v83
	v_div_scale_f32 v84, s9, v46, v58, v46
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v11, v53, v58, v11
	v_fma_f32 v53, -v86, v81, v87
	v_fma_f32 v86, -v80, v54, v82
	v_mul_f32_e32 v87, v84, v79
	v_fma_f32 v91, -v85, v55, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v53, v53, v78, v81
	v_fmac_f32_e32 v54, v86, v83
	v_fma_f32 v78, -v88, v87, v84
	v_fmac_f32_e32 v55, v91, v55
	v_div_scale_f32 v81, s10, v47, v58, v47
	v_fma_f32 v86, -v89, v90, 1.0
	v_div_fixup_f32 v44, v53, v58, v44
	v_fma_f32 v53, -v80, v54, v82
	v_fmac_f32_e32 v87, v78, v79
	v_mul_f32_e32 v78, v81, v55
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v80, s12, v10, v58, v10
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v82, null, v58, v58, v8
	v_div_fmas_f32 v53, v53, v83, v54
	v_fma_f32 v83, -v85, v78, v81
	v_mul_f32_e32 v86, v80, v90
	v_fma_f32 v54, -v88, v87, v84
	v_rcp_f32_e32 v84, v82
	v_div_fixup_f32 v45, v53, v58, v45
	v_fmac_f32_e32 v78, v83, v55
	v_fma_f32 v83, -v89, v86, v80
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v58, v58, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v85, v78, v81
	v_fmac_f32_e32 v86, v83, v90
	v_div_fmas_f32 v54, v54, v79, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v82, v84, 1.0
	v_div_fmas_f32 v53, v53, v55, v78
	v_fma_f32 v55, -v89, v86, v80
	s_mov_b32 vcc_lo, s12
	v_rcp_f32_e32 v79, v88
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, null, v33, v33, v37
	v_div_fmas_f32 v55, v55, v90, v86
	v_div_fixup_f32 v46, v54, v58, v46
	v_div_scale_f32 v54, s9, v8, v58, v8
	v_div_scale_f32 v80, null, v33, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v10, v55, v58, v10
	v_rcp_f32_e32 v55, v87
	v_fma_f32 v81, -v88, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v83, v80
	v_div_fixup_f32 v47, v53, v58, v47
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v33, v33, v38
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s10, v9, v58, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v55, 1.0
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v86, v81, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v55, v89, v55 :: v_dual_mul_f32 v78, v54, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v88, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v82, v78, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v53, v79
	v_div_scale_f32 v53, s11, v36, v33, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v85, -v80, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v82, v78, v54
	v_div_scale_f32 v82, null, v33, v33, v39
	v_fmac_f32_e32 v83, v85, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v84, v78
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v78, -v88, v86, v81
	v_div_scale_f32 v84, s9, v37, v33, v37
	v_mul_f32_e32 v81, v53, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v8, v54, v58, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v91, v84, v55
	v_div_fmas_f32 v78, v78, v79, v86
	v_fma_f32 v89, -v80, v81, v53
	v_fma_f32 v88, -v82, v85, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v87, v91, v84
	v_div_fixup_f32 v9, v78, v58, v9
	v_div_scale_f32 v78, null, v33, v33, v32
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s12, v39, v33, v39
	v_fmac_f32_e32 v81, v89, v83
	v_fmac_f32_e32 v91, v79, v55
	v_fma_f32 v58, -v90, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v86, v88, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v80, v81, v53
	v_fma_f32 v79, -v87, v91, v84
	v_fmac_f32_e32 v92, v58, v92
	v_fma_f32 v54, -v82, v86, v88
	v_div_scale_f32 v58, s10, v38, v33, v38
	v_div_fmas_f32 v53, v53, v83, v81
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v86, v54, v85
	v_rcp_f32_e32 v54, v78
	v_div_fmas_f32 v55, v79, v55, v91
	v_mul_f32_e32 v80, v58, v92
	v_div_scale_f32 v81, null, v33, v33, v29
	v_fma_f32 v79, -v82, v86, v88
	v_div_fixup_f32 v36, v53, v33, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v90, v80, v58
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v78, v54, 1.0
	v_div_fmas_f32 v79, v79, v85, v86
	v_fmac_f32_e32 v80, v84, v92
	v_div_fixup_f32 v37, v55, v33, v37
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v54, v82, v54
	v_div_scale_f32 v82, s9, v32, v33, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v81, v83, 1.0
	v_fma_f32 v58, -v90, v80, v58
	v_div_fixup_f32 v39, v79, v33, v39
	v_mul_f32_e32 v53, v82, v54
	v_div_scale_f32 v79, null, v33, v33, v30
	v_fmac_f32_e32 v83, v55, v83
	v_div_scale_f32 v55, s11, v29, v33, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v78, v53, v82
	v_div_fmas_f32 v58, v58, v92, v80
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v55, v83
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v53, v84, v54
	v_div_fixup_f32 v38, v58, v33, v38
	v_div_scale_f32 v84, null, v33, v33, v31
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v78, v53, v82
	v_fma_f32 v78, -v81, v80, v55
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v53, v58, v54, v53
	v_div_scale_f32 v54, null, v33, v33, v7
	v_fmac_f32_e32 v80, v78, v83
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v33, v33, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v54
	v_div_scale_f32 v58, s9, v30, v33, v30
	v_div_fixup_f32 v32, v53, v33, v32
	v_fma_f32 v53, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	v_fma_f32 v55, -v81, v80, v55
	v_mul_f32_e32 v81, v58, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v53, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v54, v78, 1.0
	v_div_scale_f32 v53, s10, v31, v33, v31
	v_div_fmas_f32 v55, v55, v83, v80
	v_fma_f32 v80, -v79, v81, v58
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v33, v33, v27
	v_mul_f32_e32 v83, v53, v86
	v_div_scale_f32 v89, s11, v7, v33, v7
	v_fma_f32 v90, -v82, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v53
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v28, v33, v28
	v_div_fixup_f32 v29, v55, v33, v29
	v_fma_f32 v55, -v79, v81, v58
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v58, -v54, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v53, -v84, v83, v53
	v_fmac_f32_e32 v92, v58, v78
	v_fma_f32 v58, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v27, v33, v27
	v_div_fmas_f32 v55, v55, v85, v81
	v_fma_f32 v54, -v54, v92, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v79, v58, v88 :: v_dual_mul_f32 v58, v80, v91
	v_div_scale_f32 v81, null, v33, v33, v26
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v30, v55, v33, v30
	v_div_fmas_f32 v53, v53, v86, v83
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v54, v54, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v58, v80
	v_div_fixup_f32 v31, v53, v33, v31
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v7, v54, v33, v7
	v_div_scale_f32 v54, null, v33, v33, v25
	v_fmac_f32_e32 v58, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v81, v83, 1.0
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v33, v33, v6
	v_fma_f32 v53, -v87, v58, v80
	v_fmac_f32_e32 v83, v55, v83
	v_div_scale_f32 v55, null, v33, v33, v4
	v_div_fixup_f32 v28, v78, v33, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v53, v53, v91, v58
	v_div_scale_f32 v79, vcc_lo, v26, v33, v26
	v_rcp_f32_e32 v58, v54
	v_div_scale_f32 v78, null, v33, v33, v5
	v_mul_f32_e32 v84, v79, v83
	v_div_fixup_f32 v27, v53, v33, v27
	v_rcp_f32_e32 v80, v55
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v81, v84, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v54, v58, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v58, v53, v58
	v_div_scale_f32 v53, s9, v25, v33, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v86, -v55, v80, 1.0
	v_fma_f32 v89, -v78, v82, 1.0
	v_mul_f32_e32 v90, v53, v58
	v_fma_f32 v91, -v85, v87, 1.0
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v88, -v54, v90, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v13, v13, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v88, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v33, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v54, v90, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v5, v33, v5
	v_div_fmas_f32 v53, v53, v58, v90
	v_div_scale_f32 v91, s12, v6, v33, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v25, v53, v33, v25
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v57
	v_rndne_f32_e32 v57, v66
	v_rndne_f32_e32 v66, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v86, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	v_fma_f32 v81, -v55, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v54, -v85, v94, v91
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v54, v87
	v_fma_f32 v55, -v55, v92, v86
	v_fma_f32 v54, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v26, v79, v33, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v80, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v54, v54, v82, v93
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v4, v55, v33, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v64
	v_rndne_f32_e32 v64, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v5, v54, v33, v5
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v59
	v_rndne_f32_e32 v59, v72
	v_rndne_f32_e32 v72, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v11
	v_cvt_i32_f32_e32 v73, v15
	v_and_b32_e32 v15, 15, v53
	v_med3_f32 v12, v12, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_and_b32_e32 v53, 15, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v85, v94, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_cvt_i32_f32_e32 v95, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v58, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v16, 16, v124
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v6, v58, v33, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v35
	v_rndne_f32_e32 v35, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v56
	v_rndne_f32_e32 v56, v65
	v_rndne_f32_e32 v58, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v74
	v_rndne_f32_e32 v67, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v76, v12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v12, 15, v49
	v_and_b32_e32 v13, 15, v50
	v_and_b32_e32 v49, 15, v0
	v_and_b32_e32 v50, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v124
	v_lshlrev_b32_e32 v17, 4, v125
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_cvt_i32_f32_e32 v74, v14
	v_and_b32_e32 v14, 15, v51
	v_and_b32_e32 v51, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v18, 6, v16
	v_xor_b32_e32 v17, v17, v24
	v_lshlrev_b32_e32 v24, 6, v124
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v85, v36
	v_cvt_i32_f32_e32 v86, v37
	v_cvt_i32_f32_e32 v87, v39
	v_cvt_i32_f32_e32 v88, v38
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v18
	v_and_or_b32 v18, 0x1b00, v24, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v78, v44
	v_cvt_i32_f32_e32 v79, v45
	v_cvt_i32_f32_e32 v80, v46
	v_cvt_i32_f32_e32 v93, v7
	v_cvt_i32_f32_e32 v94, v28
	v_cvt_i32_f32_e32 v96, v26
	v_cvt_i32_f32_e32 v81, v47
	v_cvt_i32_f32_e32 v82, v10
	v_cvt_i32_f32_e32 v83, v8
	v_cvt_i32_f32_e32 v84, v9
	v_cvt_i32_f32_e32 v89, v32
	v_cvt_i32_f32_e32 v90, v29
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v92, v31
	v_cvt_i32_f32_e32 v98, v4
	v_cvt_i32_f32_e32 v99, v5
	v_cvt_i32_f32_e32 v100, v6
	v_and_b32_e32 v4, 15, v33
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v6, 15, v35
	v_and_b32_e32 v7, 15, v40
	v_and_b32_e32 v8, 15, v41
	v_and_b32_e32 v9, 15, v42
	v_and_b32_e32 v10, 15, v43
	v_and_b32_e32 v11, 15, v48
	v_and_b32_e32 v29, 15, v57
	v_and_b32_e32 v30, 15, v58
	v_and_b32_e32 v31, 15, v59
	v_and_b32_e32 v32, 15, v64
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v34, 15, v66
	v_and_b32_e32 v35, 15, v67
	v_and_b32_e32 v36, 15, v72
	v_and_b32_e32 v45, 15, v60
	v_and_b32_e32 v46, 15, v61
	v_and_b32_e32 v47, 15, v63
	v_and_b32_e32 v48, 15, v62
	v_and_b32_e32 v61, 15, v85
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v17, v22
	v_xad_u32 v17, v18, v126, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v25
	v_and_b32_e32 v25, 15, v54
	v_and_b32_e32 v26, 15, v55
	v_and_b32_e32 v28, 15, v56
	v_and_b32_e32 v37, 15, v73
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v40, 15, v70
	v_and_b32_e32 v41, 15, v71
	v_and_b32_e32 v42, 15, v74
	v_and_b32_e32 v43, 15, v75
	v_and_b32_e32 v44, 15, v76
	v_and_b32_e32 v54, 15, v78
	v_and_b32_e32 v56, 15, v80
	v_and_b32_e32 v69, 15, v93
	v_and_b32_e32 v70, 15, v94
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v72, 15, v96
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v17
	ds_load_b128 v[12:15], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[29:32]
	ds_store_b128 v0, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v17
	ds_load_b128 v[37:40], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[45:48]
	ds_store_b128 v0, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v17
	ds_load_b128 v[53:56], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[61:64]
	ds_store_b128 v0, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v17
	ds_load_b128 v[69:72], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[25:28] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v17
	ds_load_b128 v[24:27], v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v17
	ds_load_b128 v[41:44], v17 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_and_b32_e32 v57, 15, v81
	v_and_b32_e32 v58, 15, v82
	v_and_b32_e32 v59, 15, v83
	v_and_b32_e32 v60, 15, v84
	v_cvt_i32_f32_e32 v52, v52
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	v_and_b32_e32 v52, 15, v52
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v17
	ds_load_b128 v[57:60], v17 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v75, 15, v99
	v_and_b32_e32 v76, 15, v100
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v125
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s34, v20
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v17
	ds_load_b128 v[73:76], v17 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v24, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v25, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v26, 4, v10
	v_lshl_or_b32 v11, v27, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s9, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v21, v38, 4, v30
	v_lshl_or_b32 v22, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	s_mov_b32 s12, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v53, 4, v45
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v20, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v22.l
	v_lshlrev_b16 v1.l, 8, v21.l
	v_and_b16 v2.l, 0xff, v18.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v69, 4, v61
	v_lshl_or_b32 v38, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v20.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v124
	v_lshrrev_b32_e32 v5, 2, v16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v23.h
	v_mov_b16_e32 v1.l, v19.h
	v_add3_u32 v4, v5, v4, v44
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v124
	s_and_b32 s13, s23, 0xffff
	s_mov_b32 s12, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 252
		.amdhsa_kernarg_size 120
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 47
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 252
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29540
; TotalNumSgprs: 49
; NumVgprs: 256
; ScratchSize: 252
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 49
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 252
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 63
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
