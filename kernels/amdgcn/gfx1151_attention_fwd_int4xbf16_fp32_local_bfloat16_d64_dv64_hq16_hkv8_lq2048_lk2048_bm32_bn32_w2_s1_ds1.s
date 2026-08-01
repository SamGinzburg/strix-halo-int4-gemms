	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s21, s[0:1], 0x84
	s_load_b32 s50, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[6:7], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v80, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s20, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s20, s2
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v33, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x800, v4
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v94, 16, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s29, 0, v94
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s50, v32, v[80:81]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s50, v80
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s20, s7
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s20, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s21
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[5:6], null, s50, s8, v[81:82]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s9, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s21
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s9, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s51, s10, 0x7fffffe0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v5, vcc_lo
	v_and_or_b32 v5, v3, 30, v33
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[14:17], v1, s[12:15], 0 offen
	v_lshlrev_b32_e32 v95, 2, v5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s68, s9, s11
	s_mov_b32 s9, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s68, s68, 31
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_xor_b32_e32 v97, 4, v95
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v13, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, s20, v13
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v18
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v5, v95, v14
	ds_bpermute_b32 v6, v95, v15
	ds_bpermute_b32 v7, v95, v16
	ds_bpermute_b32 v9, v95, v17
	ds_bpermute_b32 v8, v97, v14
	ds_bpermute_b32 v10, v97, v15
	ds_bpermute_b32 v11, v97, v16
	ds_bpermute_b32 v12, v97, v17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v14, 0x5410
	v_mov_b32_e32 v15, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v14, 0x1054, v14, s29
	v_cndmask_b32_e64 v15, 0x3276, v15, s29
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
	v_and_b32_e32 v92, 0x5040504, v14
	v_and_b32_e32 v93, 0x7060706, v15
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr93
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x64
	v_or_b32_e32 v96, s8, v13
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v13, 1, v96
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v85, v6, v10, s29
	v_cndmask_b32_e64 v89, v10, v6, s29
	v_mov_b32_e32 v6, 0x7632
	s_mov_b32 s55, 0x31027000
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v4, s21, v4
	v_dual_mov_b32 v37, 0x7531 :: v_dual_lshlrev_b32 v14, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v84, v5, v8, s29
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v88, v8, v5, s29
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v36, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_lshlrev_b32 v38, 2, v32
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v24, 0
	buffer_load_u16 v35, v13, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v13, 1, v0
	v_and_b32_e32 v98, 0x3f0, v2
	v_dual_mov_b32 v51, 0xff800000 :: v_dual_and_b32 v2, 24, v3
	v_mov_b32_e32 v3, 0x6420
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v13
	v_dual_mov_b32 v5, 0x5410 :: v_dual_and_b32 v0, 24, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v34, 56, v14
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_cndmask_b32_e32 v39, 0x7531, v3, vcc_lo
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v40, 6, v13
	v_cndmask_b32_e64 v41, 0x1054, v5, s29
	v_cndmask_b32_e64 v42, 0x3276, v6, s29
	v_dual_mov_b32 v28, v24 :: v_dual_cndmask_b32 v37, 0x6420, v37
	v_lshl_or_b32 v39, v39, 8, v39
	v_dual_mov_b32 v26, v24 :: v_dual_add_nc_u32 v101, s7, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s1, 0x10007
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v100, s6, v4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s7, s1, s7
	v_mov_b32_e32 v29, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s6, s0, 4
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v34
	v_and_or_b32 v104, v38, 60, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_and_b32_e32 v38, 0x750031, v39
	v_lshl_or_b32 v37, v37, 8, v37
	s_sext_i32_i16 s7, s7
	v_lshl_or_b32 v103, v1, 5, v2
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	v_mov_b32_e32 v25, v24
	v_xor_b32_e32 v102, v98, v0
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v37, 0x750031, v37
	s_lshl_b32 s3, s6, 14
	s_and_b32 s73, s7, 0xfffff800
	v_mov_b32_e32 v14, v24
	s_add_i32 s73, s73, s3
	v_xor_b32_e32 v43, 8, v102
	v_xor_b32_e32 v44, 8, v103
	v_xor_b32_e32 v45, 16, v103
	v_xor_b32_e32 v46, 24, v103
	v_or_b32_e32 v110, s73, v33
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s7, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s6, s17, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v83, v9, v12, s29
	v_cndmask_b32_e64 v82, v7, v11, s29
	v_cndmask_b32_e64 v87, v12, v9, s29
	v_cndmask_b32_e64 v86, v11, v7, s29
	v_lshl_add_u32 v99, v1, 1, 0
	v_dual_mov_b32 v30, v24 :: v_dual_add_nc_u32 v107, 0, v44
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v109, 0, v46
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v106, 0, v43
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v108, 0, v45
	v_mov_b32_e32 v2, v24
	v_dual_mov_b32 v3, v24 :: v_dual_mov_b32 v136, 0xff800000
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v138, v24
	v_xor_b32_e32 v105, 64, v104
	v_or_b32_e32 v119, 2, v110
	v_or_b32_e32 v120, 4, v110
	v_or_b32_e32 v121, 6, v110
	v_or_b32_e32 v122, 8, v110
	v_or_b32_e32 v123, 10, v110
	v_or_b32_e32 v124, 12, v110
	v_or_b32_e32 v125, 14, v110
	v_or_b32_e32 v126, 16, v110
	v_or_b32_e32 v127, 18, v110
	v_or_b32_e32 v128, 20, v110
	v_or_b32_e32 v129, 22, v110
	v_or_b32_e32 v130, 24, v110
	v_or_b32_e32 v131, 26, v110
	v_or_b32_e32 v132, 28, v110
	v_or_b32_e32 v133, 30, v110
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s19, s20
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s74, s1, s6
	s_lshl_b32 s69, s39, 3
	s_lshl_b32 s70, s39, 4
	s_mul_i32 s71, s39, 24
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, s54
	s_mov_b32 s67, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s60, s14
	s_mov_b32 s64, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s61, s15
	s_add_i32 s74, s74, s12
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[90:91], null, s39, v36, v[34:35]
	v_lshl_or_b32 v34, v41, 8, v41
	v_lshl_or_b32 v36, v42, 8, v42
	v_mov_b32_e32 v31, v24
	v_mov_b32_e32 v17, v24
	v_mad_u64_u32 v[91:92], null, s19, v32, v[80:81]
	v_and_b32_e32 v34, 0x540054, v34
	v_and_b32_e32 v36, 0x760076, v36
	v_lshl_or_b32 v32, v38, 4, v38
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v33, 16, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v36, v36, 4, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v111, 0x7050301, v32
	v_lshl_or_b32 v32, v37, 4, v37
	v_mov_b32_e32 v22, v24
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v92, 0x5040504, v34
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v113, 10, v91
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v112, 9, v91
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v115, 12, v91
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v114, 11, v91
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v117, 14, v91
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v116, 13, v91
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v118, 15, v91
	v_dual_mov_b32 v0, v24 :: v_dual_mul_f32 v135, s7, v33
	v_dual_mov_b32 v1, v24 :: v_dual_and_b32 v134, 0x7050301, v32
	v_and_b32_e32 v93, 0x7060706, v36
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s1, s51, s73
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v63, s51, v80
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[42:43], null, s1, s50, v[81:82]
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v75, 11, v80
	v_or_b32_e32 v76, 12, v80
	v_or_b32_e32 v77, 13, v80
	v_mad_u64_u32 v[40:41], null, s1, s39, v[90:91]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v63, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v63, v101
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v65, 1, v80
	v_or_b32_e32 v66, 2, v80
	v_or_b32_e32 v67, 3, v80
	v_or_b32_e32 v68, 4, v80
	v_or_b32_e32 v69, 5, v80
	v_or_b32_e32 v71, 7, v80
	v_or_b32_e32 v72, 8, v80
	v_or_b32_e32 v73, 9, v80
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s74, s51
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v159, 1, v91
	v_add_nc_u32_e32 v160, 2, v91
	v_add_nc_u32_e32 v161, 3, v91
	v_add_nc_u32_e32 v162, 4, v91
	v_add_nc_u32_e32 v163, 5, v91
	v_add_nc_u32_e32 v164, 6, v91
	v_add_nc_u32_e32 v165, 7, v91
	v_add_nc_u32_e32 v166, 8, v91
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v79, 15, v80
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v145, s3, v91, 2
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v148, s51, v75
	v_or_b32_e32 v147, s51, v76
	v_or_b32_e32 v146, s51, v77
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v42, 0x80000000, v42, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v144, s3, v112, 2
	v_add_lshl_u32 v143, s3, v113, 2
	v_add_lshl_u32 v142, s3, v114, 2
	v_add_lshl_u32 v141, s3, v115, 2
	v_add_lshl_u32 v140, s3, v116, 2
	v_add_lshl_u32 v43, s3, v117, 2
	v_add_lshl_u32 v41, s3, v118, 2
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v158, s51, v65
	v_or_b32_e32 v157, s51, v66
	v_or_b32_e32 v156, s51, v67
	v_or_b32_e32 v155, s51, v68
	v_or_b32_e32 v154, s51, v69
	v_or_b32_e32 v152, s51, v71
	v_or_b32_e32 v151, s51, v72
	v_or_b32_e32 v150, s51, v73
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s3, v159, 2
	v_add_lshl_u32 v72, s3, v160, 2
	v_add_lshl_u32 v71, s3, v161, 2
	v_add_lshl_u32 v69, s3, v162, 2
	v_add_lshl_u32 v68, s3, v163, 2
	v_add_lshl_u32 v67, s3, v164, 2
	v_add_lshl_u32 v66, s3, v165, 2
	v_add_lshl_u32 v65, s3, v166, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s3, s4, s1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v77, s51, v79
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v148, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v148, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s30, v147, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s31, v147, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s33, v146, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s34, v146, v101
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0x80000000, v145, s3
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[145:148], v42, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v70, 6, v80
	v_or_b32_e32 v78, 14, v80
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v158, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v158, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v157, v100
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v153, s51, v70
	v_or_b32_e32 v78, s51, v78
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v157, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v156, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v156, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v154, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v154, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v153, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v153, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v152, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v152, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v151, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v151, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v150, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v150, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s35, v78, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s36, v78, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s37, v77, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s38, v77, v101
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v155, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v155, v101
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v44, 0, v102
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s40 :: v_dual_add_nc_u32 v45, 0, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v63, 1, v40
	v_add_lshl_u32 v77, v40, s69, 1
	v_add_lshl_u32 v78, v40, s70, 1
	v_add_lshl_u32 v40, v40, s71, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s7, s8
	s_and_b32 s7, s9, s10
	s_and_b32 s8, s11, s12
	s_and_b32 s10, s15, s16
	s_and_b32 s11, s17, s18
	s_and_b32 s12, s19, s20
	s_and_b32 s17, s21, s22
	s_and_b32 s18, s23, s24
	s_and_b32 s20, s27, s28
	s_and_b32 s21, s30, s31
	s_and_b32 s23, s35, s36
	s_and_b32 s24, s37, s38
	s_and_b32 s9, s13, s14
	s_and_b32 s15, s4, s10
	s_and_b32 s14, s4, s11
	s_and_b32 s13, s4, s12
	s_and_b32 s12, s4, s17
	s_and_b32 s10, s4, s18
	s_and_b32 s18, s4, s20
	s_and_b32 s20, s4, s21
	s_and_b32 s17, s4, s23
	s_and_b32 s21, s4, s24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v74, 10, v80
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s41
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v40, s0
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v162, 0x80000000, v68, s15
	v_cndmask_b32_e64 v163, 0x80000000, v67, s14
	v_cndmask_b32_e64 v164, 0x80000000, v66, s13
	v_cndmask_b32_e64 v165, 0x80000000, v65, s12
	v_cndmask_b32_e64 v171, 0x80000000, v43, s17
	v_cndmask_b32_e64 v172, 0x80000000, v41, s21
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v149, s51, v74
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s42 :: v_dual_mov_b32 v35, s43
	v_dual_mov_b32 v36, s44 :: v_dual_mov_b32 v37, s45
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v149, v100
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v149, v101
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v38, s46 :: v_dual_mov_b32 v39, s47
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s33, s34
	s_and_b32 s6, s4, s1
	s_and_b32 s19, s25, s26
	s_and_b32 s1, s4, s8
	s_and_b32 s8, s4, s19
	s_and_b32 s19, s4, s22
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v166, 0x80000000, v144, s10
	v_cndmask_b32_e64 v167, 0x80000000, v143, s8
	v_cndmask_b32_e64 v168, 0x80000000, v142, s18
	v_cndmask_b32_e64 v169, 0x80000000, v141, s20
	v_cndmask_b32_e64 v170, 0x80000000, v140, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v63, 0x80000000, v63, s0
	v_cndmask_b32_e64 v77, 0x80000000, v77, s0
	v_cndmask_b32_e64 v78, 0x80000000, v78, s0
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s4, s7
	s_and_b32 s16, s4, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v46, s51, v110, 1
	v_add_lshl_u32 v47, v119, s51, 1
	v_add_lshl_u32 v48, v120, s51, 1
	v_add_lshl_u32 v49, v121, s51, 1
	v_add_lshl_u32 v50, v122, s51, 1
	v_add_lshl_u32 v56, v127, s51, 1
	v_add_lshl_u32 v57, v128, s51, 1
	v_add_lshl_u32 v58, v129, s51, 1
	v_add_lshl_u32 v59, v130, s51, 1
	v_add_lshl_u32 v60, v131, s51, 1
	v_add_lshl_u32 v61, v132, s51, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v73, 0x80000000, v73, s6
	v_cndmask_b32_e64 v72, 0x80000000, v72, s7
	v_cndmask_b32_e64 v161, 0x80000000, v69, s16
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v52, v123, s51, 1
	v_add_lshl_u32 v53, v124, s51, 1
	v_add_lshl_u32 v54, v125, s51, 1
	v_add_lshl_u32 v55, v126, s51, 1
	v_add_lshl_u32 v62, v133, s51, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s51, s51, 32
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v44, v[145:146]
	ds_store_b64 v106, v[147:148]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[40:43], v45 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v107 offset1:1
	ds_load_2addr_stride64_b64 v[156:159], v108 offset1:1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v139.h
	v_mov_b16_e64 v75.h, v139.h
	v_mov_b16_e64 v74.h, v139.h
	v_mov_b16_e64 v76.h, v139.h
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[40:41], v[88:89], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[42:43], v[88:89], v[32:39] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[32:35], v109 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[65:66], v[86:87], v[140:147] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[40:43], v63, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[148:155], v[67:68], v[86:87], v[148:155] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[156:157], v[84:85], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[158:159], v[84:85], v[148:155] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[140:147], v[32:33], v[82:83], v[140:147] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[148:155], v[34:35], v[82:83], v[148:155] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v141
	v_cvt_f32_i32_e32 v35, v142
	v_cvt_f32_i32_e32 v36, v143
	v_cvt_f32_i32_e32 v37, v144
	v_cvt_f32_i32_e32 v38, v145
	v_cvt_f32_i32_e32 v39, v146
	v_cvt_f32_i32_e32 v44, v147
	v_cvt_f32_i32_e32 v45, v148
	v_cvt_f32_i32_e32 v63, v149
	v_cvt_f32_i32_e32 v65, v150
	v_cvt_f32_i32_e32 v148, v151
	v_cvt_f32_i32_e32 v149, v152
	v_cvt_f32_i32_e32 v150, v153
	v_cvt_f32_i32_e32 v151, v154
	v_cvt_f32_i32_e32 v152, v155
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[66:69], v77, s[64:67], 0 offen
	buffer_load_b128 v[140:143], v78, s[64:67], 0 offen
	buffer_load_b128 v[144:147], v160, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0xf
	buffer_load_b32 v71, v71, s[56:59], 0 offen
	buffer_load_b32 v77, v161, s[56:59], 0 offen
	buffer_load_b32 v72, v72, s[56:59], 0 offen
	buffer_load_b32 v73, v73, s[56:59], 0 offen
	buffer_load_b32 v78, v79, s[56:59], 0 offen
	buffer_load_b32 v79, v168, s[56:59], 0 offen
	buffer_load_b32 v153, v169, s[56:59], 0 offen
	buffer_load_b32 v154, v167, s[56:59], 0 offen
	buffer_load_b32 v155, v166, s[56:59], 0 offen
	buffer_load_b32 v156, v165, s[56:59], 0 offen
	buffer_load_b32 v157, v164, s[56:59], 0 offen
	buffer_load_b32 v158, v163, s[56:59], 0 offen
	buffer_load_b32 v159, v162, s[56:59], 0 offen
	buffer_load_b32 v160, v172, s[56:59], 0 offen
	buffer_load_b32 v161, v171, s[56:59], 0 offen
	buffer_load_b32 v162, v170, s[56:59], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v46, v46, s[60:63], 0 offen
	buffer_load_u16 v47, v47, s[60:63], 0 offen
	buffer_load_u16 v48, v48, s[60:63], 0 offen
	buffer_load_u16 v49, v49, s[60:63], 0 offen
	buffer_load_u16 v50, v50, s[60:63], 0 offen
	buffer_load_u16 v163, v52, s[60:63], 0 offen
	buffer_load_u16 v164, v53, s[60:63], 0 offen
	buffer_load_u16 v165, v54, s[60:63], 0 offen
	buffer_load_u16 v166, v55, s[60:63], 0 offen
	buffer_load_u16 v56, v56, s[60:63], 0 offen
	buffer_load_u16 v57, v57, s[60:63], 0 offen
	buffer_load_u16 v58, v58, s[60:63], 0 offen
	buffer_load_u16 v59, v59, s[60:63], 0 offen
	buffer_load_u16 v60, v60, s[60:63], 0 offen
	buffer_load_u16 v61, v61, s[60:63], 0 offen
	buffer_load_u16 v32, v62, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v169, v135, v36 :: v_dual_add_nc_u32 v64, 0, v98
	v_mul_f32_e32 v62, v135, v33
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v167, v135, v34
	v_mul_f32_e32 v168, v135, v35
	v_mul_f32_e32 v170, v135, v37
	v_mul_f32_e32 v171, v135, v38
	v_mul_f32_e32 v36, v135, v39
	v_mul_f32_e32 v37, v135, v44
	v_mul_f32_e32 v38, v135, v45
	v_mul_f32_e32 v35, v135, v63
	v_mul_f32_e32 v55, v135, v151
	v_mul_f32_e32 v54, v135, v150
	v_mul_f32_e32 v52, v135, v148
	v_mul_f32_e32 v53, v135, v149
	v_mul_f32_e32 v39, v135, v65
	v_mul_f32_e32 v65, v135, v152
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(35)
	ds_store_b128 v64, v[40:43]
	s_waitcnt vmcnt(34)
	ds_store_b128 v64, v[66:69] offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b128 v64, v[140:143] offset:2048
	s_waitcnt vmcnt(32)
	ds_store_b128 v64, v[144:147] offset:3072
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(31)
	v_cndmask_b32_e64 v33, 0xff800000, v71, s1
	s_waitcnt vmcnt(30)
	v_cndmask_b32_e64 v77, 0xff800000, v77, s16
	s_waitcnt vmcnt(29)
	v_cndmask_b32_e64 v34, 0xff800000, v72, s7
	s_waitcnt vmcnt(28)
	v_cndmask_b32_e64 v40, 0xff800000, v73, s6
	s_waitcnt vmcnt(27)
	v_cndmask_b32_e64 v43, 0xff800000, v78, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v33
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(26)
	v_cndmask_b32_e64 v44, 0xff800000, v79, s18
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v34
	v_cmp_neq_f32_e64 s22, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v45, 0xff800000, v154, s8
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s1, s9
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(23)
	v_cndmask_b32_e64 v63, 0xff800000, v155, s10
	s_waitcnt vmcnt(22)
	v_cndmask_b32_e64 v71, 0xff800000, v156, s12
	s_waitcnt vmcnt(21)
	v_cndmask_b32_e64 v72, 0xff800000, v157, s13
	s_waitcnt vmcnt(20)
	v_cndmask_b32_e64 v73, 0xff800000, v158, s14
	s_waitcnt vmcnt(19)
	v_cndmask_b32_e64 v78, 0xff800000, v159, s15
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v43
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s7, s7, s11
	s_and_b32 s9, s6, s22
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v143, 16, v49
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v49, v40, v43 :: v_dual_cndmask_b32 v40, v43, v40
	s_waitcnt vmcnt(8)
	v_dual_cndmask_b32 v43, v33, v34 :: v_dual_lshlrev_b32 v146, 16, v165
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v147, 16, v166
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v57
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(4)
	v_dual_cndmask_b32 v57, v34, v33 :: v_dual_lshlrev_b32 v66, 16, v58
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v33, 0, 1, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v141, 0xff800000, v162, s19
	v_cndmask_b32_e64 v142, 0xff800000, v153, s20
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v67, 16, v59
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v68, 16, v60
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v69, 16, v61
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v44
	v_cmp_neq_f32_e64 s26, 0xff800000, v63
	v_cmp_neq_f32_e64 s27, 0xff800000, v71
	v_cmp_neq_f32_e64 s28, 0xff800000, v72
	v_cmp_neq_f32_e64 s30, 0xff800000, v73
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v60, v72, v73 :: v_dual_cndmask_b32 v61, v73, v72
	v_cndmask_b32_e32 v72, v63, v71, vcc_lo
	v_cndmask_b32_e32 v63, v71, v63, vcc_lo
	v_cndmask_b32_e32 v71, v44, v45, vcc_lo
	v_cndmask_b32_e32 v73, v45, v44, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s7
	v_cndmask_b32_e64 v44, 0, 1, s9
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s11, s3, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0xff800000, v160, s21
	v_cndmask_b32_e64 v140, 0xff800000, v161, s17
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v45
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v45, 0, 1, s11
	v_or_b16 v151.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v44.l
	s_and_b32 s6, s18, s24
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v46, 16, v46
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_cndmask_b32 v58, v78, v77 :: v_dual_lshlrev_b32 v145, 16, v164
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v78
	v_cmp_neq_f32_e64 s33, 0xff800000, v77
	v_cmp_neq_f32_e64 s34, 0xff800000, v79
	v_cmp_neq_f32_e64 s35, 0xff800000, v140
	v_cmp_neq_f32_e64 s36, 0xff800000, v141
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e32 v59, v77, v78, vcc_lo
	v_dual_cndmask_b32 v77, v141, v142 :: v_dual_cndmask_b32 v78, v142, v141
	v_cndmask_b32_e32 v141, v79, v140, vcc_lo
	v_cndmask_b32_e32 v79, v140, v79, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v140, 0, 1, s6
	v_mov_b16_e32 v34.l, v45.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s8, s8, s25
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v142
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v142, 0, 1, s8
	s_and_b32 s10, s10, s26
	v_or_b16 v151.l, v34.l, v33.l
	v_mov_b16_e64 v33.l, v140.l
	v_cndmask_b32_e64 v148, 0, 1, s10
	v_mov_b16_e64 v34.l, v142.l
	s_and_b32 s12, s12, s27
	s_and_b32 s13, s13, s28
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v149, 0, 1, s12
	v_cndmask_b32_e64 v150, 0, 1, s13
	s_and_b32 s14, s14, s30
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_bpermute_b32 v49, v95, v49
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v140.h, v34.l, v33.l
	v_mov_b16_e64 v33.l, v148.l
	v_mov_b16_e64 v34.l, v149.l
	v_cndmask_b32_e64 v152, 0, 1, s14
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v153, v97, v40
	ds_bpermute_b32 v154, v95, v43
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v57, v97, v57
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s15, s31
	s_and_b32 s18, s16, s33
	s_and_b32 s16, s17, s35
	v_or_b16 v140.l, v34.l, v33.l
	v_mov_b16_e64 v33.l, v150.l
	s_and_b32 s17, s21, s34
	s_and_b32 s19, s19, s36
	v_cndmask_b32_e64 v44, 0, 1, s15
	v_cndmask_b32_e64 v142, 0, 1, s17
	v_cndmask_b32_e64 v149, 0, 1, s19
	v_mov_b16_e64 v34.l, v152.l
	v_lshlrev_b16 v33.l, 8, v33.l
	s_and_b32 s20, s20, s37
	v_cndmask_b32_e64 v45, 0, 1, s18
	v_cndmask_b32_e64 v148, 0, 1, s16
	v_cndmask_b32_e64 v150, 0, 1, s20
	v_or_b16 v40.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v44.l
	v_mov_b16_e64 v40.l, v142.l
	v_mov_b16_e64 v43.l, v149.l
	v_mov_b16_e32 v34.l, v45.l
	v_mov_b16_e64 v44.l, v148.l
	v_mov_b16_e64 v45.l, v150.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v33.h, 8, v40.l
	v_lshlrev_b16 v34.h, 8, v43.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v144, 16, v163
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v40.l, v34.l, v33.l
	v_or_b16 v43.h, v44.l, v33.h
	v_or_b16 v43.l, v45.l, v34.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v33, v153, v49, s29
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v34, v57, v154, s29
	ds_bpermute_b32 v45, v95, v60
	v_cndmask_b32_e64 v44, v49, v153, s29
	v_cndmask_b32_e64 v57, v154, v57, s29
	v_mul_f32_e32 v142, 0x3fb8aa3b, v33
	v_mul_f32_e32 v148, 0x3fb8aa3b, v34
	ds_bpermute_b32 v33, v95, v58
	ds_bpermute_b32 v34, v97, v59
	ds_bpermute_b32 v58, v97, v63
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v142, v62, v46
	v_fmac_f32_e32 v148, v167, v47
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v46, v97, v61
	ds_bpermute_b32 v47, v95, v72
	ds_bpermute_b32 v59, v95, v71
	ds_bpermute_b32 v60, v97, v73
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v152, 0x3fb8aa3b, v57
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v51
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v41, v99 offset:256
	ds_load_u16_d16 v42, v99 offset:512
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v152, v35, v56
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v49, v99 offset:288
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s51, s68
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v61, v34, v33, s29
	v_cndmask_b32_e64 v71, v33, v34, s29
	v_cndmask_b32_e64 v33, v46, v45, s29
	v_cndmask_b32_e64 v72, v45, v46, s29
	v_cndmask_b32_e64 v34, v58, v47, s29
	v_cndmask_b32_e64 v45, v60, v59, s29
	v_mul_f32_e32 v150, 0x3fb8aa3b, v61
	ds_bpermute_b32 v46, v97, v78
	ds_bpermute_b32 v78, v97, v79
	v_dual_mul_f32 v153, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v154, 0x3fb8aa3b, v45
	ds_bpermute_b32 v45, v95, v77
	ds_bpermute_b32 v77, v95, v141
	v_dual_mul_f32 v149, 0x3fb8aa3b, v33 :: v_dual_fmac_f32 v150, v168, v48
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v154, v171, v144
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_perm_b32 v144, v40, v151, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v72, 0x3fb8aa3b, v72 :: v_dual_fmac_f32 v149, v169, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v143, v40, v151, v111
	v_perm_b32 v151, v43, v140, v111
	v_perm_b32 v140, v43, v140, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v71, 0x3fb8aa3b, v71 :: v_dual_fmac_f32 v72, v52, v66
	v_cndmask_b32_e64 v73, v47, v58, s29
	v_cndmask_b32_e64 v79, v59, v60, s29
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v140, v97, v140
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v71, v39, v64
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v34, v99 offset:608
	ds_load_u16_d16 v33, v99 offset:352
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v47, v46, v45, s29
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v40, v78, v77, s29
	v_cndmask_b32_e64 v77, v77, v78, s29
	.loc	1 881 25                        ; attention.py:881:25
	ds_bpermute_b32 v78, v95, v143
	ds_bpermute_b32 v143, v97, v144
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v153, v170, v50 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v40
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v44
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_bpermute_b32 v144, v95, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v141, v45, v46, s29
	v_dual_mul_f32 v155, 0x3fb8aa3b, v47 :: v_dual_fmac_f32 v156, v37, v146
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v157, v38, v147
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v58, v99 offset:576
	ds_load_u16_d16 v46, v99 offset:1536
	ds_load_u16_d16 v62, v99 offset:1600
	ds_load_u16_d16 v47, v99 offset:1792
	ds_load_u16_d16 v63, v99 offset:1856
	ds_load_u16_d16 v43, v99 offset:768
	ds_load_u16_d16 v59, v99 offset:832
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v146, 0x3fb8aa3b, v141
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v155, v36, v145
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v145, 16, v32
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v79, 0x3fb8aa3b, v79
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v44, v99 offset:1024
	ds_load_u16_d16 v60, v99 offset:1088
	ds_load_u16_d16 v45, v99 offset:1280
	ds_load_u16_d16 v61, v99 offset:1344
	ds_load_u16_d16 v40, v99
	ds_load_u16_d16 v48, v99 offset:32
	ds_load_u16_d16 v56, v99 offset:64
	ds_load_u16_d16 v57, v99 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v33, v99 offset:480
	ds_load_u16_d16 v32, v99 offset:96
	ds_load_u16_d16_hi v41, v99 offset:384
	ds_load_u16_d16_hi v42, v99 offset:640
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v58, v99 offset:704
	ds_load_u16_d16 v50, v99 offset:544
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v62, v99 offset:1728
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v47, v99 offset:1920
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v63, v99 offset:1984
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v43, v99 offset:896
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v59, v99 offset:960
	ds_load_u16_d16 v35, v99 offset:864
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v39, v143, v78, s29
	v_cndmask_b32_e64 v52, v140, v144, s29
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v146, v55, v69 :: v_dual_fmac_f32 v79, v54, v68
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v54, v144, v140, s29
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v159, 0x1000000, v39
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v158, 0x1000000, v52
	v_and_b32_e32 v64, 0x100, v39
	v_and_b32_e32 v68, 1, v54
	v_cmp_eq_u32_e64 s35, 0, v159
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v73, v53, v67 :: v_dual_and_b32 v66, 0x100, v52
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v53, v78, v143, s29
	v_cmp_eq_u32_e64 s38, 0, v158
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, v149, 0xff800000, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v55, 1, v39
	v_and_b32_e32 v39, 0x10000, v39
	v_and_b32_e32 v147, 0x10000, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, v156, 0xff800000, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v67, 1, v53
	v_cmp_eq_u32_e64 s30, 1, v55
	v_cmp_eq_u32_e64 s31, 0, v64
	v_cmp_eq_u32_e64 s34, 0, v66
	v_and_b32_e32 v69, 0x100, v54
	v_and_b32_e32 v78, 0x1000000, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v142, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v140, 0x1000000, v53
	v_and_b32_e32 v53, 0x100, v53
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v77, 0x3fb8aa3b, v77
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v54, 0x10000, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, v154, 0xff800000, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s36, 0, v39
	v_cmp_eq_u32_e64 s22, 0, v53
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v77, v65, v145
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v65, 1, v52
	v_cmp_eq_u32_e64 s21, 1, v68
	v_cmp_eq_u32_e64 s23, 0, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, v152, 0xff800000, s22
	v_cndmask_b32_e64 v152, v148, 0xff800000, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 0, v54
	v_cmp_eq_u32_e64 s26, 0, v147
	v_cmp_eq_u32_e64 s33, 1, v65
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, v150, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v52, 0x10000, v52
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v151, v152
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 0, v140
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, 0xff800000, v73, s21
	v_cndmask_b32_e64 v144, v79, 0xff800000, s23
	v_cndmask_b32_e64 v145, v146, 0xff800000, s24
	v_cndmask_b32_e64 v146, v71, 0xff800000, s26
	v_cndmask_b32_e64 v147, v72, 0xff800000, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 0, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v153, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v67
	v_cmp_eq_u32_e64 s37, 0, v52
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v141, v144, v145
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, v77, 0xff800000, s25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v143, v146, v147
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v157, s28
	v_cndmask_b32_e64 v155, v155, 0xff800000, s37
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v54, v149, v153, v154
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v44, v99 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v60, v99 offset:1216
	ds_load_u16_d16 v36, v99 offset:1120
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v45, v99 offset:1408
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v61, v99 offset:1472
	ds_load_u16_d16 v37, v99 offset:1376
	ds_load_u16_d16_hi v46, v99 offset:1664
	ds_load_u16_d16 v38, v99 offset:1632
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v52, v39, v140
	v_max3_f32 v55, v155, v156, v148
	v_max3_f32 v52, v53, v150, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v39, v52, v55, v39
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v52, v39, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v142, v51, v39, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v152, v142
	v_sub_f32_e32 v52, v151, v142
	v_sub_f32_e32 v53, v150, v142
	v_sub_f32_e32 v54, v149, v142
	v_sub_f32_e32 v64, v154, v142
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v155, v142
	v_sub_f32_e32 v66, v156, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v67, v51, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, v39, 0, s31
	v_cndmask_b32_e64 v51, 0, v52, s30
	v_cndmask_b32_e64 v52, v53, 0, s36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v39.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v55, v153, v142
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v53, v54, 0, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v51.h
	v_cmp_o_f32_e64 s36, v39, v39
	v_mov_b16_e32 v75.l, v52.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v68, 1, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v55, s33
	v_cndmask_b32_e64 v55, v64, 0, s34
	v_cndmask_b32_e64 v64, v65, 0, s37
	v_cndmask_b32_e64 v65, v66, 0, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v139
	v_mov_b16_e64 v139.l, v53.h
	v_cmp_o_f32_e64 s37, v51, v51
	v_add3_u32 v51, v51, v68, 0x7fff
	v_mov_b16_e32 v74.l, v54.h
	v_add3_u32 v39, v39, v66, 0x7fff
	v_and_b32_e32 v66, 1, v139
	v_mov_b16_e64 v139.l, v55.h
	v_mov_b16_e32 v76.l, v64.h
	v_and_b32_e32 v70, 1, v74
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s37
	v_add3_u32 v51, v53, v66, 0x7fff
	v_and_b32_e32 v68, 1, v139
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v65.h
	v_cmp_o_f32_e64 s38, v52, v52
	v_cmp_o_f32_e64 s34, v53, v53
	v_cmp_o_f32_e64 s35, v54, v54
	v_add3_u32 v54, v54, v70, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s36
	v_cmp_o_f32_e64 s31, v55, v55
	v_cmp_o_f32_e64 s33, v64, v64
	v_cmp_o_f32_e64 s30, v65, v65
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v66, 0, v67, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v69, 1, v75
	v_and_b32_e32 v71, 1, v76
	v_and_b32_e32 v53, 1, v139
	v_add3_u32 v55, v55, v68, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v52, v69, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v54.h, s35
	v_permlanex16_b32 v54, v39, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v64, v71, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v52.h, s38
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v53, v65, v53, 0x7fff
	v_perm_b32 v157, v54, v39, v92
	v_perm_b32 v158, v54, v39, v93
	v_cndmask_b16 v52.h, 0x7fff, v55.h, s31
	v_cndmask_b16 v39.l, 0x7fff, v64.h, s33
	v_cndmask_b16 v39.h, 0x7fff, v53.h, s30
	v_permlanex16_b32 v53, v51, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v64, v99 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v66
	v_mul_f32_e32 v1, v1, v66
	v_mul_f32_e32 v2, v2, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v159, v53, v51, v92
	v_perm_b32 v160, v53, v51, v93
	v_permlanex16_b32 v51, v52, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v39, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v66
	v_mul_f32_e32 v4, v4, v66
	v_mul_f32_e32 v5, v5, v66
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v51, v52, v92
	v_perm_b32 v162, v51, v52, v93
	v_perm_b32 v163, v53, v39, v92
	v_perm_b32 v164, v53, v39, v93
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v51, v99 offset:800
	ds_load_u16_d16 v52, v99 offset:1056
	ds_load_u16_d16 v53, v99 offset:1312
	ds_load_u16_d16 v54, v99 offset:1568
	ds_load_u16_d16 v55, v99 offset:1824
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v50, v99 offset:672
	ds_load_u16_d16_hi v34, v99 offset:736
	ds_load_u16_d16 v72, v99 offset:2112
	ds_load_u16_d16 v39, v99 offset:1888
	ds_load_u16_d16_hi v40, v99 offset:128
	ds_load_u16_d16_hi v48, v99 offset:160
	ds_load_u16_d16_hi v56, v99 offset:192
	ds_load_u16_d16_hi v32, v99 offset:224
	ds_load_u16_d16_hi v49, v99 offset:416
	ds_load_u16_d16_hi v57, v99 offset:448
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v51, v99 offset:928
	ds_load_u16_d16_hi v35, v99 offset:992
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v52, v99 offset:1184
	ds_load_u16_d16_hi v36, v99 offset:1248
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v53, v99 offset:1440
	ds_load_u16_d16_hi v37, v99 offset:1504
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v54, v99 offset:1696
	ds_load_u16_d16_hi v38, v99 offset:1760
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v55, v99 offset:1952
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v39, v99 offset:2016
	ds_load_u16_d16_hi v72, v99 offset:2240
	ds_load_u16_d16 v65, v99 offset:2304
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v66
	v_mul_f32_e32 v7, v7, v66
	v_mul_f32_e32 v8, v8, v66
	v_mul_f32_e32 v9, v9, v66
	v_mul_f32_e32 v11, v11, v66
	v_mul_f32_e32 v12, v12, v66
	v_mul_f32_e32 v13, v13, v66
	v_mul_f32_e32 v14, v14, v66
	v_mul_f32_e32 v15, v15, v66
	v_mul_f32_e32 v25, v25, v66
	v_mul_f32_e32 v24, v24, v66
	v_mul_f32_e32 v26, v26, v66
	v_mul_f32_e32 v28, v28, v66
	v_mul_f32_e32 v30, v30, v66
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[32:39], v[157:164], v[0:7]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, v148, v151, s29
	v_cndmask_b32_e64 v33, v151, v148, s29
	v_cndmask_b32_e64 v34, v143, v152, s29
	v_cndmask_b32_e64 v35, v152, v143, s29
	v_cndmask_b32_e64 v36, v141, v153, s29
	ds_bpermute_b32 v32, v104, v32
	ds_bpermute_b32 v33, v105, v33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v66
	v_mul_f32_e32 v19, v19, v66
	v_mul_f32_e32 v21, v21, v66
	v_mul_f32_e32 v23, v23, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, v153, v141, s29
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[56:63], v[157:164], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, v146, v150, s29
	v_cndmask_b32_e64 v60, v150, v146, s29
	v_cndmask_b32_e64 v38, v144, v154, s29
	v_cndmask_b32_e64 v39, v154, v144, s29
	v_cndmask_b32_e64 v57, v140, v156, s29
	v_cndmask_b32_e64 v58, v156, v140, s29
	v_cndmask_b32_e64 v61, v147, v149, s29
	v_cndmask_b32_e64 v62, v149, v147, s29
	ds_bpermute_b32 v59, v104, v59
	ds_bpermute_b32 v60, v105, v60
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v66
	v_mul_f32_e32 v22, v22, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, v155, v145, s29
	ds_bpermute_b32 v34, v104, v34
	ds_bpermute_b32 v35, v105, v35
	ds_bpermute_b32 v36, v104, v36
	ds_bpermute_b32 v37, v105, v37
	ds_bpermute_b32 v38, v104, v38
	ds_bpermute_b32 v39, v105, v39
	ds_bpermute_b32 v57, v104, v57
	ds_bpermute_b32 v58, v105, v58
	ds_bpermute_b32 v61, v104, v61
	ds_bpermute_b32 v62, v105, v62
	.loc	1 886 62                        ; attention.py:886:62
	s_waitcnt lgkmcnt(12)
	v_dual_sub_f32 v63, v148, v142 :: v_dual_cndmask_b32 v148, v33, v32
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[48:55], v[157:164], v[16:23]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, v145, v155, s29
	ds_bpermute_b32 v56, v105, v56
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v66
	v_mul_f32_e32 v29, v29, v66
	v_mul_f32_e32 v31, v31, v66
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v51, v104, v51
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v137, v137
	v_dual_mov_b32 v50, v138 :: v_dual_sub_f32 v137, v143, v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v146, v142
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e32 v146, v35, v34, vcc_lo
	s_waitcnt lgkmcnt(8)
	v_dual_cndmask_b32 v34, v34, v35 :: v_dual_cndmask_b32 v35, v37, v36
	s_waitcnt lgkmcnt(6)
	v_dual_cndmask_b32 v36, v36, v37 :: v_dual_cndmask_b32 v37, v39, v38
	v_cndmask_b32_e32 v38, v38, v39, vcc_lo
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e32 v39, v58, v57, vcc_lo
	v_dual_cndmask_b32 v57, v57, v58 :: v_dual_cndmask_b32 v58, v60, v59
	v_dual_cndmask_b32 v59, v59, v60 :: v_dual_max_f32 v60, v33, v33
	s_waitcnt lgkmcnt(2)
	v_dual_cndmask_b32 v150, v62, v61 :: v_dual_sub_f32 v143, v147, v142
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v147, v32, v32
.Ltmp13:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v32, v32, v33, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v33, v56, v51, vcc_lo
	v_cndmask_b32_e32 v149, v51, v56, vcc_lo
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v51, v56, v39
	v_max_f32_e32 v60, v147, v60
	v_max3_f32 v147, v36, v37, v38
	v_max3_f32 v152, v34, v58, v59
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v151, v61, v62, vcc_lo
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v61, v61, v62, v35
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v147, v56, v57
	v_max3_f32 v60, v60, v146, v152
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v140, v140, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v53.h, v139.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v49, v136, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v52.h, v139.h
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v56, v60, v61, v56
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v140
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v54.h, v139.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v140, v137, 0, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v55.h, v139.h
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v56
	v_mov_b32_e32 v51, v142
.Ltmp23:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[40:47], v[157:164], v[24:31]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v139.l, v140.h
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v142
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, v62, 0, s25
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v40, v99 offset:2080
	ds_load_u16_d16 v165, v99 offset:2144
	ds_load_u16_d16 v73, v99 offset:2368
	ds_load_u16_d16 v76, v99 offset:3136
	ds_load_u16_d16 v77, v99 offset:3392
	ds_load_u16_d16 v69, v99 offset:3328
	ds_load_u16_d16 v70, v99 offset:3584
	ds_load_u16_d16 v78, v99 offset:3648
	ds_load_u16_d16 v71, v99 offset:3840
	ds_load_u16_d16 v79, v99 offset:3904
	ds_load_u16_d16 v66, v99 offset:2560
	ds_load_u16_d16 v74, v99 offset:2624
	ds_load_u16_d16 v67, v99 offset:2816
	ds_load_u16_d16 v75, v99 offset:2880
	ds_load_u16_d16 v167, v99 offset:2656
	ds_load_u16_d16 v68, v99 offset:3072
	ds_load_u16_d16 v168, v99 offset:2912
	ds_load_u16_d16 v166, v99 offset:2400
	ds_load_u16_d16 v170, v99 offset:3424
	ds_load_u16_d16 v171, v99 offset:3680
	ds_load_u16_d16 v47, v99 offset:3872
	ds_load_u16_d16 v172, v99 offset:3936
	ds_load_u16_d16 v169, v99 offset:3168
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v76, v99 offset:3264
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v77, v99 offset:3520
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v69, v99 offset:3456
	ds_load_u16_d16 v45, v99 offset:3360
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v78, v99 offset:3776
	ds_load_u16_d16_hi v70, v99 offset:3712
	ds_load_u16_d16 v46, v99 offset:3616
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v79, v99 offset:4032
	ds_load_u16_d16_hi v71, v99 offset:3968
	ds_load_u16_d16_hi v64, v99 offset:2176
	ds_load_u16_d16_hi v73, v99 offset:2496
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v66, v99 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v74, v99 offset:2752
	ds_load_u16_d16 v42, v99 offset:2592
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v67, v99 offset:2944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v75, v99 offset:3008
	ds_load_u16_d16 v43, v99 offset:2848
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v68, v99 offset:3200
	ds_load_u16_d16 v44, v99 offset:3104
	ds_load_u16_d16_hi v65, v99 offset:2432
	ds_load_u16_d16 v41, v99 offset:2336
	ds_load_u16_d16_hi v40, v99 offset:2208
	ds_load_u16_d16_hi v165, v99 offset:2272
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(2)
	ds_load_u16_d16_hi v41, v99 offset:2464
	ds_load_u16_d16_hi v166, v99 offset:2528
	ds_load_u16_d16_hi v42, v99 offset:2720
	ds_load_u16_d16_hi v167, v99 offset:2784
	ds_load_u16_d16_hi v43, v99 offset:2976
	ds_load_u16_d16_hi v168, v99 offset:3040
	ds_load_u16_d16_hi v44, v99 offset:3232
	ds_load_u16_d16_hi v169, v99 offset:3296
	ds_load_u16_d16_hi v45, v99 offset:3488
	ds_load_u16_d16_hi v170, v99 offset:3552
	ds_load_u16_d16_hi v46, v99 offset:3744
	ds_load_u16_d16_hi v171, v99 offset:3808
	ds_load_u16_d16_hi v47, v99 offset:4000
	ds_load_u16_d16_hi v172, v99 offset:4064
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, v138, 0, s26
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v56, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v53.l, v137.h
	v_cmp_o_f32_e64 s22, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v53, v137, v53, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v137, v48, v56
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v141, v141, v142
	v_sub_f32_e32 v145, v145, v142
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v48, v49, v56 :: v_dual_and_b32 v49, 1, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v137
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v150, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v144, v144
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v137
	v_sub_f32_e32 v32, v32, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v146, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v140, v140
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, v143, 0, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.l, v63.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, v145, 0, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v54.l, v141.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, v144, 0, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v63, v63
	v_and_b32_e32 v52, 1, v52
	v_mov_b16_e64 v55.l, v143.h
	v_and_b32_e32 v54, 1, v54
	v_mov_b16_e64 v139.l, v138.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v63, v52, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v137
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v140, v49, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v59, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s3
	v_and_b32_e32 v140, 1, v139
	v_mov_b16_e64 v139.l, v142.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v52.h, 0x7fff, v49.h, s21
	v_cmp_o_f32_e64 s23, v138, v138
	v_cmp_o_f32_e64 s26, v143, v143
	v_add3_u32 v55, v143, v55, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v148, v137
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v143, v136, v48
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v136
	v_mov_b32_e32 v136, v48
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v48, v138, v140, 0x7fff
	v_and_b32_e32 v49, 1, v139
	v_mov_b16_e64 v139.l, v60.h
	v_permlanex16_b32 v138, v52, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v58, s18
	v_cndmask_b32_e64 v59, 0, v59, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v53.h, 0x7fff, v48.h, s23
	v_add3_u32 v48, v142, v49, 0x7fff
	v_and_b32_e32 v49, 1, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v32, s9
	v_cndmask_b32_e64 v61, 0, v61, s7
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cndmask_b32_e64 v140, 0, v33, s20
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v32, v138, v52, v92
	v_perm_b32 v33, v138, v52, v93
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v58, v59 :: v_dual_sub_f32 v63, v151, v137
	v_add_f32_e32 v34, v61, v34
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v141, v141
	v_cmp_o_f32_e64 s25, v142, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v54, v141, v54, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v56, s11
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v60, v60
	v_cndmask_b16 v54.l, 0x7fff, v54.h, s24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.h, 0x7fff, v48.h, s25
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v48, v56, v139 :: v_dual_sub_f32 v37, v37, v137
.Ltmp33:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v63, s13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v57, v57, v137 :: v_dual_add_f32 v34, v48, v34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v56, v62, v63
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s10
	v_cndmask_b32_e64 v38, 0, v38, s6
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v48, v52, v56 :: v_dual_sub_f32 v141, v149, v137
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v55.l, 0x7fff, v55.h, s26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s8
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s17
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v35, v36 :: v_dual_add_f32 v36, v37, v38
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s19
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v37, v140, v141
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v39, v57
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v39, v60, v49, 0x7fff
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v143, v143
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v37, v38
	v_add_f32_e32 v38, v34, v48
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v53, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v55.h, 0x7fff, v39.h, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v36
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v34, v37, v53, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v39, v55, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v142, 0, v143, s3
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v38, v35
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v37, v53, v93
	v_permlanex16_b32 v37, v54, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v38, v39, v55, v92
	v_perm_b32 v39, v39, v55, v93
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v36, v37, v54, v92
	v_perm_b32 v37, v37, v54, v93
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v49, v49 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[64:71], v[32:39], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[32:39], v[16:23]
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v48, v49
.Ltmp55:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[72:79], v[32:39], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[165:172], v[32:39], v[0:7]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v138, v50, v142
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_7
.LBB0_6:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v138, 0
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
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v95, v138
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v94
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s39, v96
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s39, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s39, v36
	v_cmp_gt_i32_e64 s1, s39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s0, s39, v34
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
	v_div_scale_f32 v46, s7, v27, v37, v27
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
	v_div_scale_f32 v49, s8, v26, v37, v26
	v_fmac_f32_e32 v60, v59, v48
	v_fma_f32 v59, -v44, v63, v46
	v_fmac_f32_e32 v58, v57, v45
	v_fma_f32 v61, -v50, v56, 1.0
	v_div_scale_f32 v52, s9, v29, v37, v29
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
	v_div_scale_f32 v43, s10, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v48, v60
	s_mov_b32 vcc_lo, s7
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
	s_mov_b32 vcc_lo, s8
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
	s_mov_b32 vcc_lo, s9
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
	s_mov_b32 vcc_lo, s10
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
	v_div_scale_f32 v44, s7, v30, v37, v30
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
	v_cmp_o_f32_e64 s8, v26, v26
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
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s8
	v_cmp_o_f32_e64 s8, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s7, v16, v37, v16
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
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v41, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v17, v17
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
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s7, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v31, v31
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
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v40, s7, v22, v37, v22
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
	v_cmp_o_f32_e64 s8, v21, v21
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s7, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v20, v20
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
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v31, s7, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s8
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
	v_cmp_o_f32_e64 s8, v9, v9
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s7, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s7
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
	v_div_scale_f32 v28, s7, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v10, v10
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
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s7, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v12, v12
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
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s8
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
	v_cmp_o_f32_e64 s7, v13, v13
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
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s7
	v_cmp_o_f32_e64 s7, v0, v0
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
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s7
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
	v_div_scale_f32 v30, s7, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s8, v6, v37, v6
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
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s8
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
	v_cmp_o_f32_e64 s7, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s8
	v_cndmask_b32_e64 v4, v16, v25, s29
	v_cndmask_b32_e64 v5, v25, v16, s29
	v_cndmask_b32_e64 v16, v0, v9, s29
	v_cndmask_b32_e64 v0, v9, v0, s29
	v_cndmask_b32_e64 v3, v24, v26, s29
	v_cndmask_b32_e64 v6, v19, v17, s29
	v_cndmask_b32_e64 v7, v17, v19, s29
	v_cndmask_b32_e64 v10, v8, v18, s29
	v_cndmask_b32_e64 v8, v18, v8, s29
	v_cndmask_b32_e64 v15, v14, v11, s29
	v_cndmask_b32_e64 v11, v11, v14, s29
	v_cndmask_b32_e64 v14, v12, v22, s29
	v_cndmask_b32_e64 v12, v22, v12, s29
	v_cndmask_b32_e64 v17, v2, v13, s29
	v_cndmask_b32_e64 v2, v13, v2, s29
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s29
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v92
	v_perm_b32 v13, v13, v16, v93
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v92
	v_perm_b32 v1, v3, v1, v93
	v_perm_b32 v2, v5, v4, v92
	v_perm_b32 v3, v5, v4, v93
	v_perm_b32 v4, v7, v6, v92
	v_perm_b32 v5, v7, v6, v93
	v_perm_b32 v6, v8, v10, v92
	v_perm_b32 v7, v8, v10, v93
	v_perm_b32 v8, v9, v15, v92
	v_perm_b32 v9, v9, v15, v93
	v_perm_b32 v10, v11, v14, v92
	v_perm_b32 v11, v11, v14, v93
	v_perm_b32 v14, v18, v17, v92
	v_perm_b32 v15, v18, v17, v93
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
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 173
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 173
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13948
; TotalNumSgprs: 77
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 173
; Occupancy: 8
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     173
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
