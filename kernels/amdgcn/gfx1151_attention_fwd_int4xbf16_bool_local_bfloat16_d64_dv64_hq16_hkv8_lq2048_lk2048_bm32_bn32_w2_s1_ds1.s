	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s22, s[0:1], 0x84
	s_load_b32 s65, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v56, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s2
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x800, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 16, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s65, v32, v[56:57]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s65, v56
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s6, s21
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s6, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s22
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s65, s8, v[57:58]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s22
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s7, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v69
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	v_and_or_b32 v5, v3, 30, v33
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s66, s10, 0x7fffffe0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[14:17], v1, s[12:15], 0 offen
	v_lshlrev_b32_e32 v70, 2, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s67, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s67, s67, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v72, 4, v70
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v13, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s66, s67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s6, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v18
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v5, v70, v14
	ds_bpermute_b32 v6, v70, v15
	ds_bpermute_b32 v7, v70, v16
	ds_bpermute_b32 v9, v70, v17
	ds_bpermute_b32 v8, v72, v14
	ds_bpermute_b32 v10, v72, v15
	ds_bpermute_b32 v11, v72, v16
	ds_bpermute_b32 v12, v72, v17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v14, 0x1054, v14, s7
	v_cndmask_b32_e64 v15, 0x3276, v15, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v14, 8, v14
	v_lshl_or_b32 v15, v15, 8, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v14, 0x540054, v14
	v_and_b32_e32 v15, 0x760076, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v14, 4, v14
	v_lshl_or_b32 v15, v15, 4, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 0x5040504, v14
	v_and_b32_e32 v68, 0x7060706, v15
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s64, s[0:1], 0x64
	v_or_b32_e32 v71, s8, v13
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_38
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v13, 1, v71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v60, v5, v8, s7
	v_cndmask_b32_e64 v64, v8, v5, s7
	v_mov_b32_e32 v8, 0x6420
	s_mov_b32 s55, 0x31027000
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[50:51], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v37, 0x7531 :: v_dual_add_nc_u32 v4, s22, v4
	s_lshr_b32 s0, s0, 28
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v36, 7, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v59, v9, v12, s7
	v_cndmask_b32_e64 v58, v7, v11, s7
	v_cndmask_b32_e64 v61, v6, v10, s7
	v_cndmask_b32_e64 v63, v12, v9, s7
	v_cndmask_b32_e64 v62, v11, v7, s7
	v_cndmask_b32_e64 v65, v10, v6, s7
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v5, 56, v0
	buffer_load_u16 v34, v13, s[52:55], 0 offen
	v_dual_mov_b32 v10, 0x7632 :: v_dual_and_b32 v13, 1, v0
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v6, 0x3f0, v2
	v_dual_mov_b32 v9, 0x5410 :: v_dual_and_b32 v2, 48, v2
	v_mov_b32_e32 v29, v24
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v11, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_and_b32 v7, 24, v0
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v38, 2, v32
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v35, 3, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v39, 1, v5
	v_dual_cndmask_b32 v40, 0x7531, v8 :: v_dual_lshlrev_b32 v41, 6, v13
	v_cndmask_b32_e64 v42, 0x1054, v9, s7
	v_cndmask_b32_e64 v43, 0x3276, v10, s7
	v_xor_b32_e32 v44, v2, v5
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v45, 48, v11
	v_dual_mov_b32 v16, v24 :: v_dual_cndmask_b32 v37, 0x6420, v37
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s13, s1, 0x10007
	v_dual_mov_b32 v88, 0xff800000 :: v_dual_and_b32 v3, 24, v3
	s_add_i32 s13, s1, s13
	v_xor_b32_e32 v91, v6, v7
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v46, 0x210, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 4
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s64, v35
	v_lshl_or_b32 v40, v40, 8, v40
	v_and_or_b32 v93, v38, 60, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[66:67], null, s64, v39, v[35:36]
	v_lshl_or_b32 v35, v42, 8, v42
	v_lshl_or_b32 v38, v43, 8, v43
	v_lshl_or_b32 v94, v36, 9, v44
	v_lshl_or_b32 v36, v36, 6, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s13, s13, 0x80000
	v_lshl_or_b32 v37, v37, 8, v37
	s_sext_i32_i16 s13, s13
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v32, s19, v32
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s13, s13, 10
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 1, v56
	v_or_b32_e32 v74, 2, v56
	v_or_b32_e32 v75, 3, v56
	v_or_b32_e32 v76, 4, v56
	v_or_b32_e32 v77, 5, v56
	v_or_b32_e32 v78, 6, v56
	v_or_b32_e32 v79, 7, v56
	v_or_b32_e32 v80, 8, v56
	v_or_b32_e32 v81, 9, v56
	v_or_b32_e32 v82, 10, v56
	v_or_b32_e32 v83, 11, v56
	v_or_b32_e32 v84, 12, v56
	v_or_b32_e32 v85, 13, v56
	v_or_b32_e32 v86, 14, v56
	v_or_b32_e32 v87, 15, v56
	v_lshl_or_b32 v92, v1, 5, v3
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v39, 0x750031, v40
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v38, 0x760076, v38
	v_dual_mov_b32 v20, v24 :: v_dual_and_b32 v35, 0x540054, v35
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v37, 0x750031, v37
	v_xor_b32_e32 v47, 8, v91
	v_xor_b32_e32 v95, v36, v46
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s12, 14
	s_and_b32 s71, s13, 0xfffff800
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v96, 0, v47
	s_add_i32 s71, s71, s3
	v_mov_b32_e32 v7, v24
	v_xor_b32_e32 v48, 8, v92
	v_xor_b32_e32 v49, 16, v92
	v_xor_b32_e32 v50, 24, v92
	v_xor_b32_e32 v40, 0x90, v94
	v_xor_b32_e32 v41, 0x120, v94
	v_xor_b32_e32 v42, 0x1b0, v94
	v_lshl_or_b32 v36, v39, 4, v39
	v_lshl_or_b32 v35, v35, 4, v35
	v_lshl_or_b32 v38, v38, 4, v38
	v_xor_b32_e32 v39, 16, v95
	v_xor_b32_e32 v43, 32, v95
	v_xor_b32_e32 v44, 48, v95
	v_xor_b32_e32 v45, 0x420, v95
	v_xor_b32_e32 v46, 0x430, v95
	v_xor_b32_e32 v47, 0x410, v95
	v_or_b32_e32 v105, s71, v33
	v_lshl_or_b32 v33, v37, 4, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v113, v32, v73
	v_dual_mov_b32 v147, 0xff800000 :: v_dual_add_nc_u32 v114, v32, v74
	v_add_nc_u32_e32 v115, v32, v75
	v_add_nc_u32_e32 v116, v32, v76
	v_add_nc_u32_e32 v117, v32, v77
	v_add_nc_u32_e32 v118, v32, v78
	v_add_nc_u32_e32 v119, v32, v79
	v_add_nc_u32_e32 v120, v32, v80
	v_add_nc_u32_e32 v121, v32, v81
	v_add_nc_u32_e32 v122, v32, v82
	v_add_nc_u32_e32 v123, v32, v83
	v_add_nc_u32_e32 v124, v32, v84
	v_add_nc_u32_e32 v125, v32, v85
	v_add_nc_u32_e32 v126, v32, v86
	v_add_nc_u32_e32 v127, v32, v87
	v_add_nc_u32_e32 v128, v32, v56
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s13, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s12, s17, s12
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v89, s20, v4
	v_dual_mov_b32 v31, v24 :: v_dual_add_nc_u32 v90, s21, v4
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v97, 0, v48
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v98, 0, v49
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v99, 0, v50
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v102, 0, v40
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v104, 0, v42
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v103, 0, v41
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v106, 0x7050301, v36
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v67, 0x5040504, v35
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v68, 0x7060706, v38
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v107, 0, v39
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v108, 0, v43
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v109, 0, v44
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v110, 0, v45
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v111, 0, v46
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v112, 0, v47
	v_dual_mov_b32 v101, v24 :: v_dual_and_b32 v144, 0x7050301, v33
	v_xor_b32_e32 v100, 64, v93
	v_or_b32_e32 v129, 2, v105
	v_or_b32_e32 v130, 4, v105
	v_or_b32_e32 v131, 6, v105
	v_or_b32_e32 v132, 8, v105
	v_or_b32_e32 v133, 10, v105
	v_or_b32_e32 v134, 12, v105
	v_or_b32_e32 v135, 14, v105
	v_or_b32_e32 v136, 16, v105
	v_or_b32_e32 v137, 18, v105
	v_or_b32_e32 v138, 20, v105
	v_or_b32_e32 v139, 22, v105
	v_or_b32_e32 v140, 24, v105
	v_or_b32_e32 v141, 26, v105
	v_or_b32_e32 v142, 28, v105
	v_or_b32_e32 v143, 30, v105
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s19, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s72, s1, s12
	s_lshl_b32 s68, s64, 1
	s_mul_i32 s69, s64, 3
	s_mov_b32 s70, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s61, s11, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s60, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s57, s15
	s_add_i32 s72, s72, s6
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v32, 16, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v6, v24 :: v_dual_mul_f32 v145, s13, v32
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	v_and_b16 v53.l, 0xff, v53.l
	v_and_b16 v53.h, 0xff, v53.h
	v_and_b16 v52.l, 0xff, v52.l
	v_and_b16 v52.h, 0xff, v52.h
	v_and_b16 v49.h, 0xff, v49.h
	v_and_b16 v49.l, 0xff, v49.l
	v_and_b16 v48.l, 0xff, v48.l
	v_and_b16 v48.h, 0xff, v48.h
	v_and_b16 v148.h, 0xff, v50.l
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v50.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v51.l, 0xff, v51.l
	v_and_b16 v149.h, 0xff, v50.h
	v_cmp_ne_u16_e64 s1, 0, v48.h
	v_cmp_ne_u16_e64 s3, 0, v48.l
	v_cmp_ne_u16_e64 s6, 0, v49.l
	v_cmp_ne_u16_e64 s10, 0, v49.h
	v_cmp_ne_u16_e64 s13, 0, v52.h
	v_cmp_ne_u16_e64 s14, 0, v52.l
	v_cmp_ne_u16_e64 s15, 0, v53.h
	v_cmp_ne_u16_e64 s16, 0, v53.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v159.h, v160.l
	v_mov_b16_e64 v160.l, v50.l
	v_mov_b16_e64 v160.h, v161.l
	v_mov_b16_e64 v161.h, v162.l
	v_mov_b16_e64 v162.l, v50.l
	v_mov_b16_e64 v162.h, v163.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_mul_f32_e32 v39, v145, v39
	v_mul_f32_e32 v168, v145, v32
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v32.l, 0xff, v54.l
	v_and_b16 v55.h, 0xff, v55.h
	v_and_b16 v54.h, 0xff, v54.h
	v_and_b16 v55.l, 0xff, v55.l
	v_and_b16 v51.h, 0xff, v51.h
	v_cmp_ne_u16_e64 s11, 0, v149.h
	v_cmp_ne_u16_e64 s17, 0, v148.h
	v_cmp_ne_u16_e64 s20, 0, v51.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s1, s8, s1
	s_and_b32 s8, s9, s3
	s_and_b32 s9, s12, s6
	s_and_b32 s12, s18, s10
	s_and_b32 s10, s30, s13
	s_and_b32 s13, s31, s14
	s_and_b32 s14, s33, s15
	s_and_b32 s15, s34, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	v_mul_f32_e32 v170, v145, v34
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v32.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v32, 0, 1, s12
	v_cndmask_b32_e64 v49, 0, 1, s14
	v_cndmask_b32_e64 v34, 0, 1, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v51.h
	v_cmp_ne_u16_e64 s22, 0, v55.l
	v_cmp_ne_u16_e64 s23, 0, v54.h
	v_cmp_ne_u16_e64 s24, 0, v55.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s16, s21, s11
	s_and_b32 s18, s26, s17
	s_and_b32 s21, s28, s20
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v157.h, v158.l
	v_mov_b16_e64 v158.l, v50.l
	v_mov_b16_e64 v158.h, v159.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v169, v145, v33
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v33, 0, 1, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v163, v35
	v_cvt_f32_i32_e32 v166, v36
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v36, 0, 1, s1
	v_cndmask_b32_e64 v35, 0, 1, s9
	v_cndmask_b32_e64 v48, 0, 1, s13
	v_cndmask_b32_e64 v52, 0, 1, s18
	v_cndmask_b32_e64 v54, 0, 1, s21
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v49.l
	s_and_b32 s19, s27, s19
	s_and_b32 s20, s35, s22
	s_and_b32 s22, s36, s23
	s_and_b32 s23, s37, s24
	s_and_b32 s24, s38, s25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v50.h, v148.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v167, v37
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s10
	v_cndmask_b32_e64 v51, 0, 1, s16
	v_cndmask_b32_e64 v53, 0, 1, s19
	v_cndmask_b32_e64 v148, 0, 1, s22
	v_cndmask_b32_e64 v171, 0, 1, s24
	v_lshlrev_b16 v32.h, 8, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v36.l, v48.l
	v_or_b16 v48.h, v35.l, v32.l
	v_mov_b16_e32 v32.l, v54.l
	v_or_b16 v49.h, v34.l, v33.h
	v_mov_b16_e32 v34.l, v52.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v164.h, v149.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v55, 0, 1, s20
	v_cndmask_b32_e64 v149, 0, 1, s23
	v_or_b16 v48.l, v33.l, v32.h
	v_lshlrev_b16 v32.h, 8, v36.l
	v_mov_b16_e32 v33.l, v37.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e64 v35.l, v171.l
	v_mov_b16_e32 v36.l, v53.l
	v_mov_b16_e64 v37.l, v148.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v51.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e64 v35.l, v149.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v55.l
	v_or_b16 v49.l, v33.l, v32.h
	v_or_b16 v32.h, v36.l, v32.l
	v_or_b16 v32.l, v34.l, v33.h
	v_or_b16 v33.h, v35.l, v34.h
	v_or_b16 v33.l, v37.l, v35.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v156.h, v157.l
	v_mov_b16_e64 v157.l, v50.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v36, v32, v48, v106
	v_perm_b32 v32, v32, v48, v144
	v_perm_b32 v37, v33, v49, v106
	v_perm_b32 v33, v33, v49, v144
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v36, v70, v36
	ds_bpermute_b32 v32, v72, v32
	ds_bpermute_b32 v37, v70, v37
	ds_bpermute_b32 v33, v72, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v152.h, v153.l
	v_mov_b16_e64 v153.l, v50.l
	v_mov_b16_e64 v153.h, v154.l
	v_mov_b16_e64 v155.h, v156.l
	v_mov_b16_e64 v156.l, v50.l
	v_mov_b16_e64 v159.l, v50.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v150.h, v151.l
	v_mov_b16_e64 v151.l, v50.l
	v_mov_b16_e64 v151.h, v152.l
	v_mov_b16_e64 v154.l, v50.l
	v_mov_b16_e64 v154.h, v155.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v152.l, v50.l
	v_mov_b16_e64 v155.l, v50.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v53, v32, v36, s7
	v_cndmask_b32_e64 v36, v36, v32, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v145, v163
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v54, v33, v37, s7
	v_cndmask_b32_e64 v37, v37, v33, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v38, v145, v38 :: v_dual_and_b32 v33, 0x100, v36
	v_dual_mul_f32 v35, v145, v166 :: v_dual_mul_f32 v52, v170, v157
	v_dual_mul_f32 v46, v145, v46 :: v_dual_and_b32 v55, 1, v53
	v_dual_mul_f32 v34, v34, v158 :: v_dual_mul_f32 v51, v169, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v35, v35, v159 :: v_dual_and_b32 v148, 1, v54
	v_dual_mul_f32 v47, v145, v47 :: v_dual_mul_f32 v46, v46, v153
	v_mul_f32_e32 v44, v145, v44
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 0, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v145, v167 :: v_dual_and_b32 v33, 1, v37
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v149, 0x100, v54
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v47, v154
	v_dual_mul_f32 v45, v145, v45 :: v_dual_mul_f32 v44, v44, v151
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s25, 1, v148
	v_cmp_eq_u32_e64 s3, 1, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_dual_mul_f32 v45, v45, v152 :: v_dual_and_b32 v32, 0x100, v53
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s26, 0, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v44, s25
	v_cndmask_b32_e64 v152, 0xff800000, v35, s3
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.l, v50.l
	v_mov_b16_e64 v165.h, v150.l
	v_mov_b16_e64 v150.l, v50.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_dual_mul_f32 v48, v48, v160 :: v_dual_mul_f32 v39, v39, v162
	v_dual_mul_f32 v42, v145, v42 :: v_dual_mul_f32 v49, v168, v155
	v_mul_f32_e32 v43, v145, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, v45, 0xff800000, s26
	v_cndmask_b32_e64 v44, v152, v149, s7
	v_cndmask_b32_e64 v45, v149, v152, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_mul_f32_e32 v42, v42, v165
	v_dual_mul_f32 v40, v145, v40 :: v_dual_mul_f32 v43, v43, v150
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, v51, 0xff800000, s6
	ds_bpermute_b32 v51, v93, v44
	ds_bpermute_b32 v157, v100, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v164.l, v50.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v41, v145, v41 :: v_dual_mul_f32 v40, v40, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.l, v50.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 0, v32
	v_cmp_eq_u32_e64 s28, 1, v55
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v41, v164
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v32, 1, v36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v38, v161
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v88, v88, v88
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v40, s28
	v_cndmask_b32_e64 v55, v41, 0xff800000, s27
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v41, 0x100, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v146
	v_cmp_neq_f32_e64 s39, 0xff800000, v147
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s66, s66, 32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, v55, v150, s7
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s11, 0, v41
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s66, s67
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v173, v157, v51, vcc_lo
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s17, 1, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, v150, v55, s7
	v_cndmask_b32_e64 v154, v48, 0xff800000, s11
	ds_bpermute_b32 v40, v100, v40
	v_cndmask_b32_e32 v157, v51, v157, vcc_lo
	v_cndmask_b32_e64 v148, 0xff800000, v49, s17
	ds_bpermute_b32 v49, v93, v32
	v_mad_u64_u32 v[32:33], null, s29, s64, v[66:67]
	v_cndmask_b32_e64 v33, v154, v153, s7
	v_cndmask_b32_e64 v48, v153, v154, s7
	v_cndmask_b32_e64 v35, v148, v151, s7
	v_cndmask_b32_e64 v41, v151, v148, s7
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v158, v93, v33
	ds_bpermute_b32 v159, v100, v48
	ds_bpermute_b32 v155, v93, v35
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v35, 0x10000, v37
	v_and_b32_e32 v37, 0x1000000, v37
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v156, v100, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v33, 1, v32
	v_add_lshl_u32 v41, v32, s68, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v37
	v_and_b32_e32 v37, 0x10000, v54
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e32 v160, v40, v49, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, v39, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v37
	v_and_b32_e32 v37, 0x10000, v53
	v_and_b32_e32 v39, 0x1000000, v54
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e32 v174, v159, v158, vcc_lo
	v_cndmask_b32_e32 v158, v158, v159, vcc_lo
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s29, 0, v35
	v_cmp_eq_u32_e64 s36, 0, v37
	v_and_b32_e32 v37, 0x1000000, v53
	v_cmp_eq_u32_e64 s35, 0, v39
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v159, v155, v155
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, v38, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v38, 0x10000, v36
	v_and_b32_e32 v36, 0x1000000, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, v42, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, v47, 0xff800000, s35
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v38
	v_cmp_eq_u32_e64 s34, 0, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, v46, 0xff800000, s33
	v_cndmask_b32_e64 v166, v43, 0xff800000, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v32, s64, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, v52, 0xff800000, s31
	v_cndmask_b32_e64 v165, v34, 0xff800000, s34
	v_cndmask_b32_e64 v34, v162, v36, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v32, v32, s69, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, v163, v164, s7
	v_cndmask_b32_e64 v37, v54, v53, s7
	v_cndmask_b32_e64 v42, v53, v54, s7
	ds_bpermute_b32 v169, v93, v34
	v_cndmask_b32_e64 v34, v165, v166, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v167, v93, v37
	ds_bpermute_b32 v168, v100, v42
	v_cndmask_b32_e32 v161, v49, v40, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v41, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v164, v163, s7
	v_cndmask_b32_e64 v39, v36, v162, s7
	ds_bpermute_b32 v49, v93, v38
	v_cndmask_b32_e64 v37, v166, v165, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v38, 0x80000000, v32, s0
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v52, v100, v41
	ds_bpermute_b32 v171, v93, v34
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[41:44], v33, s[60:63], 0 offen
	buffer_load_b128 v[32:35], v35, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v170, v100, v39
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[45:48], v40, s[60:63], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v172, v100, v37
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[37:40], v38, s[60:63], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(8)
	v_max_f32_e32 v51, v156, v156
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v176, v168, v167 :: v_dual_cndmask_b32 v167, v167, v168
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v168, v157, v174, v158
	v_max_f32_e32 v51, v159, v51
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v175, v52, v49, vcc_lo
	v_cndmask_b32_e32 v177, v49, v52, vcc_lo
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v161, v176, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v49, v169, v170, v175
	v_max3_f32 v159, v171, v172, v173
	v_max3_f32 v51, v51, v160, v52
	v_max3_f32 v52, v150, v54, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v49, v168, v49, v177
	v_max3_f32 v168, v166, v149, v153
	v_max3_f32 v49, v51, v159, v49
	v_max3_f32 v51, v152, v154, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v159, v151, v55 :: v_dual_mov_b32 v178, v49
	v_max3_f32 v51, v52, v51, v163
	v_max3_f32 v52, v36, v164, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v159, v159, v53, v168
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v178, v178 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v159, v52, v51
	v_max_f32_e32 v52, v178, v178
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v178, v156, v155, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v159, v51, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v49, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v51, v146, v51, v159
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v155, v155, v156, vcc_lo
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v88, v88, v52 :: v_dual_max_f32 v49, v147, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v159, v146, v51 :: v_dual_sub_f32 v160, v160, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v49, v49, v52 :: v_dual_cndmask_b32 v146, v172, v171
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v161, v161, v88 :: v_dual_sub_f32 v54, v54, v51
	v_dual_sub_f32 v167, v167, v88 :: v_dual_sub_f32 v152, v152, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v168, v147, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v147, v171, v172 :: v_dual_sub_f32 v148, v148, v51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v146, v88
	v_sub_f32_e32 v164, v164, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v156, v168
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v168, v170, v169 :: v_dual_cndmask_b32 v169, v169, v170
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v155, v155, v88 :: v_dual_sub_f32 v150, v150, v51
	v_sub_f32_e32 v170, v176, v88
	v_dual_sub_f32 v147, v147, v88 :: v_dual_sub_f32 v154, v154, v51
	v_dual_sub_f32 v172, v174, v88 :: v_dual_sub_f32 v151, v151, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v52, 0, v156, s39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v178, v88
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v161, v161
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v151, v151
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v171, v173, v88 :: v_dual_sub_f32 v162, v162, v51
	v_dual_sub_f32 v158, v158, v88 :: v_dual_sub_f32 v55, v55, v51
	v_dual_sub_f32 v168, v168, v88 :: v_dual_sub_f32 v53, v53, v51
	v_sub_f32_e32 v166, v166, v51
	v_dual_sub_f32 v174, v177, v88 :: v_dual_sub_f32 v163, v163, v51
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s1
	v_cndmask_b32_e64 v155, 0, v155, s8
	v_cndmask_b32_e64 v160, 0, v160, s9
	v_cndmask_b32_e64 v161, 0, v161, s12
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v157, v88
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v170, s16
	v_cndmask_b32_e64 v167, 0, v167, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v169, v88
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s19
	v_cndmask_b32_e64 v147, 0, v147, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v175, v88
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v159, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v158, v158
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v174, v174
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v155, v156, v155
	v_add_f32_e32 v156, v160, v161
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v160, v170, v167
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v169, v169
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v146, v147
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v51
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v159, 0, v159, s38
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v146, v160, v146
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v50.l
	v_mov_b16_e64 v160.l, v151.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v171, s10
	v_cndmask_b32_e64 v157, 0, v157, s13
	v_cndmask_b32_e64 v172, 0, v172, s14
	v_cndmask_b32_e64 v158, 0, v158, s15
	v_cndmask_b32_e64 v168, 0, v168, s20
	v_cndmask_b32_e64 v169, 0, v169, s22
	v_cndmask_b32_e64 v173, 0, v173, s23
	v_cndmask_b32_e64 v174, 0, v174, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v160, 1, v160
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v155, v155, v156 :: v_dual_mul_f32 v28, v28, v159
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v51
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v147, v171, v157 :: v_dual_mul_f32 v24, v24, v159
	v_dual_add_f32 v161, v173, v174 :: v_dual_mul_f32 v26, v26, v159
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_f32_e32 v146, v155, v146
	v_add_f32_e32 v157, v172, v158
	v_dual_add_f32 v158, v168, v169 :: v_dual_sub_f32 v165, v165, v51
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v55, v55, 0, s27
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v147, v147, v157 :: v_dual_mul_f32 v30, v30, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v156, v158, v161
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v50.l
	v_mov_b16_e64 v158.l, v55.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v159
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v147, v147, v156 :: v_dual_mul_f32 v16, v16, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v153, v153
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v210, v146, v147
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, v166, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v55, v158, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_mov_b16_e32 v55.h, v50.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v55.l, v146.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, v53, 0, s36
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v159
	v_mul_f32_e32 v31, v31, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v159
	v_mul_f32_e32 v19, v19, v159
	v_mul_f32_e32 v20, v20, v159
	v_mul_f32_e32 v21, v21, v159
	v_mul_f32_e32 v22, v22, v159
	v_mul_f32_e32 v23, v23, v159
	v_mul_f32_e32 v8, v8, v159
	v_mul_f32_e32 v9, v9, v159
	v_mul_f32_e32 v10, v10, v159
	v_mul_f32_e32 v11, v11, v159
	v_mul_f32_e32 v12, v12, v159
	v_mul_f32_e32 v13, v13, v159
	v_mul_f32_e32 v14, v14, v159
	v_mul_f32_e32 v15, v15, v159
	v_mul_f32_e32 v0, v0, v159
	v_mul_f32_e32 v1, v1, v159
	v_mul_f32_e32 v2, v2, v159
	v_mul_f32_e32 v3, v3, v159
	v_mul_f32_e32 v4, v4, v159
	v_mul_f32_e32 v5, v5, v159
	v_mul_f32_e32 v6, v6, v159
	v_mul_f32_e32 v7, v7, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v151, v151
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, v153, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v55, v146, v55, 0x7fff
	v_cmp_o_f32_e64 s1, v146, v146
	v_mov_b16_e64 v146.l, v149.h
	v_mov_b16_e64 v146.h, v50.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v151, v160, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v164, v164
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v53.h
	v_mov_b16_e64 v151.h, v50.l
	v_cndmask_b16 v158.l, 0x7fff, v159.h, s8
	v_mov_b16_e64 v159.l, v153.h
	v_mov_b16_e64 v159.h, v50.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v151
	v_cmp_o_f32_e64 s8, v53, v53
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, v36, 0, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v159
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, v164, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v151, v53, v151, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s1
	v_and_b32_e32 v53, 1, v146
	v_add3_u32 v146, v153, v159, 0x7fff
	v_cmp_o_f32_e64 s1, v153, v153
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.l, 0x7fff, v151.h, s8
	v_mov_b16_e64 v151.l, v36.h
	v_mov_b16_e64 v151.h, v50.l
	v_cndmask_b16 v153.h, 0x7fff, v146.h, s1
	v_mov_b16_e64 v146.l, v147.h
	v_mov_b16_e64 v146.h, v50.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v157, v165
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v151, 1, v151
	v_mov_b16_e64 v159.h, v50.l
	v_and_b32_e32 v146, 1, v146
	v_mov_b16_e64 v159.l, v148.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v152, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v149, v53, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, v150, 0, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v149, v149
	v_add3_u32 v149, v36, v151, 0x7fff
	v_add3_u32 v146, v147, v146, 0x7fff
	v_cmp_o_f32_e64 s6, v147, v147
	v_cmp_o_f32_e64 s8, v36, v36
	v_and_b32_e32 v36, 1, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v162
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, v157, 0, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v150.h
	v_mov_b16_e64 v151.h, v50.l
	v_cndmask_b16 v202.h, 0x7fff, v146.h, s6
	v_add3_u32 v36, v148, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v148, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, v54, 0, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v151
	v_mov_b16_e64 v146.l, v157.h
	v_mov_b16_e64 v146.h, v50.l
	v_cndmask_b16 v203.l, 0x7fff, v36.h, s6
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v152, s3
	v_cndmask_b32_e64 v155, v155, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v153.l, 0x7fff, v53.h, s1
	v_add3_u32 v53, v150, v147, 0x7fff
	v_cmp_o_f32_e64 s1, v150, v150
	v_mov_b16_e64 v147.l, v54.h
	v_mov_b16_e64 v147.h, v50.l
	v_and_b32_e32 v146, 1, v146
	v_mov_b16_e64 v148.l, v36.h
	v_mov_b16_e64 v148.h, v50.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	v_exp_f32_e32 v156, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v203.h, 0x7fff, v53.h, s1
	v_and_b32_e32 v53, 1, v147
	v_add3_u32 v146, v157, v146, 0x7fff
	v_cmp_o_f32_e64 s1, v157, v157
	v_and_b32_e32 v148, 1, v148
	v_mov_b16_e64 v150.l, v155.h
	v_mov_b16_e64 v150.h, v50.l
	v_add3_u32 v53, v54, v53, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v146.h, s1
	v_cmp_o_f32_e64 s1, v54, v54
	v_add3_u32 v54, v36, v148, 0x7fff
	v_and_b32_e32 v148, 1, v150
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, v156, 0, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v202.l, 0x7fff, v149.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, v154, 0, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.h, v50.l
	v_mov_b16_e64 v149.h, v50.l
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v155, v148, 0x7fff
	v_cmp_o_f32_e64 s9, v155, v155
	v_cndmask_b16 v50.l, 0x7fff, v53.h, s1
	v_mov_b16_e64 v146.l, v147.h
	v_mov_b16_e64 v149.l, v156.h
	v_cndmask_b16 v207.l, 0x7fff, v54.h, s6
	v_cndmask_b16 v209.l, 0x7fff, v36.h, s9
	v_cmp_o_f32_e64 s3, v147, v147
	v_and_b32_e32 v146, 1, v146
	v_and_b32_e32 v149, 1, v149
	v_cmp_o_f32_e64 s8, v156, v156
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v211, v210
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v151, v153, s70, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v146, v147, v146, 0x7fff
	v_add3_u32 v147, v156, v149, 0x7fff
	v_permlanex16_b32 v149, v55, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v204, v202, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v211, v211 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v207.h, 0x7fff, v146.h, s3
	v_cndmask_b16 v209.h, 0x7fff, v147.h, s8
	v_permlanex16_b32 v147, v158, s70, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v148, v149, v55, v67
	v_perm_b32 v149, v149, v55, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v53.l, v41.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v53.h, v32.l
	v_mov_b16_e32 v32.l, v41.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v54.l, v45.l
	v_add_nc_u32_e32 v41, 0, v94
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.h, v37.l
	v_mov_b16_e32 v37.l, v45.h
	v_mov_b32_e32 v36, v32
	v_mov_b16_e32 v32.h, v34.l
	v_mov_b16_e32 v34.l, v43.h
	v_mov_b16_e32 v32.l, v43.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v146, v147, v158, v67
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v41, v[53:54], v[36:37] offset1:8
	v_mov_b16_e32 v53.h, v33.l
	v_mov_b16_e32 v33.l, v42.h
	v_mov_b16_e32 v54.l, v46.l
	v_mov_b16_e32 v54.h, v38.l
	v_mov_b16_e32 v53.l, v42.l
	v_mov_b16_e32 v38.l, v46.h
	v_mov_b32_e32 v37, v33
	v_mov_b16_e32 v42.h, v40.l
	v_mov_b16_e32 v40.l, v48.h
	v_mov_b16_e32 v33.l, v47.l
	v_mov_b16_e32 v33.h, v39.l
	ds_store_2addr_b64 v102, v[53:54], v[37:38] offset1:8
	v_mov_b16_e32 v39.l, v47.h
	v_mov_b32_e32 v38, v34
	v_mov_b16_e32 v42.l, v48.l
	v_add_nc_u32_e32 v48, 0, v95
	v_mov_b16_e32 v41.l, v44.l
	v_mov_b16_e32 v41.h, v35.l
	v_mov_b16_e32 v35.l, v44.h
	v_mov_b32_e32 v36, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v147, v147, v158, v68
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v103, v[32:33], v[38:39] offset1:8
	ds_store_2addr_b64 v104, v[41:42], v[35:36] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v48
	ds_load_b128 v[40:43], v48 offset:2048
	ds_load_b128 v[36:39], v107
	ds_load_b128 v[44:47], v107 offset:2048
	ds_load_b128 v[154:157], v108
	ds_load_b128 v[162:165], v108 offset:2048
	ds_load_b128 v[170:173], v110
	ds_load_b128 v[174:177], v111
	ds_load_b128 v[158:161], v109
	ds_load_b128 v[178:181], v110 offset:2048
	ds_load_b128 v[182:185], v111 offset:2048
	ds_load_b128 v[186:189], v48 offset:1024
	ds_load_b128 v[190:193], v112
	ds_load_b128 v[166:169], v109 offset:2048
	ds_load_b128 v[194:197], v48 offset:3072
	ds_load_b128 v[198:201], v112 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v151, v153, v67
	v_perm_b32 v151, v151, v153, v68
	v_perm_b32 v152, v204, v202, v67
	v_perm_b32 v153, v204, v202, v68
	v_permlanex16_b32 v205, v203, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v206, v50, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v208, v207, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v212, v209, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[146:153], v[24:31]
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v210, v211
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v202, v205, v203, v67
	v_perm_b32 v203, v205, v203, v68
	v_perm_b32 v204, v206, v50, v67
	v_perm_b32 v205, v206, v50, v68
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v32, v101, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v206, v208, v207, v67
	v_perm_b32 v207, v208, v207, v68
	v_perm_b32 v208, v212, v209, v67
	v_perm_b32 v209, v212, v209, v68
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[170:177], v[146:153], v[16:23]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[178:185], v[146:153], v[0:7]
	v_mov_b32_e32 v101, v32
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[146:153], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[24:31], v[154:161], v[202:209], v[24:31]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[186:193], v[202:209], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[194:201], v[202:209], v[0:7]
	v_mov_b32_e32 v146, v51
	v_wmma_f32_16x16x16_bf16 v[8:15], v[162:169], v[202:209], v[8:15]
	v_mov_b32_e32 v147, v49
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_39
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s29, s66, s71
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v55, s47 :: v_dual_add_nc_u32 v36, 0, v91
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[32:33], null, s29, s65, v[57:58]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v54, s46 :: v_dual_mov_b32 v51, s43
	v_dual_mov_b32 v52, s44 :: v_dual_mov_b32 v49, s41
	v_mov_b32_e32 v50, s42
	v_mov_b32_e32 v48, s40
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s66, v56
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s6, s72, s66
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v53, s45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[32:35], v32, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v96, v[34:35]
	v_add_nc_u32_e32 v32, 0, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[148:151], v32 offset1:1
	ds_load_2addr_stride64_b64 v[152:155], v97 offset1:1
	ds_load_2addr_stride64_b64 v[156:159], v98 offset1:1
	ds_load_2addr_stride64_b64 v[160:163], v99 offset1:1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v164, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v164, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s8, s4, s1
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[148:149], v[64:65], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[150:151], v[64:65], v[48:55] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v48, s66, v105, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[152:153], v[62:63], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[154:155], v[62:63], v[32:39] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v148, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v129, s66, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[156:157], v[60:61], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[158:159], v[60:61], v[32:39] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v149, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v130, s66, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[160:161], v[58:59], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[162:163], v[58:59], v[32:39] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v150, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v131, s66, 1
	buffer_load_u16 v151, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v132, s66, 1
	buffer_load_u16 v152, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v133, s66, 1
	buffer_load_u16 v153, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v134, s66, 1
	buffer_load_u16 v154, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v135, s66, 1
	buffer_load_u16 v155, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v136, s66, 1
	buffer_load_u16 v156, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v137, s66, 1
	buffer_load_u16 v157, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v138, s66, 1
	buffer_load_u16 v158, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v139, s66, 1
	buffer_load_u16 v159, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v140, s66, 1
	buffer_load_u16 v160, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v141, s66, 1
	buffer_load_u16 v161, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v142, s66, 1
	buffer_load_u16 v162, v48, s[56:59], 0 offen
	v_add_lshl_u32 v48, v143, s66, 1
	buffer_load_u16 v163, v48, s[56:59], 0 offen
	v_mov_b16_e32 v48.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v48.h, v48.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s8
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v49, s6, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, s1, s50, v49
	v_add_co_ci_u32_e64 v50, null, s51, v50, s1
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v48, v[49:50], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s66, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v49, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v49, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s9, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v49, s6, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, s1, s50, v49
	v_add_co_ci_u32_e64 v50, null, s51, v50, s1
	global_load_d16_u8 v48, v[49:50], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s66, v74
	v_mov_b16_e32 v49.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v50, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v50, v90
	v_mov_b16_e32 v49.l, v49.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s12
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s6, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s1, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s1
	global_load_d16_u8 v49, v[50:51], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v50, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v50, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s18, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s18
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s6, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s1, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s1
	global_load_d16_hi_u8 v49, v[50:51], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s66, v76
	v_mov_b16_e32 v50.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v51, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v51, v90
	v_mov_b16_e32 v50.h, v50.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s6, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s1
	global_load_d16_hi_u8 v50, v[51:52], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s66, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v51, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v51, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s26, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s6, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s1
	global_load_d16_u8 v50, v[51:52], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s66, v78
	v_mov_b16_e32 v51.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v52, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v52, v90
	v_mov_b16_e32 v51.h, v51.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s6, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s1, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s1
	global_load_d16_hi_u8 v51, v[52:53], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s66, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v52, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v52, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s28, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s28
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s6, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s1, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s1
	global_load_d16_u8 v51, v[52:53], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s66, v80
	v_mov_b16_e32 v52.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v53, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v53, v90
	v_mov_b16_e32 v52.h, v52.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s30
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s6, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s1, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s1
	global_load_d16_hi_u8 v52, v[53:54], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s66, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v53, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v53, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s31, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s6, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s1, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s1
	global_load_d16_u8 v52, v[53:54], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s66, v82
	v_mov_b16_e32 v53.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v54, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v54, v90
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s33
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s6, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s1, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s1
	global_load_d16_hi_u8 v53, v[54:55], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s66, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v54, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v54, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s34, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s34
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s6, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s1, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s1
	global_load_d16_u8 v53, v[54:55], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v55, s66, v84
	v_mov_b16_e32 v54.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v55, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v55, v90
	v_mov_b16_e32 v55.l, v54.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s35
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s6, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v165, 31, v55
	v_add_co_u32 v164, s1, s50, v55
	v_add_co_ci_u32_e64 v165, null, s51, v165, s1
	global_load_d16_u8 v55, v[164:165], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v164, s66, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v164, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v164, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s36, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s36
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s6, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v165, 31, v54
	v_add_co_u32 v164, s1, s50, v54
	v_add_co_ci_u32_e64 v165, null, s51, v165, s1
	global_load_d16_hi_u8 v54, v[164:165], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v164, s66, v86
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v164, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v164, v90
	v_mov_b16_e32 v55.h, v54.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s37
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v164, s6, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v165, 31, v164
	v_add_co_u32 v164, s1, s50, v164
	v_add_co_ci_u32_e64 v165, null, s51, v165, s1
	global_load_d16_hi_u8 v55, v[164:165], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v164, s66, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v164, v89
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v164, v90
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s38, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s38
	s_cbranch_execz .LBB0_5
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v164, s6, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v165, 31, v164
	v_add_co_u32 v164, s1, s50, v164
	v_add_co_ci_u32_e64 v165, null, s51, v165, s1
	global_load_d16_u8 v54, v[164:165], off
	s_branch .LBB0_5
.LBB0_38:
	.loc	1 0 34                          ; attention.py:0:34
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_39:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v70, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v69
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s64, v71
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s64, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s64, v36
	v_cmp_gt_i32_e64 s1, s64, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s0, s64, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v53, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v54, v47
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_fma_f32 v52, -v40, v45, 1.0
	v_fma_f32 v55, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v51, 1.0
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v48, v55, v48
	v_rcp_f32_e32 v55, v53
	v_div_scale_f32 v46, s8, v27, v37, v27
	v_div_scale_f32 v50, null, v37, v37, v29
	v_fma_f32 v59, -v47, v54, 1.0
	v_dual_mul_f32 v60, v43, v48 :: v_dual_fmac_f32 v51, v57, v51
	v_mul_f32_e32 v58, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v50
	v_fma_f32 v62, -v53, v55, 1.0
	v_fmac_f32_e32 v54, v59, v54
	v_fma_f32 v59, -v42, v60, v43
	v_mul_f32_e32 v63, v46, v51
	v_fma_f32 v57, -v40, v58, v41
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v49, s9, v26, v37, v26
	v_fmac_f32_e32 v60, v59, v48
	v_fma_f32 v59, -v44, v63, v46
	v_fmac_f32_e32 v58, v57, v45
	v_fma_f32 v61, -v50, v56, 1.0
	v_div_scale_f32 v52, s10, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v51
	v_fma_f32 v40, -v40, v58, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v61, v56
	v_mul_f32_e32 v57, v49, v54
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v45, v58
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v40, v37, v25
	v_mul_f32_e32 v40, v52, v56
	v_fma_f32 v41, -v47, v57, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v41, v54
	v_fma_f32 v42, -v42, v60, v43
	v_fma_f32 v41, -v44, v63, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s11, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v48, v60
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v45, v43, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v47, v57, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v63
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v54, v57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v56
	v_fma_f32 v27, -v53, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v52
	v_fmac_f32_e32 v45, v27, v55
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v56, v40
	v_fma_f32 v42, -v53, v45, v43
	s_mov_b32 vcc_lo, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v55, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s8, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s9, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s8, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s8, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s8, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s8, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s8, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s8, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s8, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b32_e64 v4, v16, v25, s7
	v_cndmask_b32_e64 v5, v25, v16, s7
	v_cndmask_b32_e64 v16, v0, v9, s7
	v_cndmask_b32_e64 v0, v9, v0, s7
	v_cndmask_b32_e64 v3, v24, v26, s7
	v_cndmask_b32_e64 v6, v19, v17, s7
	v_cndmask_b32_e64 v7, v17, v19, s7
	v_cndmask_b32_e64 v10, v8, v18, s7
	v_cndmask_b32_e64 v8, v18, v8, s7
	v_cndmask_b32_e64 v15, v14, v11, s7
	v_cndmask_b32_e64 v11, v11, v14, s7
	v_cndmask_b32_e64 v14, v12, v22, s7
	v_cndmask_b32_e64 v12, v22, v12, s7
	v_cndmask_b32_e64 v17, v2, v13, s7
	v_cndmask_b32_e64 v2, v13, v2, s7
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s7
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v67
	v_perm_b32 v13, v13, v16, v68
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v67
	v_perm_b32 v1, v3, v1, v68
	v_perm_b32 v2, v5, v4, v67
	v_perm_b32 v3, v5, v4, v68
	v_perm_b32 v4, v7, v6, v67
	v_perm_b32 v5, v7, v6, v68
	v_perm_b32 v6, v8, v10, v67
	v_perm_b32 v7, v8, v10, v68
	v_perm_b32 v8, v9, v15, v67
	v_perm_b32 v9, v9, v15, v68
	v_perm_b32 v10, v11, v14, v67
	v_perm_b32 v11, v11, v14, v68
	v_perm_b32 v14, v18, v17, v67
	v_perm_b32 v15, v18, v17, v68
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp38:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 213
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 213
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13264
; TotalNumSgprs: 75
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 213
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
