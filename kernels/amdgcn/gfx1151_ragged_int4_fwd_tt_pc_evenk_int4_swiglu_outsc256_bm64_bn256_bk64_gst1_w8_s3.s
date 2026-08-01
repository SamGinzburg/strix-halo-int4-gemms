	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v3, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v69, 0 :: v_dual_lshlrev_b32 v8, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s28, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s28, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	s_load_b64 s[22:23], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[24:25], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s3, s20, 1
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s23, 0, s2
	v_add_nc_u32_e32 v165, s22, v3
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s3, s6, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v4, s22 :: v_dual_lshlrev_b32 v1, 1, v0
	v_dual_mov_b32 v53, s3 :: v_dual_and_b32 v2, 0x80, v0
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s22, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr53
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v166, 15, v0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v144, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s29, s28, 8
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	scratch_load_b32 v32, off, off offset:460 ; 4-byte Folded Reload
	v_lshlrev_b32_e32 v4, 5, v166
	v_and_b32_e32 v5, 24, v8
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s1, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v44, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v45, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_mov_b32_e32 v38, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v232, 0
	v_mov_b32_e32 v231, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s4, s12
	s_mov_b32 s5, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	v_mov_b32_e32 v50, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v230, 0
	v_mov_b32_e32 v51, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v53, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_mov_b32_e32 v65, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_mov_b32_e32 v64, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off
	scratch_store_b128 off, v[62:65], off offset:16
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v62, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v59, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v63, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:32
	scratch_store_b128 off, v[62:65], off offset:48
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:64
	scratch_store_b128 off, v[62:65], off offset:80
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:96
	scratch_store_b128 off, v[62:65], off offset:112
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:128
	scratch_store_b128 off, v[62:65], off offset:144
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:160
	scratch_store_b128 off, v[62:65], off offset:176
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:192
	scratch_store_b128 off, v[62:65], off offset:208
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v65, 0
	v_add_nc_u32_e32 v209, 0, v166
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 5, v32
	v_and_b32_e32 v1, 0xe0, v32
	v_bfe_i32 v2, v32, 7, 1
	v_and_b32_e32 v3, 0x7f, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b32_e32 v0, s29, v0
	v_lshlrev_b32_e32 v1, 4, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v2, 0x88, v2
	v_add_nc_u32_e32 v0, s3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or3_b32 v133, v4, v5, v1
	v_xor_b32_e32 v129, v2, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, v0, s21
	v_add_nc_u32_e32 v2, 8, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:764
	scratch_store_b32 off, v133, off offset:468
	v_add_nc_u32_e32 v3, 16, v0
	v_add_nc_u32_e32 v6, 24, v0
	v_add_nc_u32_e32 v4, 40, v0
	v_add_nc_u32_e32 v5, 48, v0
	scratch_store_b32 off, v1, off offset:472 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v2
	v_add_nc_u32_e32 v7, 56, v0
	v_add_nc_u32_e32 v8, 64, v0
	v_add_nc_u32_e32 v10, 0x50, v0
	v_add_nc_u32_e32 v11, 0x58, v0
	v_add_nc_u32_e32 v12, 0x60, v0
	v_add_nc_u32_e32 v13, 0x68, v0
	v_add_nc_u32_e32 v15, 0x78, v0
	scratch_store_b32 off, v1, off offset:476 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v3
	v_add_nc_u32_e32 v16, 0x80, v0
	v_add_nc_u32_e32 v17, 0x88, v0
	v_add_nc_u32_e32 v18, 0x90, v0
	v_add_nc_u32_e32 v20, 0xa0, v0
	v_add_nc_u32_e32 v21, 0xa8, v0
	v_add_nc_u32_e32 v22, 0xb0, v0
	v_add_nc_u32_e32 v23, 0xb8, v0
	scratch_store_b32 off, v1, off offset:480 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s21, v6
	v_add_nc_u32_e32 v25, 0xc8, v0
	v_add_nc_u32_e32 v26, 0xd0, v0
	v_add_nc_u32_e32 v27, 0xd8, v0
	v_add_nc_u32_e32 v28, 0xe0, v0
	v_add_nc_u32_e32 v30, 0xf0, v0
	v_add_nc_u32_e32 v31, 0xf8, v0
	v_add_nc_u32_e32 v2, s20, v2
	scratch_store_b32 off, v1, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 32, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v9, s21, v1
	v_add_nc_u32_e32 v1, s20, v1
	scratch_store_b32 off, v9, off offset:488 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v4
	scratch_store_b32 off, v9, off offset:492 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v5
	scratch_store_b32 off, v9, off offset:496 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v7
	scratch_store_b32 off, v9, off offset:500 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s21, v8
	scratch_store_b32 off, v9, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v9, 0x48, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v14, s21, v9
	scratch_store_b32 off, v14, off offset:508 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v10
	scratch_store_b32 off, v14, off offset:512 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v11
	scratch_store_b32 off, v14, off offset:516 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v12
	scratch_store_b32 off, v14, off offset:520 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s21, v13
	scratch_store_b32 off, v14, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v14, 0x70, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v19, s21, v14
	scratch_store_b32 off, v19, off offset:528 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v15
	scratch_store_b32 off, v19, off offset:532 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v16
	scratch_store_b32 off, v19, off offset:536 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v17
	scratch_store_b32 off, v19, off offset:540 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s21, v18
	scratch_store_b32 off, v19, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v19, 0x98, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v24, s21, v19
	scratch_store_b32 off, v24, off offset:548 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v20
	scratch_store_b32 off, v24, off offset:552 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v21
	scratch_store_b32 off, v24, off offset:556 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v22
	scratch_store_b32 off, v24, off offset:560 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s21, v23
	scratch_store_b32 off, v24, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v24, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v29, s21, v24
	scratch_store_b32 off, v29, off offset:568 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v25
	scratch_store_b32 off, v29, off offset:572 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v26
	scratch_store_b32 off, v29, off offset:576 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v27
	scratch_store_b32 off, v29, off offset:580 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s21, v28
	scratch_store_b32 off, v29, off offset:584 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v29, 0xe8, v0
	v_add_nc_u32_e32 v0, s20, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v33, s21, v29
	v_mul_lo_u32 v0, v0, s21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:588
	scratch_store_b32 off, v0, off offset:600
	v_mul_lo_u32 v33, s21, v30
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v6
	v_mov_b32_e32 v6, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v33, off offset:592
	scratch_store_b32 off, v0, off offset:604
	v_add_nc_u32_e32 v0, s20, v3
	v_mul_lo_u32 v33, s21, v31
	v_add_nc_u32_e32 v3, s20, v4
	v_add_nc_u32_e32 v4, s20, v5
	v_mov_b32_e32 v5, v32
	v_mul_lo_u32 v0, v0, s21
	v_mov_b32_e32 v32, 0
	scratch_store_b32 off, v33, off offset:596 ; 4-byte Folded Spill
	v_mov_b32_e32 v33, 0
	v_or_b32_e32 v132, 0x7f0, v5
	v_mov_b32_e32 v64, 0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v9
	v_or_b32_e32 v130, 0x700, v5
	v_or_b32_e32 v131, 0x3f0, v5
	v_mov_b32_e32 v9, 0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v8
	v_mov_b32_e32 v8, 0
	scratch_store_b32 off, v0, off offset:616 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v10
	v_mov_b32_e32 v10, 0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v11
	v_mov_b32_e32 v11, 0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v7
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v13
	v_mov_b32_e32 v13, 0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v14
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v15
	scratch_store_b32 off, v0, off offset:640 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v16
	v_mov_b32_e32 v16, 0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v12
	v_mov_b32_e32 v12, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:288
	scratch_store_b128 off, v[10:13], off offset:304
	v_mul_lo_u32 v0, v0, s21
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v12, 0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v18
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[6:9], off offset:320
	scratch_store_b128 off, v[10:13], off offset:336
	scratch_store_b32 off, v0, off offset:652
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v19
	v_mov_b32_e32 v19, 0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v20
	v_mov_b32_e32 v20, 0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v21
	v_mov_b32_e32 v21, 0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v17
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v23
	v_mov_b32_e32 v23, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v24
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v25
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v26
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v22
	v_mov_b32_e32 v22, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, s20, v28
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_add_nc_u32_e32 v2, s20, v29
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s21
	v_add_nc_u32_e32 v3, s20, v30
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	v_add_nc_u32_e32 v4, s20, v31
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s20, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s21
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s21
	v_add_nc_u32_e32 v1, 0, v132
	v_xor_b32_e32 v132, 24, v133
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:224
	scratch_store_b128 off, v[62:65], off offset:240
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s21
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	s_clause 0x2                            ; 36-byte Folded Spill
	scratch_store_b128 off, v[58:61], off offset:256
	scratch_store_b128 off, v[62:65], off offset:272
	scratch_store_b32 off, v0, off offset:716
	v_mul_lo_u32 v0, v3, s21
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s21
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v130
	v_xor_b32_e32 v130, 8, v133
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v131
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:736
	scratch_store_b32 off, v129, off offset:464
	v_xor_b32_e32 v0, 0x110, v129
	v_xor_b32_e32 v131, 16, v133
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v204, 0, v0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v0, 6, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:740
	scratch_store_b32 off, v0, off offset:744
	v_add_nc_u32_e32 v0, 0, v130
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v131
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v132
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:756
	scratch_store_b32 off, v166, off offset:760
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:744
	scratch_load_b32 v2, off, off offset:460
	v_mov_b32_e32 v71, v57
	v_mov_b32_e32 v69, v55
	v_mov_b32_e32 v67, v53
	v_dual_mov_b32 v65, v51 :: v_dual_mov_b32 v70, v56
	v_mov_b32_e32 v68, v54
	v_mov_b32_e32 v66, v52
	v_dual_mov_b32 v64, v50 :: v_dual_mov_b32 v63, v47
	v_mov_b32_e32 v61, v45
	v_mov_b32_e32 v59, v43
	v_dual_mov_b32 v57, v41 :: v_dual_mov_b32 v62, v46
	v_mov_b32_e32 v60, v44
	v_mov_b32_e32 v58, v42
	v_mov_b32_e32 v56, v40
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v0, s0, v[165:166]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v0, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v132, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 8, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v133, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v135, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 16, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v137, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 24, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v138, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 28, v1
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v1, off, off offset:472 ; 4-byte Folded Reload
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[165:166]
	.loc	1 1052 18                       ; ragged.py:1052:18
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v131, 31, v2
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v210, s1, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s21
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u8 v14, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v9, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v24, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v10, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v26, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v11, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v28, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v12, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v224, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v13, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v239, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v15, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v222, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v25, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v220, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v27, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v218, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:544 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v29, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v216, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v225, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v214, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v223, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v212, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v221, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v211, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v219, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v240, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:584 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v217, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:588 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v241, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v215, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	scratch_load_b32 v1, off, off offset:596 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v242, v131, s[12:15], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v210
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v213, v131, s[12:15], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v131, v132, s[4:7], 0 offen
	buffer_load_u8 v132, v133, s[4:7], 0 offen
	buffer_load_u8 v133, v136, s[4:7], 0 offen
	buffer_load_u8 v136, v137, s[4:7], 0 offen
	buffer_load_u8 v137, v138, s[4:7], 0 offen
	buffer_load_u8 v130, v130, s[4:7], 0 offen
	buffer_load_u8 v135, v135, s[4:7], 0 offen
	v_add_nc_u32_e32 v138, 0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v138, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v138, v131 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v133 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v136 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v137 offset:1536
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v135
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v0, v209 offset:320
	ds_load_u8 v130, v209 offset:256
	ds_load_u8 v131, v209 offset:336
	ds_load_u8 v132, v209 offset:272
	ds_load_u8 v133, v209 offset:352
	ds_load_u8 v135, v209 offset:288
	ds_load_u8 v136, v209 offset:368
	ds_load_u8 v137, v209 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v130, v0, 0xc0c0004
	ds_load_u8 v130, v209 offset:448
	ds_load_u8 v138, v209 offset:384
	ds_load_u8 v139, v209 offset:464
	ds_load_u8 v140, v209 offset:400
	ds_load_u8 v141, v209 offset:480
	ds_load_u8 v142, v209 offset:416
	ds_load_u8 v143, v209 offset:496
	ds_load_u8 v144, v209 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v138, v130, 0xc0c0004
	ds_load_u8 v138, v209 offset:64
	ds_load_u8 v145, v209
	ds_load_u8 v146, v209 offset:80
	ds_load_u8 v147, v209 offset:16
	ds_load_u8 v148, v209 offset:96
	ds_load_u8 v149, v209 offset:32
	ds_load_u8 v150, v209 offset:112
	ds_load_u8 v151, v209 offset:48
	v_lshl_or_b32 v197, v130, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v140, v139, 0xc0c0004
	v_mov_b32_e32 v139, v165
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v199, v130, 16, v0
	v_perm_b32 v0, v135, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v145, v209 offset:192
	ds_load_u8 v152, v209 offset:128
	ds_load_u8 v153, v209 offset:208
	ds_load_u8 v154, v209 offset:144
	ds_load_u8 v155, v209 offset:224
	ds_load_u8 v156, v209 offset:160
	ds_load_u8 v157, v209 offset:240
	ds_load_u8 v158, v209 offset:176
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v147, v146, 0xc0c0004
	ds_load_u8 v179, v209 offset:960
	ds_load_u8 v180, v209 offset:896
	ds_load_u8 v142, v209 offset:1024
	ds_load_u8 v174, v209 offset:976
	ds_load_u8 v176, v209 offset:912
	ds_load_u8 v141, v209 offset:992
	ds_load_u8 v253, v209 offset:928
	ds_load_u8 v160, v209 offset:944
	ds_load_u8 v5, v209 offset:832
	ds_load_u8 v202, v209 offset:768
	ds_load_u8 v146, v209 offset:848
	ds_load_u8 v191, v209 offset:784
	ds_load_u8 v166, v209 offset:864
	v_lshl_or_b32 v201, v130, 16, v0
	v_perm_b32 v0, v137, v136, 0xc0c0004
	v_perm_b32 v130, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v145, v152, v145, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v132, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v196, v145, 16, v138
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v133, v158, v157, 0xc0c0004
	v_lshl_or_b32 v198, v132, 16, v131
	v_perm_b32 v131, v149, v148, 0xc0c0004
	v_perm_b32 v132, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v200, v132, 16, v131
	v_perm_b32 v132, v151, v150, 0xc0c0004
	v_lshl_or_b32 v150, v130, 16, v0
	ds_load_u8 v168, v209 offset:800
	ds_load_u8 v255, v209 offset:880
	ds_load_u8 v173, v209 offset:816
	ds_load_u8 v203, v209 offset:704
	ds_load_u8 v206, v209 offset:640
	ds_load_u8 v207, v209 offset:720
	ds_load_u8 v208, v209 offset:656
	ds_load_u8 v192, v209 offset:736
	ds_load_u8 v193, v209 offset:672
	ds_load_u8 v171, v209 offset:752
	ds_load_u8 v8, v209 offset:688
	ds_load_u8 v205, v209 offset:576
	ds_load_u8 v4, v209 offset:512
	ds_load_u8 v7, v209 offset:592
	ds_load_u8 v147, v209 offset:528
	ds_load_u8 v184, v209 offset:608
	ds_load_u8 v185, v209 offset:544
	ds_load_u8 v186, v209 offset:624
	ds_load_u8 v187, v209 offset:560
	ds_load_u8 v161, v209 offset:1216
	ds_load_u8 v72, v209 offset:1280
	ds_load_u8 v155, v209 offset:1232
	ds_load_u8 v156, v209 offset:1168
	ds_load_u8 v143, v209 offset:1248
	ds_load_u8 v154, v209 offset:1184
	ds_load_u8 v152, v209 offset:1264
	ds_load_u8 v153, v209 offset:1200
	ds_load_u8 v145, v209 offset:1152
	ds_load_u8 v175, v209 offset:1088
	ds_load_u8 v137, v209 offset:1104
	ds_load_u8 v252, v209 offset:1040
	ds_load_u8 v162, v209 offset:1120
	ds_load_u8 v163, v209 offset:1056
	ds_load_u8 v157, v209 offset:1136
	ds_load_u8 v158, v209 offset:1072
	ds_load_u8 v6, v209 offset:1472
	ds_load_u8 v0, v209 offset:1536
	v_lshl_or_b32 v149, v133, 16, v132
	v_dual_mov_b32 v129, v226 :: v_dual_mov_b32 v130, v227
	v_mov_b32_e32 v134, v231
	v_dual_mov_b32 v132, v229 :: v_dual_mov_b32 v131, v228
	v_dual_mov_b32 v135, v232 :: v_dual_mov_b32 v136, v233
	v_mov_b32_e32 v133, v230
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v167, v209 offset:1488
	ds_load_u8 v169, v209 offset:1424
	ds_load_u8 v177, v209 offset:1504
	ds_load_u8 v178, v209 offset:1440
	ds_load_u8 v254, v209 offset:1520
	ds_load_u8 v144, v209 offset:1456
	ds_load_u8 v188, v209 offset:1408
	ds_load_u8 v189, v209 offset:1344
	ds_load_u8 v190, v209 offset:1360
	ds_load_u8 v148, v209 offset:1296
	ds_load_u8 v194, v209 offset:1376
	ds_load_u8 v195, v209 offset:1312
	ds_load_u8 v170, v209 offset:1392
	ds_load_u8 v172, v209 offset:1328
	ds_load_u8 v0, v209 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:736 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v3, v0
	scratch_load_b32 v0, off, off offset:740 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v160, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v159, v209 offset:1920
	ds_load_u8 v138, v209 offset:1856
	ds_load_u8 v0, v209 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v243, v209 offset:1696
	ds_load_u8 v0, v209 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v140, v209 offset:1664
	ds_load_u8 v151, v209 offset:1600
	ds_load_u8 v0, v209 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v0, v209 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, 0, v0
	ds_store_b8 v237, v14
	ds_store_b8 v237, v24 offset:512
	ds_store_b8 v237, v26 offset:1024
	ds_store_b8 v237, v28 offset:1536
	ds_store_b8 v237, v224 offset:2048
	ds_store_b8 v237, v239 offset:2560
	ds_store_b8 v237, v222 offset:3072
	ds_store_b8 v237, v220 offset:3584
	ds_store_b8 v237, v218 offset:4096
	ds_store_b8 v237, v216 offset:4608
	ds_store_b8 v237, v214 offset:5120
	ds_store_b8 v237, v212 offset:5632
	ds_store_b8 v237, v211 offset:6144
	ds_store_b8 v237, v240 offset:6656
	ds_store_b8 v237, v241 offset:7168
	ds_store_b8 v237, v242 offset:7680
	ds_store_b8 v204, v9
	ds_store_b8 v204, v10 offset:512
	ds_store_b8 v204, v11 offset:1024
	ds_store_b8 v204, v12 offset:1536
	ds_store_b8 v204, v13 offset:2048
	ds_store_b8 v204, v15 offset:2560
	ds_store_b8 v204, v25 offset:3072
	ds_store_b8 v204, v27 offset:3584
	ds_store_b8 v204, v29 offset:4096
	ds_store_b8 v204, v225 offset:4608
	ds_store_b8 v204, v223 offset:5120
	ds_store_b8 v204, v221 offset:5632
	ds_store_b8 v204, v219 offset:6144
	ds_store_b8 v204, v217 offset:6656
	ds_store_b8 v204, v215 offset:7168
	ds_store_b8 v204, v213 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x13                           ; 272-byte Folded Reload
	scratch_load_b32 v0, off, off offset:468
	scratch_load_b32 v1, off, off offset:680
	scratch_load_b128 v[73:76], off, off offset:32
	scratch_load_b128 v[77:80], off, off offset:48
	scratch_load_b128 v[89:92], off, off offset:96
	scratch_load_b128 v[93:96], off, off offset:112
	scratch_load_b128 v[105:108], off, off offset:160
	scratch_load_b128 v[109:112], off, off offset:176
	scratch_load_b128 v[121:124], off, off offset:224
	scratch_load_b128 v[125:128], off, off offset:240
	scratch_load_b32 v2, off, off offset:684
	scratch_load_b128 v[81:84], off, off offset:64
	scratch_load_b128 v[85:88], off, off offset:80
	scratch_load_b128 v[97:100], off, off offset:128
	scratch_load_b128 v[101:104], off, off offset:144
	scratch_load_b128 v[113:116], off, off offset:192
	scratch_load_b128 v[117:120], off, off offset:208
	scratch_load_b128 v[24:27], off, off offset:256
	scratch_load_b128 v[28:31], off, off offset:272
	scratch_load_b32 v9, off, off offset:704
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v222, 0, v0
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v1, v1, v210
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[211:214], v222 offset1:8
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v244, v2, v210
	scratch_load_b32 v2, off, off offset:688 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v248, v9, v210
	scratch_load_b32 v9, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[211:212], v[196:197], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[211:212], v[198:199], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[211:212], v[200:201], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[211:212], v[149:150], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[213:214], v[196:197], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[213:214], v[198:199], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[213:214], v[200:201], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[213:214], v[149:150], v[24:31] neg_lo:[1,1,0]
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v211, v0, v210
	scratch_load_b32 v0, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 1095 35                       ; ragged.py:1095:35
	buffer_load_u8 v183, v211, s[12:15], 0 offen
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v245, v2, v210
	scratch_load_b32 v2, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v164, v9, v210
	scratch_load_b32 v9, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v212, v0, v210
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v246, v2, v210
	scratch_load_b32 v2, off, off offset:696 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v165, v9, v210
	scratch_load_b32 v9, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v213, v0, v210
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v247, v2, v210
	scratch_load_b32 v2, off, off offset:700 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v181, v9, v210
	scratch_load_b32 v9, off, off offset:720 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v214, v0, v210
	scratch_load_b32 v0, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, v2, v210
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v182, v9, v210
	scratch_load_b32 v9, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v215, v0, v210
	scratch_load_b32 v0, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v216, v0, v210
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v217, v0, v210
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v218, v0, v210
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v219, v0, v210
	scratch_load_b32 v0, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v220, v0, v210
	scratch_load_b32 v0, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v221, v0, v210
	scratch_load_b32 v0, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, v0, v210
	scratch_load_b32 v0, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, v0, v210
	scratch_load_b32 v0, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v225, v0, v210
	scratch_load_b32 v0, off, off offset:656 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v0, v210
	scratch_load_b32 v0, off, off offset:660 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, v0, v210
	scratch_load_b32 v0, off, off offset:664 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v0, v210
	scratch_load_b32 v0, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v0, v210
	scratch_load_b32 v0, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, v0, v210
	scratch_load_b32 v0, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v0, v210
	v_add_nc_u32_e32 v210, v9, v210
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1e
	buffer_load_u8 v228, v213, s[12:15], 0 offen
	buffer_load_u8 v229, v215, s[12:15], 0 offen
	buffer_load_u8 v230, v217, s[12:15], 0 offen
	buffer_load_u8 v231, v219, s[12:15], 0 offen
	buffer_load_u8 v232, v221, s[12:15], 0 offen
	buffer_load_u8 v224, v224, s[12:15], 0 offen
	buffer_load_u8 v233, v239, s[12:15], 0 offen
	buffer_load_u8 v234, v241, s[12:15], 0 offen
	buffer_load_u8 v235, v238, s[12:15], 0 offen
	buffer_load_u8 v1, v1, s[12:15], 0 offen
	buffer_load_u8 v236, v245, s[12:15], 0 offen
	buffer_load_u8 v238, v247, s[12:15], 0 offen
	buffer_load_u8 v239, v248, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v182, v182, s[12:15], 0 offen
	buffer_load_u8 v241, v218, s[12:15], 0 offen
	buffer_load_u8 v245, v216, s[12:15], 0 offen
	buffer_load_u8 v247, v214, s[12:15], 0 offen
	buffer_load_u8 v248, v212, s[12:15], 0 offen
	buffer_load_u8 v240, v240, s[12:15], 0 offen
	buffer_load_u8 v225, v225, s[12:15], 0 offen
	buffer_load_u8 v223, v223, s[12:15], 0 offen
	buffer_load_u8 v9, v220, s[12:15], 0 offen
	buffer_load_u8 v10, v246, s[12:15], 0 offen
	buffer_load_u8 v11, v244, s[12:15], 0 offen
	buffer_load_u8 v0, v0, s[12:15], 0 offen
	buffer_load_u8 v12, v242, s[12:15], 0 offen
	buffer_load_u8 v13, v210, s[12:15], 0 offen
	buffer_load_u8 v14, v181, s[12:15], 0 offen
	buffer_load_u8 v15, v164, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v164, off, off offset:748
	scratch_load_b32 v181, off, off offset:752
	scratch_load_b32 v242, off, off offset:756
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[210:213], v164 offset1:8
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[214:217], v181 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[218:221], v242 offset1:8
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v237, v183
	ds_store_b8 v237, v228 offset:512
	ds_store_b8 v237, v229 offset:1024
	ds_store_b8 v237, v230 offset:1536
	ds_store_b8 v237, v231 offset:2048
	ds_store_b8 v237, v232 offset:2560
	ds_store_b8 v237, v224 offset:3072
	ds_store_b8 v237, v233 offset:3584
	ds_store_b8 v237, v234 offset:4096
	ds_store_b8 v237, v235 offset:4608
	ds_store_b8 v237, v1 offset:5120
	ds_store_b8 v237, v236 offset:5632
	ds_store_b8 v237, v238 offset:6144
	ds_store_b8 v237, v239 offset:6656
	ds_store_b8 v237, v165 offset:7168
	ds_store_b8 v237, v182 offset:7680
	ds_store_b8 v204, v248
	ds_store_b8 v204, v247 offset:512
	ds_store_b8 v204, v245 offset:1024
	ds_store_b8 v204, v241 offset:1536
	ds_store_b8 v204, v9 offset:2048
	ds_store_b8 v204, v223 offset:2560
	ds_store_b8 v204, v225 offset:3072
	ds_store_b8 v204, v240 offset:3584
	ds_store_b8 v204, v12 offset:4096
	ds_store_b8 v204, v0 offset:4608
	ds_store_b8 v204, v11 offset:5120
	ds_store_b8 v204, v10 offset:5632
	ds_store_b8 v204, v2 offset:6144
	ds_store_b8 v204, v15 offset:6656
	ds_store_b8 v204, v14 offset:7168
	ds_store_b8 v204, v13 offset:7680
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[40:43], off, off offset:288
	scratch_load_b128 v[44:47], off, off offset:304
	scratch_load_b128 v[234:237], off, off offset:320
	scratch_load_b128 v[238:241], off, off offset:336
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v202, v5, 0xc0c0004
	v_perm_b32 v1, v180, v179, 0xc0c0004
	v_perm_b32 v2, v4, v205, 0xc0c0004
	v_perm_b32 v9, v206, v203, 0xc0c0004
	v_dual_mov_b32 v233, v136 :: v_dual_mov_b32 v232, v135
	v_dual_mov_b32 v231, v134 :: v_dual_mov_b32 v230, v133
	v_dual_mov_b32 v229, v132 :: v_dual_mov_b32 v228, v131
	v_dual_mov_b32 v227, v130 :: v_dual_mov_b32 v226, v129
	v_lshl_or_b32 v131, v1, 16, v0
	v_lshl_or_b32 v130, v9, 16, v2
	v_perm_b32 v0, v191, v146, 0xc0c0004
	v_perm_b32 v1, v176, v174, 0xc0c0004
	v_perm_b32 v2, v147, v7, 0xc0c0004
	v_perm_b32 v7, v208, v207, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v180, v1, 16, v0
	v_perm_b32 v0, v168, v166, 0xc0c0004
	v_lshl_or_b32 v179, v7, 16, v2
	v_perm_b32 v1, v253, v141, 0xc0c0004
	v_perm_b32 v2, v185, v184, 0xc0c0004
	v_perm_b32 v7, v193, v192, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[222:225], v222 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[210:211], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v192, v1, 16, v0
	v_perm_b32 v0, v187, v186, 0xc0c0004
	v_lshl_or_b32 v191, v7, 16, v2
	v_perm_b32 v1, v8, v171, 0xc0c0004
	v_perm_b32 v2, v173, v255, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[212:213], v[130:131], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[210:211], v[179:180], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[212:213], v[179:180], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v173, v1, 16, v0
	v_lshl_or_b32 v174, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[105:112], v[210:211], v[191:192], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[212:213], v[191:192], v[113:120] neg_lo:[1,1,0]
	v_perm_b32 v0, v72, v189, 0xc0c0004
	v_perm_b32 v1, v188, v6, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[121:128], v[210:211], v[173:174], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[212:213], v[173:174], v[24:31] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[210:213], v164 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v2, v142, v175, 0xc0c0004
	v_perm_b32 v3, v145, v161, 0xc0c0004
	v_mov_b32_e32 v165, v139
	v_dual_mov_b32 v251, v63 :: v_dual_mov_b32 v250, v62
	v_dual_mov_b32 v249, v61 :: v_dual_mov_b32 v248, v60
	v_dual_mov_b32 v247, v59 :: v_dual_mov_b32 v246, v58
	v_dual_mov_b32 v245, v57 :: v_dual_mov_b32 v244, v56
	v_dual_mov_b32 v50, v64 :: v_dual_mov_b32 v51, v65
	v_dual_mov_b32 v52, v66 :: v_dual_mov_b32 v53, v67
	v_dual_mov_b32 v54, v68 :: v_dual_mov_b32 v55, v69
	v_dual_mov_b32 v56, v70 :: v_dual_mov_b32 v57, v71
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[58:61], off, off
	scratch_load_b128 v[62:65], off, off offset:16
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[244:251], v[222:223], v[198:199], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[224:225], v[198:199], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[222:223], v[200:201], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[224:225], v[200:201], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[224:225], v[149:150], v[16:23] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[244:251], v[210:211], v[179:180], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[212:213], v[179:180], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[210:211], v[191:192], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[212:213], v[191:192], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[212:213], v[173:174], v[16:23] neg_lo:[1,1,0]
	s_waitcnt vmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[222:223], v[196:197], v[40:47] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[234:241], v[224:225], v[196:197], v[234:241] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[210:211], v[130:131], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[212:213], v[130:131], v[234:241] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v131, v1, 16, v0
	v_perm_b32 v0, v148, v190, 0xc0c0004
	v_perm_b32 v1, v169, v167, 0xc0c0004
	v_lshl_or_b32 v130, v3, 16, v2
	v_perm_b32 v2, v252, v137, 0xc0c0004
	v_perm_b32 v3, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v161, v1, 16, v0
	v_perm_b32 v0, v195, v194, 0xc0c0004
	v_perm_b32 v1, v178, v177, 0xc0c0004
	v_lshl_or_b32 v160, v3, 16, v2
	v_perm_b32 v2, v163, v162, 0xc0c0004
	v_perm_b32 v3, v154, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[73:80], v[214:215], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v163, v1, 16, v0
	v_perm_b32 v0, v172, v170, 0xc0c0004
	v_perm_b32 v1, v144, v254, 0xc0c0004
	v_lshl_or_b32 v162, v3, 16, v2
	v_perm_b32 v2, v158, v157, 0xc0c0004
	v_perm_b32 v3, v153, v152, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[152:155], v181 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v157, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:448
	scratch_load_b32 v1, off, off offset:388
	v_lshl_or_b32 v156, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:432
	scratch_load_b32 v2, off, off offset:352
	v_wmma_i32_16x16x16_iu4 v[81:88], v[216:217], v[130:131], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[214:215], v[160:161], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[216:217], v[160:161], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[214:215], v[162:163], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[216:217], v[162:163], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[214:215], v[156:157], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[216:217], v[156:157], v[24:31] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[152:153], v[130:131], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[234:241], v[154:155], v[130:131], v[234:241] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[130:133], v242 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[244:251], v[152:153], v[160:161], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[154:155], v[160:161], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[152:153], v[162:163], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[154:155], v[162:163], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[154:155], v[156:157], v[16:23] neg_lo:[1,1,0]
	s_waitcnt vmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[222:223], v[149:150], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[210:211], v[173:174], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[58:65], v[152:153], v[156:157], v[58:65] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(3)
	v_perm_b32 v0, v0, v138, 0xc0c0004
	s_waitcnt vmcnt(2)
	v_perm_b32 v1, v159, v1, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v140, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v151, 0xc0c0004
	v_lshl_or_b32 v138, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:404
	scratch_load_b32 v1, off, off offset:412
	v_lshl_or_b32 v137, v3, 16, v2
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[130:131], v[137:138], v[40:47] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[40:43], off offset:288
	scratch_store_b128 off, v[44:47], off offset:304
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[73:80], v[218:219], v[137:138], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[220:221], v[137:138], v[81:88] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[234:241], v[132:133], v[137:138], v[234:241] neg_lo:[1,1,0]
	s_clause 0x5                            ; 96-byte Folded Spill
	scratch_store_b128 off, v[73:76], off offset:32
	scratch_store_b128 off, v[77:80], off offset:48
	scratch_store_b128 off, v[81:84], off offset:64
	scratch_store_b128 off, v[85:88], off offset:80
	scratch_store_b128 off, v[234:237], off offset:320
	scratch_store_b128 off, v[238:241], off offset:336
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:372
	scratch_load_b32 v2, off, off offset:380
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:452
	scratch_load_b32 v3, off, off offset:456
	v_lshl_or_b32 v140, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:392
	scratch_load_b32 v1, off, off offset:396
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:420
	scratch_load_b32 v4, off, off offset:424
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:364
	scratch_load_b32 v2, off, off offset:368
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[244:251], v[130:131], v[139:140], v[244:251] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[89:96], v[218:219], v[139:140], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[220:221], v[139:140], v[97:104] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[32:39], v[132:133], v[139:140], v[32:39] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[89:92], off offset:96
	scratch_store_b128 off, v[93:96], off offset:112
	v_dual_mov_b32 v40, v244 :: v_dual_mov_b32 v41, v245
	v_dual_mov_b32 v42, v246 :: v_dual_mov_b32 v43, v247
	v_dual_mov_b32 v44, v248 :: v_dual_mov_b32 v45, v249
	v_dual_mov_b32 v46, v250 :: v_dual_mov_b32 v47, v251
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[97:100], off offset:128
	scratch_store_b128 off, v[101:104], off offset:144
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:440
	scratch_load_b32 v3, off, off offset:444
	v_lshl_or_b32 v136, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:428
	scratch_load_b32 v1, off, off offset:436
	s_waitcnt vmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	scratch_load_b32 v3, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v243, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:400
	scratch_load_b32 v2, off, off offset:408
	v_wmma_i32_16x16x16_iu4 v[105:112], v[218:219], v[135:136], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[220:221], v[135:136], v[113:120] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[226:233], v[130:131], v[135:136], v[226:233] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[50:57], v[132:133], v[135:136], v[50:57] neg_lo:[1,1,0]
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[105:108], off offset:160
	scratch_store_b128 off, v[109:112], off offset:176
	scratch_store_b128 off, v[113:116], off offset:192
	scratch_store_b128 off, v[117:120], off offset:208
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:376
	scratch_load_b32 v3, off, off offset:384
	v_lshl_or_b32 v141, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:356
	scratch_load_b32 v4, off, off offset:360
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v142, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[121:128], v[218:219], v[141:142], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[220:221], v[141:142], v[24:31] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[130:131], v[141:142], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[132:133], v[141:142], v[16:23] neg_lo:[1,1,0]
	s_clause 0x5                            ; 96-byte Folded Spill
	scratch_store_b128 off, v[121:124], off offset:224
	scratch_store_b128 off, v[125:128], off offset:240
	scratch_store_b128 off, v[24:27], off offset:256
	scratch_store_b128 off, v[28:31], off offset:272
	scratch_store_b128 off, v[58:61], off
	scratch_store_b128 off, v[62:65], off offset:16
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:32
	scratch_load_b128 v[4:7], off, off offset:48
	.loc	1 1112 24 is_stmt 1             ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v81, v42
	v_cvt_f32_i32_e32 v84, v41
	v_cvt_f32_i32_e32 v83, v40
	v_cvt_f32_i32_e32 v82, v43
	v_cvt_f32_i32_e32 v76, v44
	v_cvt_f32_i32_e32 v75, v45
	v_cvt_f32_i32_e32 v31, v46
	v_cvt_f32_i32_e32 v30, v47
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v173, v33
	v_cvt_f32_i32_e32 v171, v34
	v_cvt_f32_i32_e32 v169, v35
	v_cvt_f32_i32_e32 v10, v36
	v_cvt_f32_i32_e32 v25, v37
	v_cvt_f32_i32_e32 v24, v38
	v_cvt_f32_i32_e32 v174, v39
	v_cvt_f32_i32_e32 v80, v226
	v_cvt_f32_i32_e32 v79, v227
	v_cvt_f32_i32_e32 v43, v228
	v_cvt_f32_i32_e32 v44, v229
	v_cvt_f32_i32_e32 v37, v230
	v_cvt_f32_i32_e32 v36, v231
	v_cvt_f32_i32_e32 v35, v232
	v_cvt_f32_i32_e32 v34, v233
	v_cvt_f32_i32_e32 v33, v50
	v_cvt_f32_i32_e32 v168, v51
	v_cvt_f32_i32_e32 v167, v52
	v_cvt_f32_i32_e32 v15, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v28, v55
	v_cvt_f32_i32_e32 v27, v56
	v_cvt_f32_i32_e32 v26, v57
	v_cvt_f32_i32_e32 v40, v16
	v_cvt_f32_i32_e32 v14, v17
	v_cvt_f32_i32_e32 v13, v18
	v_cvt_f32_i32_e32 v12, v19
	v_cvt_f32_i32_e32 v29, v21
	scratch_load_b32 v166, off, off offset:760 ; 4-byte Folded Reload
	v_mov_b32_e32 v53, s3
	.loc	1 1111 19                       ; ragged.py:1111:19
	s_waitcnt vmcnt(2)
	v_cvt_f32_i32_e32 v129, v0
	v_cvt_f32_i32_e32 v132, v1
	v_cvt_f32_i32_e32 v164, v2
	v_cvt_f32_i32_e32 v159, v3
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v141, v4
	v_cvt_f32_i32_e32 v142, v5
	v_cvt_f32_i32_e32 v143, v6
	v_cvt_f32_i32_e32 v145, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:64
	scratch_load_b128 v[4:7], off, off offset:80
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v144, v0
	v_cvt_f32_i32_e32 v138, v1
	v_cvt_f32_i32_e32 v139, v2
	v_cvt_f32_i32_e32 v140, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v130, v4
	v_cvt_f32_i32_e32 v134, v5
	v_cvt_f32_i32_e32 v133, v6
	v_cvt_f32_i32_e32 v131, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:96
	scratch_load_b128 v[4:7], off, off offset:112
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v161, v0
	v_cvt_f32_i32_e32 v160, v1
	v_cvt_f32_i32_e32 v163, v2
	v_cvt_f32_i32_e32 v162, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v148, v4
	v_cvt_f32_i32_e32 v147, v5
	v_cvt_f32_i32_e32 v149, v6
	v_cvt_f32_i32_e32 v150, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:128
	scratch_load_b128 v[4:7], off, off offset:144
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v146, v0
	v_cvt_f32_i32_e32 v136, v1
	v_cvt_f32_i32_e32 v135, v2
	v_cvt_f32_i32_e32 v137, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v78, v4
	v_cvt_f32_i32_e32 v93, v5
	v_cvt_f32_i32_e32 v92, v6
	v_cvt_f32_i32_e32 v91, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:160
	scratch_load_b128 v[4:7], off, off offset:176
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v156, v0
	v_cvt_f32_i32_e32 v155, v1
	v_cvt_f32_i32_e32 v158, v2
	v_cvt_f32_i32_e32 v157, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v152, v4
	v_cvt_f32_i32_e32 v151, v5
	v_cvt_f32_i32_e32 v153, v6
	v_cvt_f32_i32_e32 v154, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:192
	scratch_load_b128 v[4:7], off, off offset:208
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v104, v0
	v_cvt_f32_i32_e32 v102, v1
	v_cvt_f32_i32_e32 v101, v2
	v_cvt_f32_i32_e32 v103, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v77, v4
	v_cvt_f32_i32_e32 v97, v5
	v_cvt_f32_i32_e32 v96, v6
	v_cvt_f32_i32_e32 v95, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:224
	scratch_load_b128 v[4:7], off, off offset:240
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v110, v0
	v_cvt_f32_i32_e32 v111, v1
	v_cvt_f32_i32_e32 v113, v2
	v_cvt_f32_i32_e32 v112, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v106, v4
	v_cvt_f32_i32_e32 v107, v5
	v_cvt_f32_i32_e32 v108, v6
	v_cvt_f32_i32_e32 v109, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:256
	scratch_load_b128 v[4:7], off, off offset:272
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v105, v0
	v_cvt_f32_i32_e32 v89, v1
	v_cvt_f32_i32_e32 v90, v2
	v_cvt_f32_i32_e32 v94, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v69, v4
	v_cvt_f32_i32_e32 v100, v5
	v_cvt_f32_i32_e32 v99, v6
	v_cvt_f32_i32_e32 v98, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:288
	scratch_load_b128 v[4:7], off, off offset:304
	.loc	1 1112 24                       ; ragged.py:1112:24
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v85, v0
	v_cvt_f32_i32_e32 v86, v1
	v_cvt_f32_i32_e32 v88, v2
	v_cvt_f32_i32_e32 v87, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v70, v4
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v72, v6
	v_cvt_f32_i32_e32 v73, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off offset:320
	scratch_load_b128 v[4:7], off, off offset:336
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v74, v0
	v_cvt_f32_i32_e32 v66, v1
	v_cvt_f32_i32_e32 v67, v2
	v_cvt_f32_i32_e32 v68, v3
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v11, v4
	v_cvt_f32_i32_e32 v65, v5
	v_cvt_f32_i32_e32 v172, v6
	v_cvt_f32_i32_e32 v170, v7
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[0:3], off, off
	scratch_load_b128 v[4:7], off, off offset:16
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v42, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v41, v1
	scratch_load_b32 v1, off, off offset:764 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v38, v2
	v_cvt_f32_i32_e32 v39, v3
	s_waitcnt vmcnt(2)
	v_cvt_f32_i32_e32 v48, v4
	v_cvt_f32_i32_e32 v47, v5
	v_cvt_f32_i32_e32 v46, v6
	v_cvt_f32_i32_e32 v45, v7
	v_cvt_f32_i32_e32 v5, v20
	v_cvt_f32_i32_e32 v6, v22
	v_cvt_f32_i32_e32 v7, v23
	v_dual_mov_b32 v4, s22 :: v_dual_mov_b32 v3, v165
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v2, 0x80, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 24 is_stmt 0                ; ragged.py:0:24
	scratch_load_b32 v165, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, 28, v1
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s16
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 5, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 32, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v1, 0xf0, v165
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v50, v1, 2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v50, v49, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v49, s0, s22, v166
	v_add_co_ci_u32_e64 v50, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 16, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s1, s22, v49
	v_add_co_ci_u32_e64 v50, null, s23, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_dual_cndmask_b32 v0, 0x80000000, v8 :: v_dual_lshlrev_b32 v51, 1, v49
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 32, v166
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v49, s4, s22, v49
	v_add_co_ci_u32_e64 v50, null, s23, 0, s4
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v54, 1, v49
	v_cndmask_b32_e32 v8, 0x80000000, v51, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[49:50]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[49:50]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v49, 48, v166
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s1, s20, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s1, s20, s1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v49, s6, s22, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v50, null, s23, 0, s6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[24:25], v[49:50]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[49:50]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v50, s29, v165
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v53, v50, v53
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v50, 0x80000000, v54, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s6, s1, 1
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v49, 0x80000000, v49, vcc_lo
	s_clause 0x3
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	buffer_load_u16 v8, v8, s[12:15], 0 offen
	buffer_load_u16 v54, v50, s[12:15], 0 offen
	buffer_load_u16 v55, v49, s[12:15], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v51, 16, v0
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v50, 16, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v63, v161, v50 :: v_dual_lshlrev_b32 v8, 16, v55
	v_dual_mul_f32 v64, v160, v50 :: v_dual_lshlrev_b32 v49, 1, v53
	v_mul_f32_e32 v58, v162, v50
	v_mul_f32_e32 v59, v163, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v84, v84, v50 :: v_dual_mul_f32 v39, v39, v8
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v49, v49, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v10, v10, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v113, v8
	v_mul_f32_e32 v122, v112, v8
	v_mul_f32_e32 v110, v110, v8
	v_mul_f32_e32 v123, v111, v8
	v_mul_f32_e32 v106, v106, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v45, v45, v8
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v89, v89, v8
	v_mul_f32_e32 v93, v93, v50
	v_mul_f32_e32 v91, v91, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v83, v83, v50
	v_mul_f32_e32 v31, v31, v50
	v_mul_f32_e32 v19, v24, v50
	v_mul_f32_e32 v21, v174, v50
	v_mul_f32_e32 v7, v7, v8
	v_mul_f32_e32 v5, v5, v8
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v52, v49
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v49, 16, v54
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v114, v158, v49
	v_mul_f32_e32 v54, v164, v51
	v_mul_f32_e32 v57, v129, v51
	v_mul_f32_e32 v117, v155, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v155, v1, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v159, v51
	v_mul_f32_e32 v115, v157, v49
	v_mul_f32_e32 v116, v156, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[118:121], v155
	ds_load_b128 v[156:159], v155 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v56, v132, v51 :: v_dual_mul_f32 v127, v154, v49
	v_mul_f32_e32 v128, v153, v49
	v_mul_f32_e32 v129, v152, v49
	v_mul_f32_e32 v132, v151, v49
	v_mul_f32_e32 v104, v104, v49
	v_mul_f32_e32 v151, v103, v49
	v_mul_f32_e32 v103, v101, v49
	v_mul_f32_e32 v97, v97, v49
	v_dual_mul_f32 v96, v96, v49 :: v_dual_mul_f32 v85, v85, v51
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v80, v80, v49
	v_dual_mul_f32 v79, v79, v49 :: v_dual_mul_f32 v70, v70, v51
	v_mul_f32_e32 v37, v37, v49
	v_mul_f32_e32 v71, v71, v51
	v_dual_mul_f32 v35, v35, v49 :: v_dual_mul_f32 v18, v169, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v60, v57, v118 :: v_dual_mul_f32 v61, v56, v119
	v_dual_mul_f32 v62, v54, v120 :: v_dual_mul_f32 v55, v55, v121
	v_mul_f32_e32 v112, v117, v119
	v_dual_mul_f32 v56, v63, v118 :: v_dual_mul_f32 v57, v64, v119
	v_dual_mul_f32 v58, v58, v121 :: v_dual_mul_f32 v59, v59, v120
	v_dual_mul_f32 v111, v116, v118 :: v_dual_mul_f32 v114, v114, v120
	v_dual_mul_f32 v113, v115, v121 :: v_dual_mul_f32 v54, v110, v118
	v_dual_mul_f32 v110, v0, v120 :: v_dual_mul_f32 v115, v143, v51
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v145, v51
	v_mul_f32_e32 v116, v142, v51
	v_dual_mul_f32 v117, v141, v51 :: v_dual_mul_f32 v118, v150, v50
	v_dual_mul_f32 v120, v147, v50 :: v_dual_mul_f32 v141, v109, v8
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, v108, v8 :: v_dual_mul_f32 v125, v115, v158
	v_mul_f32_e32 v143, v107, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v63, v123, v119 :: v_dual_mul_f32 v64, v122, v121
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v121, v149, v50
	v_mul_f32_e32 v119, v148, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v123, v117, v156 :: v_dual_mul_f32 v124, v116, v157
	v_mul_f32_e32 v126, v0, v159
	v_dual_mul_f32 v122, v118, v159 :: v_dual_mul_f32 v107, v129, v156
	v_dual_mul_f32 v108, v132, v157 :: v_dual_mul_f32 v117, v142, v158
	v_dual_mul_f32 v109, v128, v158 :: v_dual_mul_f32 v116, v127, v159
	v_dual_mul_f32 v106, v106, v156 :: v_dual_mul_f32 v115, v143, v157
	v_dual_mul_f32 v118, v141, v159 :: v_dual_mul_f32 v149, v136, v50
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v0, v144, v51
	v_dual_mul_f32 v127, v140, v51 :: v_dual_mul_f32 v132, v146, v50
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[140:143], v155 offset:512
	ds_load_b128 v[144:147], v155 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v128, v139, v51
	v_dual_mul_f32 v129, v138, v51 :: v_dual_mul_f32 v138, v105, v8
	v_mul_f32_e32 v148, v137, v50
	v_mul_f32_e32 v150, v135, v50
	v_mul_f32_e32 v102, v102, v49
	v_mul_f32_e32 v94, v94, v8
	v_mul_f32_e32 v98, v98, v8
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v40, v40, v8 :: v_dual_mul_f32 v67, v67, v51
	v_dual_mul_f32 v33, v33, v49 :: v_dual_mul_f32 v20, v171, v50
	v_mul_f32_e32 v17, v168, v49
	v_mul_f32_e32 v9, v9, v49
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v23, v28, v49
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v120, v120, v157 :: v_dual_mul_f32 v121, v121, v158
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v139, v0, v140
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v90, v90, v8
	v_dual_mul_f32 v0, v134, v51 :: v_dual_mul_f32 v135, v132, v140
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v105, v104, v140 :: v_dual_mul_f32 v136, v129, v141
	v_mul_f32_e32 v137, v128, v142
	v_dual_mul_f32 v101, v138, v140 :: v_dual_mul_f32 v138, v127, v143
	v_dual_mul_f32 v127, v149, v141 :: v_dual_mul_f32 v128, v150, v142
	v_mul_f32_e32 v89, v89, v141
	v_dual_mul_f32 v129, v148, v143 :: v_dual_mul_f32 v102, v102, v141
	v_mul_f32_e32 v103, v103, v142
	v_mul_f32_e32 v90, v90, v142
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v134, v130, v51 :: v_dual_mul_f32 v149, v69, v8
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v142, v99, v8 :: v_dual_mul_f32 v69, v0, v145
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v53, s20, 1
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v132, v133, v51 :: v_dual_mul_f32 v141, v100, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v104, v151, v143
	v_mul_f32_e32 v94, v94, v143
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v133, v131, v51 :: v_dual_mul_f32 v92, v92, v50
	v_dual_mul_f32 v140, v95, v49 :: v_dual_mul_f32 v131, v132, v146
	v_dual_mul_f32 v143, v78, v50 :: v_dual_mul_f32 v148, v77, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v133, v133, v147
	v_dual_mul_f32 v99, v93, v145 :: v_dual_mul_f32 v100, v92, v146
	v_dual_mul_f32 v95, v97, v145 :: v_dual_mul_f32 v130, v91, v147
	v_dual_mul_f32 v77, v141, v145 :: v_dual_mul_f32 v96, v96, v146
	v_mul_f32_e32 v91, v98, v147
	v_dual_mul_f32 v97, v140, v147 :: v_dual_mul_f32 v78, v142, v146
	v_mul_f32_e32 v93, v148, v144
	v_mul_f32_e32 v134, v134, v144
	v_dual_mul_f32 v98, v143, v144 :: v_dual_mul_f32 v53, v86, v51
	v_mul_f32_e32 v92, v149, v144
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v147, v42, v8
	v_mul_f32_e32 v148, v41, v8
	v_mul_f32_e32 v149, v38, v8
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v119, v119, v156
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s12, s8
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v52, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v88, v51
	v_mul_f32_e32 v52, v87, v51
	v_mul_f32_e32 v88, v44, v49
	v_mul_f32_e32 v146, v43, v49
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v155
	ds_load_b128 v[142:145], v155 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v86, v82, v50
	v_mul_f32_e32 v87, v81, v50
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v141, v85, v41
	v_mul_f32_e32 v140, v53, v42
	v_dual_mul_f32 v132, v52, v44 :: v_dual_mul_f32 v53, v79, v42
	v_dual_mul_f32 v81, v83, v41 :: v_dual_mul_f32 v82, v84, v42
	v_dual_mul_f32 v83, v86, v44 :: v_dual_mul_f32 v84, v87, v43
	v_mul_f32_e32 v52, v80, v41
	v_dual_mul_f32 v79, v88, v44 :: v_dual_mul_f32 v80, v146, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v85, v36, v49 :: v_dual_mul_f32 v38, v39, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v87, v70, v142 :: v_dual_mul_f32 v44, v72, v51
	v_dual_mul_f32 v0, v0, v43 :: v_dual_mul_f32 v41, v147, v41
	v_dual_mul_f32 v42, v148, v42 :: v_dual_mul_f32 v39, v149, v43
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v43, v73, v51 :: v_dual_mul_f32 v72, v76, v50
	v_dual_mul_f32 v147, v46, v8 :: v_dual_mul_f32 v76, v75, v50
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v73, v44, v144 :: v_dual_mul_f32 v30, v30, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v75, v43, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v34, v34, v49
	v_mul_f32_e32 v88, v48, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v36, v37, v142
	v_dual_mul_f32 v37, v85, v143 :: v_dual_mul_f32 v146, v47, v8
	v_mul_f32_e32 v86, v71, v143
	v_dual_mul_f32 v46, v72, v142 :: v_dual_mul_f32 v43, v35, v144
	v_dual_mul_f32 v47, v76, v143 :: v_dual_mul_f32 v48, v31, v144
	v_dual_mul_f32 v70, v30, v145 :: v_dual_mul_f32 v35, v147, v144
	v_dual_mul_f32 v44, v34, v145 :: v_dual_mul_f32 v147, v12, v8
	v_dual_mul_f32 v31, v88, v142 :: v_dual_mul_f32 v34, v146, v143
	v_dual_mul_f32 v30, v45, v145 :: v_dual_mul_f32 v45, v74, v51
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v72, v15, v49
	v_mul_f32_e32 v74, v14, v8
	v_mul_f32_e32 v146, v13, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[12:15], v155 offset:512
	ds_load_b128 v[142:145], v155 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v68, v68, v51
	v_mul_f32_e32 v66, v66, v51
	v_mul_f32_e32 v16, v167, v49
	v_mul_f32_e32 v6, v6, v8
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v45, v45, v12
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v22, v173, v50 :: v_dual_mul_f32 v85, v68, v15
	v_dual_mul_f32 v32, v32, v50 :: v_dual_mul_f32 v33, v33, v12
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v88, v66, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v76, v67, v14 :: v_dual_mul_f32 v71, v22, v13
	v_mul_f32_e32 v148, v32, v12
	v_mul_f32_e32 v66, v20, v14
	v_dual_mul_f32 v32, v17, v13 :: v_dual_mul_f32 v17, v170, v51
	v_dual_mul_f32 v67, v18, v15 :: v_dual_mul_f32 v18, v25, v50
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v25, v26, v49 :: v_dual_mul_f32 v26, v29, v8
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v149, v40, v12 :: v_dual_mul_f32 v12, v74, v13
	v_mul_f32_e32 v23, v23, v143
	v_mul_f32_e32 v13, v146, v14
	v_mul_f32_e32 v20, v16, v14
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v16, v172, v51
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v29, v26, v143 :: v_dual_mul_f32 v24, v27, v49
	v_dual_mul_f32 v49, v6, v144 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v45
	v_mul_f32_e32 v22, v72, v15
	v_dual_mul_f32 v14, v147, v15 :: v_dual_mul_f32 v27, v25, v145
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v15, v65, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v5, v5, v142
	v_mul_f32_e32 v25, v10, v142
	v_mul_f32_e32 v26, v11, v142
	v_mul_f32_e32 v8, v15, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v15, v16, v144 :: v_dual_mul_f32 v50, v7, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v16, v17, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v17, v18, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v18, v19, v144 :: v_dual_mul_f32 v19, v21, v145
	v_mul_f32_e32 v21, v9, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v7
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v6, v6, v45
	v_rcp_f32_e32 v9, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v7, v9, 1.0
	v_fmac_f32_e32 v9, v10, v9
	v_div_scale_f32 v10, vcc_lo, v45, v6, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_dual_mul_f32 v24, v24, v144 :: v_dual_mul_f32 v11, v10, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v7, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, v28, v9
	v_fma_f32 v7, -v7, v11, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v7, v7, v9, v11
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v8
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v8
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v9, v9, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v9, v9, v8
	v_rcp_f32_e32 v11, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v10, v11, 1.0
	v_fmac_f32_e32 v11, v28, v11
	v_div_scale_f32 v28, vcc_lo, v8, v9, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v40, v28, v11
	v_fma_f32 v51, -v10, v40, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v51, v11
	v_fma_f32 v10, -v10, v40, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v10, v10, v11, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v16
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v11, v11, v15
	v_rcp_f32_e32 v40, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v28, v40, 1.0
	v_fmac_f32_e32 v40, v51, v40
	v_div_scale_f32 v51, vcc_lo, v15, v11, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v40
	v_fma_f32 v68, -v28, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v40
	v_fma_f32 v28, -v28, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v28, v28, v40, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v40, v40, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v7
	v_fma_f32 v51, -v7, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v16, v40, v16
	v_mul_f32_e32 v65, v51, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v7, v65, v51
	v_fmac_f32_e32 v65, v68, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v7, v65, v51
	v_div_fmas_f32 v45, v7, v45, v65
	v_div_fixup_f32 v7, v10, v9, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v8, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v8, v8, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v9
	v_fma_f32 v51, -v9, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v51, v10
	v_div_scale_f32 v51, vcc_lo, v148, v8, v148
	v_mul_f32_e32 v65, v51, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v9, v65, v51
	v_fmac_f32_e32 v65, v68, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v9, v65, v51
	v_div_fmas_f32 v10, v9, v10, v65
	v_div_fixup_f32 v9, v28, v11, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v10, v8, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v10, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v17
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v15, v15, v17
	v_rcp_f32_e32 v28, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v11, v28, 1.0
	v_fmac_f32_e32 v28, v51, v28
	v_div_scale_f32 v51, vcc_lo, v17, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v28
	v_fma_f32 v68, -v11, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v28
	v_fma_f32 v11, -v11, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v28, v11, v28, v65
	v_div_fixup_f32 v11, v45, v40, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v18
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v16, v16, v18
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v45, 1.0
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v18, v16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v45
	v_fma_f32 v68, -v40, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v45
	v_fma_f32 v40, -v40, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v45, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v10, v10
	v_ldexp_f32 v10, v10, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v45, v45, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v10
	v_fma_f32 v65, -v10, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v19, v45, v19
	v_mul_f32_e32 v68, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v10, v68, v65
	v_fmac_f32_e32 v68, v72, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v10, v68, v65
	v_div_fmas_f32 v51, v10, v51, v68
	v_div_fixup_f32 v10, v28, v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v15, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v15, v15, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v28, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v15
	v_fma_f32 v65, -v15, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v65, v17
	v_div_scale_f32 v65, vcc_lo, v33, v28, v33
	v_mul_f32_e32 v68, v65, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v15, v68, v65
	v_fmac_f32_e32 v68, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v15, v68, v65
	v_div_fmas_f32 v65, v15, v17, v68
	v_div_fixup_f32 v15, v40, v16, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v16, v16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v18, v18, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v40, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v40, v17
	v_div_scale_f32 v40, vcc_lo, v23, v18, v23
	v_mul_f32_e32 v68, v40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v16, v68, v40
	v_fmac_f32_e32 v68, v72, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v68, v40
	v_div_fmas_f32 v40, v16, v17, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v16, 0xbfb8aa3b, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v51, v45, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v40, v18, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_mul_f32_e32 v23, 0xbfb8aa3b, v149
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v24
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v19
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v19, v19, v24
	v_rcp_f32_e32 v45, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v16, v45, 1.0
	v_fmac_f32_e32 v45, v51, v45
	v_div_scale_f32 v51, vcc_lo, v24, v19, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v51, v45
	v_fma_f32 v72, -v16, v68, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v72, v45
	v_fma_f32 v16, -v16, v68, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v45, v16, v45, v68
	v_div_fixup_f32 v16, v65, v28, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v45, v19, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v28, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v28, v28
	v_ldexp_f32 v28, v28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v28, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v33
	v_fma_f32 v65, -v33, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v27, v28, v27
	v_mul_f32_e32 v68, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v33, v68, v65
	v_fmac_f32_e32 v68, v72, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v68, v65
	v_div_fmas_f32 v33, v33, v51, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v149
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v23, v23, v149
	v_rcp_f32_e32 v51, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v40, v51, 1.0
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v149, v23, v149
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v51
	v_fma_f32 v72, -v40, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v72, v51
	v_fma_f32 v40, -v40, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v40, v51, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v24, v24, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v24, v24, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v65, -v40, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v65, v45
	v_div_scale_f32 v65, vcc_lo, v29, v24, v29
	v_mul_f32_e32 v68, v65, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v40, v68, v65
	v_fmac_f32_e32 v68, v72, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v68, v65
	v_div_fmas_f32 v45, v40, v45, v68
	v_div_fixup_f32 v40, v33, v28, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v27, v27, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v28
	v_fma_f32 v65, -v28, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v65, v33
	v_div_scale_f32 v65, vcc_lo, v49, v27, v49
	v_mul_f32_e32 v68, v65, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v28, v68, v65
	v_fmac_f32_e32 v68, v72, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v68, v65
	v_div_fmas_f32 v33, v28, v33, v68
	v_div_fixup_f32 v28, v51, v23, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v24, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v51, null, v23, v23, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v51
	v_fma_f32 v68, -v51, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v65
	v_div_scale_f32 v68, vcc_lo, v50, v23, v50
	v_mul_f32_e32 v72, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v51, v72, v68
	v_fmac_f32_e32 v72, v74, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v72, v68
	v_div_fmas_f32 v51, v51, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v141
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v24, v24, v141
	v_rcp_f32_e32 v65, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v29, v65, 1.0
	v_fmac_f32_e32 v65, v68, v65
	v_div_scale_f32 v68, vcc_lo, v141, v24, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v68, v65
	v_fma_f32 v74, -v29, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v74, v65
	v_fma_f32 v29, -v29, v72, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v29, v29, v65, v72
	v_div_fixup_f32 v72, v33, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v140
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v140
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v27, v27, v140
	v_rcp_f32_e32 v49, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v33, v49, 1.0
	v_fmac_f32_e32 v49, v65, v49
	v_div_scale_f32 v65, vcc_lo, v140, v27, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v49
	v_fma_f32 v74, -v33, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v74, v49
	v_div_fixup_f32 v74, v51, v23, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v49, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v132
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v49, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v49, v49, v132
	v_rcp_f32_e32 v50, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v23, v50, 1.0
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v132, v49, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v51, v50
	v_fma_f32 v68, -v23, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v68, v50
	v_fma_f32 v23, -v23, v65, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v50, v23, v50, v65
	v_div_fixup_f32 v23, v29, v24, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v0
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v24, v24, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v51, v51, v0
	v_rcp_f32_e32 v29, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v24, v29, 1.0
	v_fmac_f32_e32 v29, v65, v29
	v_div_scale_f32 v65, vcc_lo, v0, v51, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v65, v29
	v_fma_f32 v141, -v24, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v141, v29
	v_fma_f32 v24, -v24, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v24, v29, v68
	v_div_fixup_f32 v24, v33, v27, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v87
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, null, v27, v27, v87
	v_rcp_f32_e32 v33, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v29, v33, 1.0
	v_fmac_f32_e32 v33, v68, v33
	v_div_scale_f32 v68, vcc_lo, v87, v27, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v68, v33
	v_fma_f32 v141, -v29, v140, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v33
	v_fma_f32 v29, -v29, v140, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v68, v29, v33, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v33, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v50, v49, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v86
	v_exp_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v33, v33, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v50, v50, v86
	v_rcp_f32_e32 v49, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v33, v49, 1.0
	v_fmac_f32_e32 v49, v132, v49
	v_div_scale_f32 v132, vcc_lo, v86, v50, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v132, v49
	v_fma_f32 v141, -v33, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v49
	v_fma_f32 v33, -v33, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v33, v49, v140
	v_div_fixup_f32 v33, v65, v51, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v73
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v0, v0, v73
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v49, v51, 1.0
	v_fmac_f32_e32 v51, v65, v51
	v_div_scale_f32 v65, vcc_lo, v73, v0, v73
	v_div_fixup_f32 v50, v132, v50, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v65, v51
	v_fma_f32 v141, -v49, v140, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v51
	v_fma_f32 v49, -v49, v140, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v51, v49, v51, v140
	v_div_fixup_f32 v49, v68, v27, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v0, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v65
	v_fma_f32 v87, -v65, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v87, v68
	v_div_scale_f32 v87, vcc_lo, v75, v27, v75
	v_mul_f32_e32 v140, v87, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v65, v140, v87
	v_fmac_f32_e32 v140, v141, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v140, v87
	v_div_fmas_f32 v65, v65, v68, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v86, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v86, v86, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v87, v68
	v_fma_f32 v132, -v68, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v132, v87
	v_div_scale_f32 v132, vcc_lo, v88, v86, v88
	v_mul_f32_e32 v140, v132, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v68, v140, v132
	v_fmac_f32_e32 v140, v141, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v68, v140, v132
	v_div_fmas_f32 v87, v68, v87, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v65, v27, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v76
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v76
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, vcc_lo, v76, v0, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v73, v65
	v_fma_f32 v132, -v27, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v132, v65
	v_fma_f32 v27, -v27, v75, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v27, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v75, v87, v86, v88
	v_div_fixup_f32 v76, v27, v0, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v86, v73
	v_fma_f32 v87, -v73, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v85, v65, v85
	v_mul_f32_e32 v88, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v73, v88, v87
	v_fmac_f32_e32 v88, v132, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v88, v87
	v_div_fmas_f32 v73, v73, v86, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v86, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v73, v65, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v86
	v_cndmask_b32_e64 v86, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, 0xbfb8aa3b, v26
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v86, v86, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v86, 1.0, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v86, v86, v26
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v132, v88
	v_div_scale_f32 v132, vcc_lo, v26, v86, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v132, v88
	v_fma_f32 v141, -v87, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v88
	v_fma_f32 v87, -v87, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v87, v87, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v87, v86, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v0, v0, v81
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v73, v65
	v_div_scale_f32 v73, vcc_lo, v81, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v73, v65
	v_fma_f32 v132, -v27, v88, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v132, v65
	v_fma_f32 v27, -v27, v88, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v65, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v81, v27, v0, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_mul_f32_e32 v0, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v65, v65, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v73
	v_fma_f32 v132, -v73, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v132, v88
	v_div_scale_f32 v132, vcc_lo, v82, v65, v82
	v_mul_f32_e32 v140, v132, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v73, v140, v132
	v_fmac_f32_e32 v140, v141, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v73, v140, v132
	v_div_fmas_f32 v73, v73, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v82, v73, v65, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v83
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v88, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v132, null, v88, v88, v83
	v_rcp_f32_e32 v140, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v132, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v83, v88, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v132, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v132, -v132, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v132, v132, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v140, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v132, v88, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v140, v140
	v_ldexp_f32 v140, v140, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v141, null, v140, v140, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v142, v141
	v_fma_f32 v143, -v141, v142, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v84, v140, v84
	v_mul_f32_e32 v144, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v141, v144, v143
	v_fmac_f32_e32 v144, v145, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v141, v144, v143
	v_div_fmas_f32 v141, v141, v142, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v141, v140, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v59, v84 :: v_dual_fmac_f32 v0, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v0
	v_ldexp_f32 v0, v0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v65, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v46, v0, v46
	v_mul_f32_e32 v73, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v26, v73, v65
	v_fmac_f32_e32 v73, v87, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v73, v65
	v_div_fmas_f32 v26, v26, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v26, v0, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v0, 0xbfb8aa3b, v66
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v47
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v47
	v_rcp_f32_e32 v73, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v65, v73, 1.0
	v_fmac_f32_e32 v73, v87, v73
	v_div_scale_f32 v87, vcc_lo, v47, v27, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v73
	v_fma_f32 v132, -v65, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v132, v73
	v_fma_f32 v65, -v65, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v65, v65, v73, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v73, 0xbfb8aa3b, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v87, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v48
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v73, v73, v87
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v73, v73, v48
	v_rcp_f32_e32 v88, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v87, v88, 1.0
	v_fmac_f32_e32 v88, v132, v88
	v_div_scale_f32 v132, vcc_lo, v48, v73, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v132, v88
	v_fma_f32 v141, -v87, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v88
	v_fma_f32 v87, -v87, v140, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v87, v88, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v88, v73, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v132, v132, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v87
	v_fma_f32 v141, -v87, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v70, v132, v70
	v_mul_f32_e32 v142, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v87, v142, v141
	v_fmac_f32_e32 v142, v143, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v87, v142, v141
	v_div_fmas_f32 v140, v87, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v88, v140, v132, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v71
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v141, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v87, null, v141, v141, v71
	v_rcp_f32_e32 v142, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v87, v142, 1.0
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v71, v141, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v142
	v_fma_f32 v145, -v87, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v142
	v_fma_f32 v87, -v87, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v142, v87, v142, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v87, v65, v27, v47
	v_div_fixup_f32 v47, v142, v141, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v66
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v0, v0, v66
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v66, v0, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v65, v27
	v_fma_f32 v71, -v26, v70, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v27
	v_fma_f32 v26, -v26, v70, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v26, v26, v27, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v26, v0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_mul_f32_e32 v26, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v65
	v_fma_f32 v71, -v65, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v67, v27, v67
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v65, v73, v71
	v_fmac_f32_e32 v73, v132, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v73, v71
	v_div_fmas_f32 v65, v65, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v73, v71
	v_fma_f32 v132, -v71, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v73, v132, v73
	v_div_scale_f32 v132, vcc_lo, v25, v70, v25
	v_mul_f32_e32 v140, v132, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v71, v140, v132
	v_fmac_f32_e32 v140, v141, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v71, v140, v132
	v_div_fixup_f32 v132, v65, v27, v67
	v_div_fmas_f32 v71, v71, v73, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v52
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v52
	v_rcp_f32_e32 v65, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v27, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v52, v26, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v73, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v73, v65
	v_fma_f32 v27, -v27, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v53
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v53
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v53
	v_rcp_f32_e32 v67, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v67, 1.0
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, vcc_lo, v53, v65, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v73, v67
	v_fma_f32 v141, -v66, v140, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v67
	v_fma_f32 v66, -v66, v140, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v66, v66, v67, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v79
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v79
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v67, v67, v79
	v_rcp_f32_e32 v140, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v141, -v73, v140, 1.0
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v79, v67, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v142, v141, v140
	v_fma_f32 v143, -v73, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v143, v140
	v_fma_f32 v73, -v73, v142, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v73, v140, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v140, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	v_cndmask_b32_e64 v140, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v141, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, 0xbfb8aa3b, v80
	v_exp_f32_e32 v140, v140
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v140, v140, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v140, 1.0, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v141, null, v140, v140, v80
	v_rcp_f32_e32 v142, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v143, -v141, v142, 1.0
	v_fmac_f32_e32 v142, v143, v142
	v_div_scale_f32 v143, vcc_lo, v80, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v143, v142
	v_fma_f32 v145, -v141, v144, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v145, v142
	v_fma_f32 v141, -v141, v144, v143
	v_div_fixup_f32 v143, v27, v26, v52
	v_div_fixup_f32 v52, v66, v65, v53
	v_div_fixup_f32 v53, v73, v67, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v141, v141, v142, v144
	v_div_fixup_f32 v142, v71, v70, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v112, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v141, v140, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v25, v25, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v65, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v65, v27
	v_div_scale_f32 v65, vcc_lo, v36, v25, v36
	v_mul_f32_e32 v66, v65, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v26, v66, v65
	v_fmac_f32_e32 v66, v67, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v66, v65
	v_div_fmas_f32 v26, v26, v27, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v27, v27, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v27, v27, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v66, v65
	v_fma_f32 v67, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v67, v66
	v_div_scale_f32 v67, vcc_lo, v37, v27, v37
	v_mul_f32_e32 v70, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v65, v70, v67
	v_fmac_f32_e32 v70, v71, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v65, v70, v67
	v_div_fmas_f32 v65, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v66, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v66, v66
	v_ldexp_f32 v66, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v66, v66, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v71, -v67, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v71, v70
	v_div_scale_f32 v71, vcc_lo, v43, v66, v43
	v_mul_f32_e32 v73, v71, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v67, v73, v71
	v_fmac_f32_e32 v73, v80, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v73, v71
	v_div_fmas_f32 v67, v67, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v67, v66, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v44
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v70, v70, v44
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v71, v73, 1.0
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, vcc_lo, v44, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v140, v80, v73
	v_fma_f32 v141, -v71, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v73
	v_fma_f32 v71, -v71, v140, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v71, v71, v73, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v73, 0xbfb8aa3b, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v71, v70, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v73
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v73, v73
	v_ldexp_f32 v73, v73, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v73, v73, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v140, v80
	v_fma_f32 v141, -v80, v140, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v141, v140
	v_div_scale_f32 v141, vcc_lo, v32, v73, v32
	v_mul_f32_e32 v144, v141, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v145, -v80, v144, v141
	v_fmac_f32_e32 v144, v145, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v80, v144, v141
	v_div_fixup_f32 v141, v65, v27, v37
	v_div_fmas_f32 v80, v80, v140, v144
	v_div_fixup_f32 v140, v26, v25, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v80, v73, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v20
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v25, v25, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v25, v25, v20
	v_rcp_f32_e32 v27, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v26, v27, 1.0
	v_fmac_f32_e32 v27, v32, v27
	v_div_scale_f32 v32, vcc_lo, v20, v25, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v36, v32, v27
	v_fma_f32 v37, -v26, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v37, v27
	v_fma_f32 v26, -v26, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v26, v26, v27, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v22
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v27, v27, v22
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v32, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v22, v27, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v37, v36
	v_fma_f32 v66, -v32, v65, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v36
	v_fma_f32 v32, -v32, v65, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v32, v32, v36, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v21
	v_exp_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v36, v36, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v21
	v_rcp_f32_e32 v65, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v37, v65, 1.0
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v21, v36, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v67, v66, v65
	v_fma_f32 v70, -v37, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v65
	v_fma_f32 v37, -v37, v67, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v65, 0xbfb8aa3b, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v146, v37, v36, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v70, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, vcc_lo, v41, v65, v41
	v_mul_f32_e32 v71, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v71, v70
	v_fmac_f32_e32 v71, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v71, v70
	v_div_fmas_f32 v66, v66, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v67, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v66, v65, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v42
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v67, v67, v42
	v_rcp_f32_e32 v71, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v70, v71, 1.0
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, vcc_lo, v42, v67, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v73, v71
	v_fma_f32 v145, -v70, v144, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v144, v145, v71
	v_div_fixup_f32 v145, v32, v27, v22
	v_fma_f32 v70, -v70, v144, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v62, v33
	v_dual_mul_f32 v33, v119, v46 :: v_dual_mul_f32 v62, v56, v81
	v_mul_f32_e32 v56, v129, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v71, v144
	v_div_fixup_f32 v144, v26, v25, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v38 :: v_dual_mul_f32 v71, v60, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v130, v17
	v_dual_mul_f32 v17, v116, v44 :: v_dual_mul_f32 v60, v58, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v127, v47 :: v_dual_mul_f32 v47, v104, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v147, v70, v67, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v105, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v93, v146
	v_mul_f32_e32 v44, v63, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v38
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v20, v20, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v20, v20, v38
	v_rcp_f32_e32 v22, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v21, v22, 1.0
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v25, vcc_lo, v38, v20, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v25, v22
	v_fma_f32 v27, -v21, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v22
	v_fma_f32 v21, -v21, v26, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v21, v21, v22, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v39
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v39
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v39, v22, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v32, v27, v26
	v_fma_f32 v36, -v25, v32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v36, v26
	v_fma_f32 v25, -v25, v32, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v25, v22, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v26, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v27
	v_fma_f32 v36, -v27, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, vcc_lo, v31, v26, v31
	v_mul_f32_e32 v37, v36, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v27, v37, v36
	v_fmac_f32_e32 v37, v42, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v27, v37, v36
	v_div_fmas_f32 v27, v27, v32, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v27, v26, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v34
	v_exp_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v32, v32, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v32, v32, v34
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v36, v37, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, vcc_lo, v34, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v65, v42, v37
	v_fma_f32 v66, -v36, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v37
	v_fma_f32 v36, -v36, v65, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v37, 0xbfb8aa3b, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v150, v36, v32, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v37, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v42
	v_fma_f32 v66, -v42, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v66, v65
	v_div_scale_f32 v66, vcc_lo, v35, v37, v35
	v_mul_f32_e32 v67, v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v42, v67, v66
	v_dual_fmac_f32 v67, v70, v65 :: v_dual_mul_f32 v70, v61, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v57, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v148, v21, v20, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v42, v67, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v138, v85
	v_dual_mul_f32 v24, v98, v142 :: v_dual_mul_f32 v57, v128, v0
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v62|, |v61|
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v42, v65, v67
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v139, v6
	v_mul_f32_e32 v67, v137, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v151, v42, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v20, v20, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v25, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v25, v22
	v_div_scale_f32 v25, vcc_lo, v30, v20, v30
	v_mul_f32_e32 v26, v25, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v21, v26, v25
	v_fmac_f32_e32 v26, v27, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v26, v25
	v_div_fmas_f32 v21, v21, v22, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v152, v21, v20, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v21, v99, v10 :: v_dual_mul_f32 v30, v121, v48
	v_mul_f32_e32 v20, v107, v140
	v_mul_f32_e32 v48, v103, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v12
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v22, v22, v12
	v_rcp_f32_e32 v26, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v27, -v25, v26, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v12, v22, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v27, v26
	v_fma_f32 v32, -v25, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v32, v26
	v_fma_f32 v25, -v25, v31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v26, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v153, v25, v22, v12
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v69, v7
	v_dual_mul_f32 v69, v55, v29 :: v_dual_mul_f32 v22, v100, v15
	v_mul_f32_e32 v55, v135, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v122, v88
	v_dual_mul_f32 v15, v97, v40 :: v_dual_mul_f32 v12, v106, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v118, v152
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v26, v26, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v26, v26, v13
	v_rcp_f32_e32 v31, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v27, v31, 1.0
	v_fmac_f32_e32 v31, v32, v31
	v_div_scale_f32 v32, vcc_lo, v13, v26, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v32, v31
	v_fma_f32 v35, -v27, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v31
	v_fma_f32 v27, -v27, v34, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v31, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v31, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v154, v27, v26, v13
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v131, v9 :: v_dual_mul_f32 v27, v133, v11
	v_dual_mul_f32 v13, v95, v18 :: v_dual_mul_f32 v18, v109, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v64, v148
	v_mul_f32_e32 v11, v115, v150
	v_mul_f32_e32 v40, v90, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v117, v151
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	v_ldexp_f32 v31, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v31, v31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v35, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v14, v31, v14
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v32, v36, v35
	v_fmac_f32_e32 v36, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v36, v35
	v_div_fmas_f32 v32, v32, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v155, v32, v31, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v32, v134, v86 :: v_dual_mul_f32 v31, v120, v87
	v_mul_f32_e32 v14, v96, v19
	v_mul_f32_e32 v19, v108, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v32|, |v25|, |v26|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v5
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v34, v34, v35
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v34, v34, v5
	v_rcp_f32_e32 v36, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v35, v36, 1.0
	v_fmac_f32_e32 v36, v37, v36
	v_div_scale_f32 v37, vcc_lo, v5, v34, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v38, v37, v36
	v_fma_f32 v42, -v35, v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v42, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v110, v39
	v_mul_f32_e32 v39, v94, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v35, v38, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v123, v49
	v_mul_f32_e32 v49, v102, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v36, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v124, v50
	v_mul_f32_e32 v50, v114, v79
	v_dual_mul_f32 v38, v101, v28 :: v_dual_and_b32 v79, 0x60, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v156, v35, v34, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v126, v68
	v_mul_f32_e32 v68, v136, v75
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v71|, |v70|
	v_max3_f32 v6, |v69|, |v37|, |v36|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v125, v51
	v_mul_f32_e32 v51, v113, v53
	v_dual_mul_f32 v53, v111, v143 :: v_dual_mul_f32 v10, v92, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v73|, v6
	v_max3_f32 v6, |v68|, |v67|, |v66|
	v_max3_f32 v6, v6, v7, |v27|
	v_max3_f32 v7, |v35|, |v34|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max3_f32 v75, v5, v7, v6
	v_max3_f32 v5, |v60|, |v33|, |v31|
	v_max3_f32 v6, |v24|, |v21|, |v22|
	v_max3_f32 v7, |v16|, |v13|, |v14|
	v_max3_f32 v0, v0, |v59|, v5
	v_max3_f32 v5, |v58|, |v57|, |v56|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, v6, |v23|
	v_max3_f32 v6, |v30|, |v29|, |v55|
	v_max3_f32 v0, v0, v6, v5
	v_max_f32_e64 v5, |v53|, |v52|
	v_max3_f32 v6, |v51|, |v20|, |v19|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v5, v5, |v50|, v6
	v_max3_f32 v6, |v49|, |v48|, |v47|
	v_max3_f32 v6, v6, v7, |v15|
	v_max3_f32 v7, |v18|, |v17|, |v46|
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v76, v5, v7, v6
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v77, v45
	v_mul_f32_e32 v45, v54, v41
	v_dual_mul_f32 v6, v78, v72 :: v_dual_mul_f32 v41, v89, v153
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v54, |v43|, |v12|, |v11|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v91, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v28, |v45|, |v44|
	v_max3_f32 v63, |v10|, |v5|, |v6|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v77, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, v28, |v42|, v54
	v_max3_f32 v54, |v41|, |v40|, |v39|
	v_max3_f32 v54, v54, v63, |v7|
	v_max3_f32 v63, |v9|, |v8|, |v38|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v28, v28, v63, v54
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v63, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v54, v75, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v63, v63, v63 :: v_dual_max_f32 v54, v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v81, v0, v63
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v76, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v75, v54 :: v_dual_and_b32 v63, 8, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v82, v76, v0
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v28, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v83, v28, v0 :: v_dual_and_b32 v0, 3, v165
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v28, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v54, v0, 9, 0
	v_lshlrev_b32_e32 v75, 5, v0
	v_lshl_add_u32 v72, v28, 6, 0
	v_lshl_add_u32 v0, v0, 4, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v54, v28, 2, v54
	v_xor_b32_e32 v64, v75, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v54, v63, 4, v54
	v_add3_u32 v54, v54, v77, v64
	v_lshrrev_b32_e32 v64, 3, v2
	v_add_nc_u32_e32 v2, 0, v2
	ds_store_b128 v54, v[80:83]
	v_lshlrev_b32_e32 v54, 4, v165
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v54, 0x680, v54, v75
	v_xor_b32_e32 v54, v54, v79
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v54, v72, v64, v54
	ds_load_b128 v[80:83], v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v64, v80
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v80, v80
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v81
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v74, v82
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v83, v83
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v64, v76, v64 :: v_dual_max_f32 v83, v83, v83
	v_max_f32_e32 v72, v78, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v64
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v54, v54, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v76
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v72
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v72, v72, v76
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v78, v72
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v78, v78, v78
	v_max_f32_e32 v80, v64, v76
	v_max_f32_e32 v64, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v72, v78 :: v_dual_max_f32 v64, v82, v64
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v64, v64, v72
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v72, v72 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v82, v64, v72
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v54
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
	v_max_f32_e32 v54, v54, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v64, v54
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v64, v64, v64
	v_dual_max_f32 v83, v54, v64 :: v_dual_lshlrev_b32 v54, 3, v63
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v63, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v2, v2, v63, v54
	ds_store_b128 v2, v[80:83]
	v_lshlrev_b32_e32 v2, 5, v28
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v2, v54
	ds_load_b128 v[80:83], v0
.Ltmp53:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v80, v80
	v_max_f32_e32 v2, v82, v82
	v_max_f32_e32 v28, v81, v81
	v_max_f32_e32 v54, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v64, v63
	v_fma_f32 v72, -v63, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, vcc_lo, v0, 0x40e00000, v0
	v_mul_f32_e32 v74, v72, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v63, v74, v72
	v_fmac_f32_e32 v74, v76, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v63, v74, v72
	v_max_f32_e32 v72, 0x2b8cbccc, v2
	v_div_fmas_f32 v64, v63, v64, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v72
	v_div_fixup_f32 v0, v64, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v63, v2
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v64.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v74, -v2, v63, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v74, v63
	v_div_scale_f32 v74, vcc_lo, v72, 0x40e00000, v72
	v_mul_f32_e32 v76, v74, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v2, v76, v74
	v_fmac_f32_e32 v76, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v76, v74
	v_div_fmas_f32 v74, v2, v63, v76
	v_max_f32_e32 v76, 0x2b8cbccc, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v76
	v_rcp_f32_e32 v28, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v2, v28, 1.0
	v_fmac_f32_e32 v28, v63, v28
	v_div_scale_f32 v63, vcc_lo, v76, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v63, v28
	v_fma_f32 v80, -v2, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v80, v28
	v_fma_f32 v2, -v2, v78, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v2, v28, v78
	v_max_f32_e32 v2, 0x2b8cbccc, v54
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v54, v28
	v_fma_f32 v63, -v28, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v63, v54
	v_div_scale_f32 v63, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v80, v63, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v28, v80, v63
	v_fmac_f32_e32 v80, v81, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v80, v63
	v_div_fmas_f32 v63, v28, v54, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v28.l, v0.h
	v_mov_b16_e32 v28.h, v64.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v63, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v28, v0, v28, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v54, 0xffff0000, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v71
	v_rcp_f32_e32 v80, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v0, v80, 1.0
	v_fmac_f32_e32 v80, v81, v80
	v_div_scale_f32 v81, vcc_lo, v71, v54, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v80
	v_fma_f32 v83, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v80
	v_fma_f32 v0, -v0, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v0, v80, v82
	v_div_scale_f32 v0, null, v54, v54, v70
	v_div_fixup_f32 v71, v80, v54, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v81, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v71, v71, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v0, v81, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v82, v81
	v_div_scale_f32 v82, vcc_lo, v70, v54, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v83, v82, v81 :: v_dual_and_b32 v80, 15, v71
	v_fma_f32 v84, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v81
	v_fma_f32 v0, -v0, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v0, v81, v83
	v_div_scale_f32 v0, null, v54, v54, v73
	v_rcp_f32_e32 v82, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v0, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v73, v54, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v0, -v0, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v0, v82, v84
	v_div_scale_f32 v0, null, v54, v54, v69
	v_div_fixup_f32 v73, v82, v54, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v83, v0
	v_fma_f32 v84, -v0, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v69, v54, v69
	v_mul_f32_e32 v85, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v0, v85, v84
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v85, v84
	v_div_fmas_f32 v83, v0, v83, v85
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 4, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v83, v54, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v0, v0, v79
	v_lshlrev_b32_e32 v79, 10, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v84, 0x1800, v79
	v_and_b32_e32 v79, 16, v165
	v_lshlrev_b32_e32 v85, 6, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v84, 0, v84, v85
	v_add3_u32 v77, v84, v0, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v84, v0
	v_fma_f32 v85, -v0, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, vcc_lo, v37, v54, v37
	v_mul_f32_e32 v86, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v0, v86, v85
	v_fmac_f32_e32 v86, v87, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v86, v85
	v_div_fmas_f32 v84, v0, v84, v86
	v_div_scale_f32 v0, null, v54, v54, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v85, v0
	v_fma_f32 v86, -v0, v85, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v86, v85
	v_div_scale_f32 v86, vcc_lo, v36, v54, v36
	v_mul_f32_e32 v87, v86, v85
	v_div_fixup_f32 v70, v81, v54, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v0, v87, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v88, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v0, v87, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v85, v0, v85, v87
	v_div_scale_f32 v0, null, v54, v54, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v0, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v82, 15, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v87, v86
	v_div_scale_f32 v87, vcc_lo, v35, v54, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v87, v86
	v_fma_f32 v89, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v86
	v_fma_f32 v0, -v0, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v86, v0, v86, v88
	v_div_scale_f32 v0, null, v54, v54, v34
	v_rcp_f32_e32 v87, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v0, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v34, v54, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v90, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v87
	v_fma_f32 v0, -v0, v89, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v87, v0, v87, v89
	v_div_scale_f32 v0, null, v54, v54, v65
	v_rcp_f32_e32 v88, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v0, v88, 1.0
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, vcc_lo, v65, v54, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v88
	v_fma_f32 v91, -v0, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v88
	v_fma_f32 v0, -v0, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v88, v90
	v_div_scale_f32 v88, null, v54, v54, v68
	v_div_fixup_f32 v0, v0, v54, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v89, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v88, v89, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v68, v54, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v88, -v88, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v88, v89, v91
	v_div_scale_f32 v89, null, v54, v54, v67
	v_div_fixup_f32 v65, v88, v54, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v89, v90, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v67, v54, v67
	v_dual_mul_f32 v92, v91, v90 :: v_dual_and_b32 v83, 15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v54, v54, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v67, v89, v54, v67
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v66, v54, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_fixup_f32 v68, v90, v54, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v66, v65
	v_and_b32_e32 v65, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v66
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v67, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v68, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 6, v165
	ds_store_b128 v77, v[80:83]
	ds_store_b128 v77, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	v_and_or_b32 v0, 0x1b00, v0, v75
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_xad_u32 v66, v0, v1, 0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v54, v54, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[67:70], v66
	ds_load_b128 v[80:83], v66 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v32, v54, v32
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v80, 4, v67
	v_lshl_or_b32 v68, v81, 4, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v71, v65, v1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v82, 4, v69
	v_lshl_or_b32 v70, v83, 4, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v73, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v73, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v25
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v25, v54, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v75, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v75, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v75, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v26
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v26, v54, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v80, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v80, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v80, v0, v1, v71
	v_div_scale_f32 v0, null, v54, v54, v27
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v65, v1
	v_div_scale_f32 v65, vcc_lo, v27, v54, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v71, v65, v1
	v_fma_f32 v81, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v81, v1
	v_fma_f32 v0, -v0, v71, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v0, v1, v71
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v78, 0x40e00000, v76
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v1.h, v64.h
	v_mov_b16_e32 v1.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v65, v0, v1, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v65
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v71, v71, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v1, v0
	v_fma_f32 v76, -v0, v1, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v1, v76, v1
	v_div_scale_f32 v76, vcc_lo, v62, v71, v62
	v_mul_f32_e32 v78, v76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v0, v78, v76
	v_fmac_f32_e32 v78, v82, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v78, v76
	v_div_fmas_f32 v0, v0, v1, v78
	v_div_scale_f32 v1, null, v71, v71, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v71, v62
	v_rcp_f32_e32 v76, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v1, v76, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, vcc_lo, v61, v71, v61
	v_mul_f32_e32 v82, v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v1, v82, v78
	v_fmac_f32_e32 v82, v83, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v1, v82, v78
	v_div_fmas_f32 v1, v1, v76, v82
	v_div_scale_f32 v76, null, v71, v71, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v1, v71, v61
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v59, v71, v59
	v_mul_f32_e32 v83, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v76, v83, v82
	v_fmac_f32_e32 v83, v88, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v83, v82
	v_div_fmas_f32 v88, v76, v78, v83
	v_div_scale_f32 v76, null, v71, v71, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v61, v88, v71, v59
	v_rcp_f32_e32 v78, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v59, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v60, v71, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v82, v78
	v_fma_f32 v89, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v89, v78
	v_fma_f32 v76, -v76, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v76, v78, v83
	v_div_scale_f32 v76, null, v71, v71, v33
	v_div_fixup_f32 v62, v89, v71, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v78, v76
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v76, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, vcc_lo, v33, v71, v33
	v_mul_f32_e32 v83, v82, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v76, v83, v82
	v_fmac_f32_e32 v83, v90, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v76, -v76, v83, v82
	v_div_fmas_f32 v76, v76, v78, v83
	v_div_scale_f32 v78, null, v71, v71, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v83, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v31, v71, v31
	v_mul_f32_e32 v90, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v78, v90, v83
	v_fmac_f32_e32 v90, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v78, v90, v83
	v_div_fmas_f32 v78, v78, v82, v90
	v_div_scale_f32 v82, null, v71, v71, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v78, v71, v31
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v90, vcc_lo, v30, v71, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v83
	v_fma_f32 v92, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v83
	v_fma_f32 v82, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v83, v91
	v_div_scale_f32 v83, null, v71, v71, v29
	v_div_fixup_f32 v30, v82, v71, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v83
	v_fma_f32 v91, -v83, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v29, v71, v29
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v83, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v83, v92, v91
	v_div_fmas_f32 v83, v83, v90, v92
	v_div_scale_f32 v90, null, v71, v71, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v29, v83, v71, v29
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v90, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v55, v71, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v90, -v90, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v71, v71, v58
	v_div_fixup_f32 v0, v90, v71, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v92, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v58, v71, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v55
	v_and_b32_e32 v55, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v71, v71, v57
	v_div_fixup_f32 v1, v91, v71, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v1, v1, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v1, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v57, v71, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v94, v93
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_scale_f32 v93, null, v71, v71, v56
	v_div_fixup_f32 v57, v92, v71, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v94, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v93, v94, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, vcc_lo, v56, v71, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v96, v95, v94 :: v_dual_and_b32 v57, 15, v0
	v_fma_f32 v97, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v94
	v_fma_f32 v93, -v93, v96, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v93, v94, v96
	v_div_fixup_f32 v58, v93, v71, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v58, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v71, v71, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[59:62]
	ds_store_b128 v77, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v1, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v24, v71, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v56, v55, v1
	v_fma_f32 v57, -v0, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v57, v1
	v_fma_f32 v0, -v0, v56, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v56, v0, v1, v56
	v_div_scale_f32 v0, null, v71, v71, v21
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v21, v71, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v55, v1
	v_fma_f32 v58, -v0, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v57, v58, v1
	v_fma_f32 v0, -v0, v57, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v0, v1, v57
	v_div_scale_f32 v0, null, v71, v71, v22
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v22, v71, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v55, v1
	v_fma_f32 v59, -v0, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, v59, v1
	v_fma_f32 v0, -v0, v58, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v58, v0, v1, v58
	v_div_scale_f32 v0, null, v71, v71, v23
	v_rcp_f32_e32 v1, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v55, -v0, v1, 1.0
	v_fmac_f32_e32 v1, v55, v1
	v_div_scale_f32 v55, vcc_lo, v23, v71, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v59, v55, v1
	v_fma_f32 v60, -v0, v59, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v59, v60, v1
	v_fma_f32 v0, -v0, v59, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v1, v59
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v1, v74, 0x40e00000, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v0, v71, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v64.l, v1.h
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v30
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v55, 1, v64
	v_mov_b16_e32 v64.l, v2.h
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v1, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v68.l
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v59, null, v55, v55, v53
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v53, v55, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v62, v61, v60
	v_fma_f32 v72, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v62, v72, v60
	v_fma_f32 v59, -v59, v62, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v59, v60, v62
	v_div_scale_f32 v59, null, v55, v55, v52
	v_div_fixup_f32 v53, v62, v55, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v60, v59
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v52, v55, v52
	v_mul_f32_e32 v72, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v59, v72, v61
	v_fmac_f32_e32 v72, v74, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v59, -v59, v72, v61
	v_div_fmas_f32 v72, v59, v60, v72
	v_div_scale_f32 v59, null, v55, v55, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v52, v72, v55, v52
	v_rcp_f32_e32 v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v59, v60, 1.0
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v50, v55, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v74, v61, v60
	v_fma_f32 v88, -v59, v74, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v88, v60
	v_fma_f32 v59, -v59, v74, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v59, v60, v74
	v_div_scale_f32 v59, null, v55, v55, v51
	v_div_fixup_f32 v62, v74, v55, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v51, v55, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v61, v60
	v_fma_f32 v89, -v59, v88, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v89, v60
	v_fma_f32 v59, -v59, v88, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v88, v59, v60, v88
	v_div_scale_f32 v59, null, v55, v55, v20
	v_div_fixup_f32 v72, v88, v55, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v60, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v62
	v_rndne_f32_e32 v53, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v53, v53, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v59, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v60, v61, v60
	v_div_scale_f32 v61, vcc_lo, v20, v55, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v51
	v_and_b32_e32 v52, 15, v52
	v_and_b32_e32 v53, 15, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v61, v60
	v_fma_f32 v90, -v59, v89, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v60
	v_fma_f32 v59, -v59, v89, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v59, v59, v60, v89
	v_div_scale_f32 v60, null, v55, v55, v19
	v_rcp_f32_e32 v61, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v60, v61, 1.0
	v_fmac_f32_e32 v61, v89, v61
	v_div_scale_f32 v89, vcc_lo, v19, v55, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v90, v89, v61
	v_fma_f32 v91, -v60, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v61
	v_fma_f32 v60, -v60, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v60, v60, v61, v90
	v_div_scale_f32 v61, null, v55, v55, v18
	v_div_fixup_f32 v19, v60, v55, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v89, v61
	v_fma_f32 v90, -v61, v89, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v18, v55, v18
	v_mul_f32_e32 v91, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v61, v91, v90
	v_fmac_f32_e32 v91, v92, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v61, v91, v90
	v_div_fmas_f32 v61, v61, v89, v91
	v_div_scale_f32 v89, null, v55, v55, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v61, v55, v18
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v89, v90, 1.0
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v17, v55, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v92, v91, v90
	v_fma_f32 v93, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v93, v90
	v_fma_f32 v89, -v89, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v100, v89, v90, v92
	v_div_scale_f32 v89, null, v55, v55, v46
	v_div_fixup_f32 v17, v100, v55, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v91, -v89, v90, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, vcc_lo, v46, v55, v46
	v_mul_f32_e32 v92, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v89, v92, v91
	v_fmac_f32_e32 v92, v93, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v89, v92, v91
	v_div_fmas_f32 v89, v89, v90, v92
	v_div_scale_f32 v90, null, v55, v55, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v46, v89, v55, v46
	v_rcp_f32_e32 v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v90, v91, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v49, v55, v49
	v_dual_mul_f32 v93, v92, v91 :: v_dual_and_b32 v46, 15, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	v_div_scale_f32 v91, null, v55, v55, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v49, v90, v55, v49
	v_rcp_f32_e32 v92, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v91, v92, 1.0
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, vcc_lo, v48, v55, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v94, v93, v92
	v_fma_f32 v95, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v95, v92
	v_fma_f32 v91, -v91, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v91, v91, v92, v94
	v_div_scale_f32 v92, null, v55, v55, v47
	v_div_fixup_f32 v48, v91, v55, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v93, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v47, v55, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v95, v94, v93 :: v_dual_and_b32 v48, 15, v48
	v_fma_f32 v96, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v93
	v_fma_f32 v92, -v92, v95, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v92, v93, v95
	v_div_fixup_f32 v62, v92, v55, v47
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	ds_load_b128 v[88:91], v66
	ds_load_b128 v[92:95], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v49, v49
	v_and_b32_e32 v47, 15, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v49, 15, v49
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[50:53]
	ds_store_b128 v77, v[46:49] offset:512
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v46, 1, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v46, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v46, null, v55, v55, v16
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v16, v55, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v62, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v13
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v13, v55, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v63, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v14
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v14, v55, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v64, v46, v47, v49
	v_div_scale_f32 v46, null, v55, v55, v15
	v_rcp_f32_e32 v47, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v46, v47, 1.0
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, vcc_lo, v15, v55, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v50, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v50, v47
	v_fma_f32 v46, -v46, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v72, v46, v47, v49
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v46, 0xffff0000, v2
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v67.l
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v46, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v49, -v47, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, vcc_lo, v45, v46, v45
	v_mul_f32_e32 v50, v49, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v47, v50, v49
	v_fmac_f32_e32 v50, v51, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v50, v49
	v_div_fmas_f32 v47, v47, v48, v50
	v_div_scale_f32 v48, null, v46, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v45, v47, v46, v45
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v48, v49, 1.0
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, vcc_lo, v44, v46, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, v50, v49
	v_fma_f32 v52, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v51, v52, v49
	v_fma_f32 v48, -v48, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v48, v48, v49, v51
	v_div_scale_f32 v49, null, v46, v46, v42
	v_div_fixup_f32 v44, v48, v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v50, v49
	v_fma_f32 v51, -v49, v50, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v50, v51, v50
	v_div_scale_f32 v51, vcc_lo, v42, v46, v42
	v_mul_f32_e32 v52, v51, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v49, v52, v51
	v_fmac_f32_e32 v52, v53, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v49, -v49, v52, v51
	v_div_fmas_f32 v49, v49, v50, v52
	v_div_scale_f32 v50, null, v46, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v47, v49, v46, v42
	v_rcp_f32_e32 v51, v50
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v53, v52, v51 :: v_dual_and_b32 v42, 15, v42
	v_fma_f32 v74, -v50, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v74, v51
	v_fma_f32 v50, -v50, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v50, v50, v51, v53
	v_div_scale_f32 v51, null, v46, v46, v12
	v_div_fixup_f32 v48, v50, v46, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v52, v51
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v47
	v_rndne_f32_e32 v45, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_med3_f32 v45, v45, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v12, v46, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v43, 15, v43
	v_and_b32_e32 v44, 15, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v74, v53, v52 :: v_dual_and_b32 v45, 15, v45
	v_fma_f32 v96, -v51, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v96, v52
	v_fma_f32 v51, -v51, v74, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v74, v51, v52, v74
	v_div_scale_f32 v51, null, v46, v46, v11
	v_div_fixup_f32 v12, v74, v46, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v11, v46, v11
	v_mul_f32_e32 v96, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v51, v96, v53
	v_fmac_f32_e32 v96, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v96, v53
	v_div_fmas_f32 v101, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v11, v101, v46, v11
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v51, v52, 1.0
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v9, v46, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v96, v53, v52
	v_fma_f32 v97, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v102, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v8
	v_div_fixup_f32 v9, v102, v46, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v52, v51
	v_fma_f32 v53, -v51, v52, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v8, v46, v8
	v_mul_f32_e32 v96, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v51, v96, v53
	v_fmac_f32_e32 v96, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v51, v96, v53
	v_div_fmas_f32 v103, v51, v52, v96
	v_div_scale_f32 v51, null, v46, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v103, v46, v8
	v_rcp_f32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v51, v52, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v52, v53, v52
	v_div_scale_f32 v53, vcc_lo, v38, v46, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v53, v52
	v_fma_f32 v97, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v52
	v_fma_f32 v51, -v51, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v51, v51, v52, v96
	v_div_scale_f32 v52, null, v46, v46, v41
	v_div_fixup_f32 v38, v51, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v53, v52
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v53, v96, v53
	v_div_scale_f32 v96, vcc_lo, v41, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v97, v96, v53 :: v_dual_and_b32 v38, 15, v38
	v_fma_f32 v98, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v97, v98, v53
	v_fma_f32 v52, -v52, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v53, v97
	v_div_scale_f32 v53, null, v46, v46, v40
	v_div_fixup_f32 v41, v52, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v96, v53
	v_fma_f32 v97, -v53, v96, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v96, v97, v96
	v_div_scale_f32 v97, vcc_lo, v40, v46, v40
	v_mul_f32_e32 v98, v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v99, -v53, v98, v97
	v_fmac_f32_e32 v98, v99, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v53, v98, v97
	v_div_fmas_f32 v53, v53, v96, v98
	v_div_scale_f32 v96, null, v46, v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v40, v53, v46, v40
	v_rcp_f32_e32 v97, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v98, -v96, v97, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v98, v97
	v_div_scale_f32 v98, vcc_lo, v39, v46, v39
	v_dual_mul_f32 v99, v98, v97 :: v_dual_and_b32 v40, 15, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v104, -v96, v99, v98
	v_fmac_f32_e32 v99, v104, v97
	v_div_fixup_f32 v25, v75, v54, v25
	v_div_fixup_f32 v37, v84, v54, v37
	v_div_fixup_f32 v26, v80, v54, v26
	v_div_fixup_f32 v36, v85, v54, v36
	v_fma_f32 v96, -v96, v99, v98
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v73, v54, v32
	v_div_fixup_f32 v27, v81, v54, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v96, v96, v97, v99
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v47, v96, v46, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[47:50], v66
	ds_load_b128 v[96:99], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v41, v41
	v_and_b32_e32 v39, 15, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v41, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[42:45]
	ds_store_b128 v77, v[38:41] offset:512
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v87, v54, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v86, v54, v35
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v36
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v39
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v39, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v26
	v_rndne_f32_e32 v36, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v36
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v35
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v40, 15, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v27
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v36
	v_and_b32_e32 v38, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[42:45], v66
	ds_load_b128 v[51:54], v66 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v76, v71, v33
	v_div_fixup_f32 v33, v56, v71, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v29, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v41, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[34:37]
	ds_store_b128 v77, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v66
	ds_load_b128 v[38:41], v66 offset:1024
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v63, v55, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 15, v24
	v_and_b32_e32 v29, 15, v29
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v39, 4, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v57, v71, v21
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v32, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v59, v55, v20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v40, 4, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v39
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v39, v64, v55, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v40, v58, v71, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v20, v62, v55, v16
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v40
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v40, v72, v55, v15
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v34, v41, 4, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_and_b32_e32 v13, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_and_b32_e32 v21, 15, v21
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v22
	v_and_b32_e32 v14, 15, v14
	v_and_b32_e32 v30, 15, v30
	v_and_b32_e32 v31, 15, v31
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[21:24]
	ds_store_b128 v77, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v17
	v_rndne_f32_e32 v17, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[21:24], v66
	ds_load_b128 v[29:32], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v92, 4, v88
	v_lshl_or_b32 v36, v93, 4, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v18, v17
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v94, 4, v90
	v_lshl_or_b32 v38, v95, 4, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v16, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v18
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v32, 4, v24
	v_lshl_or_b32 v29, v96, 4, v47
	v_lshl_or_b32 v30, v97, 4, v48
	v_lshl_or_b32 v31, v98, 4, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v99, 4, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v20, 15, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v46, v46, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[13:16]
	ds_store_b128 v77, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[13:16], v66
	ds_load_b128 v[17:20], v66 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v0, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, vcc_lo, v10, v46, v10
	v_mul_f32_e32 v40, v39, v33
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v17, 4, v13
	v_lshl_or_b32 v17, v51, 4, v42
	v_lshl_or_b32 v14, v18, 4, v14
	v_lshl_or_b32 v18, v52, 4, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v0, v40, v39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v15, v19, 4, v15
	v_lshl_or_b32 v19, v53, 4, v44
	v_lshl_or_b32 v16, v20, 4, v16
	v_lshl_or_b32 v20, v54, 4, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v40, v39
	v_div_fmas_f32 v0, v0, v33, v40
	v_div_scale_f32 v33, null, v46, v46, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v0, v46, v10
	v_rcp_f32_e32 v39, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v40, -v33, v39, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v5, v46, v5
	v_mul_f32_e32 v41, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v33, v41, v40
	v_fmac_f32_e32 v41, v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v33, v41, v40
	v_div_fmas_f32 v33, v33, v39, v41
	v_div_scale_f32 v39, null, v46, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v33, v46, v5
	v_rcp_f32_e32 v40, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v39, v40, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, vcc_lo, v6, v46, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v42, v41, v40 :: v_dual_and_b32 v5, 15, v5
	v_fma_f32 v43, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v39, -v39, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v39, v39, v40, v42
	v_div_scale_f32 v40, null, v46, v46, v7
	v_div_fixup_f32 v33, v39, v46, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v40, v41, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v7, v46, v7
	v_dual_mul_f32 v43, v42, v41 :: v_dual_and_b32 v6, 15, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v40, v43, v42
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v166
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v41, v43
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v41, 4, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v40, v46, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v9
	v_rndne_f32_e32 v9, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v10, v9
	v_and_b32_e32 v9, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 15, v10
	v_med3_f32 v0, v0, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v11, 15, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v12, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v77, v[5:8]
	ds_store_b128 v77, v[9:12] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v66
	ds_load_b128 v[9:12], v66 offset:1024
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v70.l
	v_and_b16 v0.h, 0xff, v69.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v33, v9, 4, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s0, s22, v41
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v10, 4, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s23, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v11, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, v41, v4
	v_lshl_or_b32 v4, s28, 7, v42
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[5:6]
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	v_or_b16 v5.h, v0.h, v0.l
	v_or_b16 v5.l, v2.l, v1.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v12, 4, v8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v27.l
	v_lshlrev_b16 v1.l, 8, v26.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v11, s6, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_and_b16 v2.l, 0xff, v25.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v9, 32, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v7, vcc_lo
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 48, v41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	buffer_store_b64 v[5:6], v0, s[12:15], 0 offen
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 16, v41
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v7, s0, s22, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v8, null, s23, 0, s0
	v_add_co_u32 v5, s4, s22, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, 0, s4
	v_add_co_u32 v9, s0, s22, v9
	v_add_co_ci_u32_e64 v10, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[24:25], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 16, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[24:25], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[7:8]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[24:25], v[9:10]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[9:10]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[8:9], null, v5, s6, v[4:5]
	v_add_nc_u32_e32 v7, 32, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v1.l, 8, v22.l
	v_and_b16 v2.l, 0xff, v21.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v7, s6, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s6, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_lshlrev_b16 v4.l, 8, v16.l
	v_and_b16 v4.h, 0xff, v15.l
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_lshlrev_b16 v5.l, 8, v14.l
	v_and_b16 v5.h, 0xff, v13.l
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	v_or_b16 v7.h, v4.h, v4.l
	v_lshlrev_b16 v4.l, 8, v12.l
	v_and_b16 v4.h, 0xff, v40.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v0.l, 8, v20.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v39.l
	v_and_b16 v5.h, 0xff, v33.l
	v_cndmask_b32_e64 v11, 0x80000000, v9, s1
	v_or_b16 v9.h, v4.h, v4.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v79
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v8.h, v0.h, v0.l
	v_or_b16 v8.l, v2.l, v1.l
	v_or_b16 v9.l, v5.h, v5.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v41
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s20, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v11, s[12:15], 0 offen
	buffer_store_b64 v[8:9], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v65.h
	v_mov_b16_e32 v1.l, v28.h
	v_add3_u32 v4, v4, v5, v42
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s20, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v165
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s28, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 772
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
		.amdhsa_next_free_sgpr 30
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 772
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34400
; TotalNumSgprs: 32
; NumVgprs: 256
; ScratchSize: 772
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 32
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
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 772
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 280
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
