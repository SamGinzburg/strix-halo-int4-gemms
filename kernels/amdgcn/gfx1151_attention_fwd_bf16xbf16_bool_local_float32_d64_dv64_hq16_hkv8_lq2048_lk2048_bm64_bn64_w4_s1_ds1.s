	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s10, s[0:1], 0x80
	s_load_b32 s91, s[0:1], 0x5c
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v69, 7, v0
	v_lshrrev_b32_e32 v49, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s90, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_load_b64 s[4:5], s[0:1], 0x0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v146, 3, v69
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v25, s90, v49
	.loc	1 787 26 is_stmt 1              ; attention.py:787:26
	s_add_i32 s88, s90, s2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v17, 4, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v25
	v_lshlrev_b32_e32 v74, 2, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v70, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v18, 0x70, v70
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[147:148], null, s91, v49, v[146:147]
	s_mul_i32 s8, s91, s88
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s67, s91, v146
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v17, v17, v18
	v_add_lshl_u32 v1, v147, s8, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 vcc_lo, s2, s67
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[148:149], null, s91, 48, v[147:148]
	v_lshl_add_u32 v155, s91, 4, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v156, s91, 5, v147
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v158, 0, v17
	v_add_lshl_u32 v2, v155, s8, 1
	v_add_lshl_u32 v4, v148, s8, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v3, v156, s8, 1
	s_load_b64 s[8:9], s[0:1], 0x78
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v13, 0x80000000, v4, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v3, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	buffer_load_b128 v[13:16], v13, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b128 v158, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v158, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v158, v[9:12] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v158, v[13:16] offset:6144
	.loc	1 805 17                        ; attention.py:805:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s90, s9
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s90, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s4, s4, s10
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s10
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s4, 64
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s92, s6, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	s_mov_b32 s4, 0
	.loc	1 808 34 is_stmt 0              ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 788 26                        ; attention.py:788:26
	s_barrier
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s93, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s93, s93, 63
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v26, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr26
.LBB0_3:                                ; %Flow190
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s89, s[0:1], 0x60
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v71, 0x78, v0
	v_and_b32_e32 v28, 15, v0
	v_and_b32_e32 v73, 0x60, v0
	v_and_b32_e32 v72, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v48, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v46, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v44, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v42, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v66, v8
	v_mov_b32_e32 v67, v8
	v_mov_b32_e32 v65, v8
	s_cbranch_vccnz .LBB0_71
; %bb.4:                                ; %.lr.ph
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, 16, v25
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s4, s4, 28
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 32, v25
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s11, s3, s4
	s_load_b128 s[4:7], s[0:1], 0x64
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v4, s10, v25
	v_add_nc_u32_e32 v1, s10, v1
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, s10, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 6, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v166, s8, v4
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v170, s9, v4
	v_dual_mov_b32 v45, v41 :: v_dual_lshlrev_b32 v4, 7, v28
	v_dual_mov_b32 v47, v41 :: v_dual_lshlrev_b32 v6, 4, v69
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 48, v25
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v167, s8, v1
	v_dual_mov_b32 v46, v41 :: v_dual_add_nc_u32 v171, s9, v1
	v_mov_b32_e32 v44, v41
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v1, v4, v5, v6
	v_dual_mov_b32 v42, v41 :: v_dual_add_nc_u32 v3, s10, v3
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v168, s8, v2
	v_dual_mov_b32 v17, v41 :: v_dual_add_nc_u32 v172, s9, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v2, 0x70, v1, 0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v169, s8, v3
	v_dual_mov_b32 v48, v41 :: v_dual_add_nc_u32 v173, s9, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v3, 0x60, v1, 0
	v_xad_u32 v5, 0x50, v1, 0
	v_xad_u32 v7, v1, 64, 0
	ds_load_b128 v[29:32], v2
	ds_load_b128 v[25:28], v3
	ds_load_b128 v[37:40], v5
	ds_load_b128 v[33:36], v7
	v_xad_u32 v2, v1, 48, 0
	v_xad_u32 v3, v1, 32, 0
	v_xad_u32 v5, v1, 16, 0
	v_dual_mov_b32 v18, v41 :: v_dual_add_nc_u32 v7, 0, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s7, v49
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v159, 1, v146
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[53:56], v2
	ds_load_b128 v[49:52], v3
	ds_load_b128 v[61:64], v5
	ds_load_b128 v[57:60], v7
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 1, v71
	v_or_b32_e32 v160, 2, v146
	v_or_b32_e32 v161, 3, v146
	v_or_b32_e32 v162, 4, v146
	v_mov_b32_e32 v182, 0xff800000
	v_mad_u64_u32 v[2:3], null, s7, 48, v[1:2]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v3, v1, v159
	v_mad_u64_u32 v[149:150], null, s89, v65, v[146:147]
	v_mov_b32_e32 v150, 0xff800000
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v163, 5, v146
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v184, 0xff800000 :: v_dual_add_nc_u32 v3, v1, v160
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v164, 6, v146
	v_mov_b32_e32 v192, 0xff800000
	v_or_b32_e32 v165, 7, v146
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:4 ; 4-byte Folded Spill
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v3, v1, v161
	v_or_b32_e32 v174, v6, v4
	v_lshl_add_u32 v4, s7, 4, v1
	v_mov_b32_e32 v188, 0xff800000
	scratch_store_b32 off, v3, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v1, v162
	v_lshl_add_u32 v5, s7, 5, v1
	v_mov_b32_e32 v186, 0xff800000
	v_mov_b32_e32 v20, v41
	v_mov_b32_e32 v22, v41
	scratch_store_b32 off, v3, off offset:12 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v1, v163
	v_bfe_i32 v7, v0, 0, 1
	v_dual_mov_b32 v24, v41 :: v_dual_lshlrev_b32 v9, 3, v0
	v_and_b32_e32 v10, 8, v0
	scratch_store_b32 off, v3, off offset:16 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v1, v164
	v_lshlrev_b32_e32 v11, 6, v72
	v_and_b32_e32 v9, 0x310, v9
	v_lshlrev_b32_e32 v8, 5, v0
	v_dual_mov_b32 v13, v41 :: v_dual_lshlrev_b32 v12, 2, v73
	scratch_store_b32 off, v3, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v1, v165
	v_add_nc_u32_e32 v1, v1, v146
	v_lshl_or_b32 v10, v10, 4, v11
	v_bfe_i32 v11, v0, 3, 1
	v_mov_b32_e32 v14, v41
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:24
	scratch_store_b32 off, v1, off offset:92
	v_add_nc_u32_e32 v3, v4, v146
	v_add_nc_u32_e32 v1, v5, v146
	v_mov_b32_e32 v16, v41
	s_clause 0x1
	s_load_b128 s[80:83], s[0:1], 0x8
	s_load_b64 s[78:79], s[0:1], 0x30
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s11, -16
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v159
	v_dual_mov_b32 v19, v41 :: v_dual_and_b32 v8, 0x60, v8
	v_mov_b32_e32 v15, v41
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s0, s3, s0
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v160
	v_mov_b32_e32 v21, v41
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s0, 0x10007
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s3, s11, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s0, s1
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v161
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s0, s6, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s1, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v207, v5, v161
	scratch_store_b32 off, v3, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v162
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v208, v5, v162
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s94, s1, 0xfffff800
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s1, s5, s3
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v163
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s96, s0, s1
	v_cmp_eq_u32_e64 s0, 0, v72
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v209, v5, v163
	v_add_nc_u32_e32 v210, v5, v164
	scratch_store_b32 off, v3, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v164
	v_add_nc_u32_e32 v211, v5, v165
	v_mov_b32_e32 v43, v41
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s11, s3, 14
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s95, s4, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v4, v165
	v_dual_mov_b32 v23, v41 :: v_dual_add_nc_u32 v4, v2, v161
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s7, s90
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s68, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:56
	scratch_store_b32 off, v4, off offset:72
	v_add_nc_u32_e32 v3, v2, v146
	v_add_nc_u32_e32 v4, v2, v162
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s94, s94, s11
	.loc	1 818 13                        ; attention.py:818:13
	scratch_store_b32 off, v3, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v2, v159
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s81, 0xffff
	s_add_i32 s96, s96, s3
	s_lshl_b32 s97, s89, 1
	s_mul_i32 s98, s89, 3
	scratch_store_b32 off, v3, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, v2, v160
	s_and_b32 s85, s83, 0xffff
	s_mov_b32 s84, s82
	s_mov_b32 s82, s86
	s_mov_b32 s83, s87
	scratch_store_b32 off, v3, off offset:68 ; 4-byte Folded Spill
	v_bfe_i32 v3, v0, 2, 1
	v_mov_b32_e32 v193, 0xff800000
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	v_and_b32_e32 v3, 0x2040, v3
	v_mov_b32_e32 v191, v41
	v_mov_b32_e32 v183, 0xff800000
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	v_and_or_b32 v3, 0x1020, v7, v3
	v_bfe_i32 v7, v0, 5, 1
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s99, 0x76543210
	v_or3_b32 v195, v3, v10, v9
	v_and_b32_e32 v7, 0x2040, v7
	v_add_nc_u32_e32 v3, v2, v163
	scratch_store_b32 off, v4, off offset:76 ; 4-byte Folded Spill
	v_and_b32_e32 v4, 28, v0
	v_dual_mov_b32 v10, v41 :: v_dual_and_b32 v9, 0x80, v70
	scratch_store_b32 off, v3, off offset:80 ; 4-byte Folded Spill
	v_and_or_b32 v3, 0x1020, v11, v7
	v_lshl_or_b32 v12, v4, 7, v12
	v_and_b32_e32 v7, 4, v0
	v_mov_b32_e32 v189, v41
	v_mov_b32_e32 v187, v41
	v_xor_b32_e32 v3, v3, v8
	v_or3_b32 v197, v12, v8, v4
	v_and_b32_e32 v4, 0x7c, v74
	v_add_nc_u32_e32 v8, v2, v164
	v_add_nc_u32_e32 v2, v2, v165
	v_lshl_add_u32 v7, v7, 9, 0
	v_mov_b32_e32 v12, v41
	v_lshl_or_b32 v4, v73, 4, v4
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:84
	scratch_store_b32 off, v2, off offset:88
	v_lshrrev_b32_e32 v2, 3, v73
	v_add3_u32 v3, v7, v9, v3
	v_mov_b32_e32 v7, 0x5410
	v_dual_mov_b32 v8, 0x7632 :: v_dual_mov_b32 v9, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v202, v4, v2
	v_xor_b32_e32 v4, v6, v71
	v_and_b32_e32 v6, 0x410, v11
	v_cndmask_b32_e64 v2, 0x3276, v8, s0
	v_dual_mov_b32 v11, v41 :: v_dual_add_nc_u32 v232, v3, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v203, v69, 10, v4
	v_add_nc_u32_e32 v4, v5, v159
	scratch_store_b32 off, v1, off offset:96 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v1, 0x1054, v7, s0
	v_lshl_or_b32 v2, v2, 8, v2
	v_mul_u32_u24_e32 v7, 0x90, v69
	scratch_store_b32 off, v4, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, v5, v160
	v_lshl_or_b32 v1, v1, 8, v1
	v_and_b32_e32 v2, 0x760076, v2
	v_xor_b32_e32 v5, 0x60, v174
	v_xor_b32_e32 v205, v7, v6
	scratch_store_b32 off, v4, off offset:104 ; 4-byte Folded Spill
	v_and_b32_e32 v1, 0x540054, v1
	v_lshl_or_b32 v2, v2, 4, v2
	v_xor_b32_e32 v4, 32, v174
	v_add_nc_u32_e32 v219, 0, v5
	v_xor_b32_e32 v5, 20, v197
	v_lshl_or_b32 v1, v1, 4, v1
	v_and_b32_e32 v213, 0x7060706, v2
	v_xor_b32_e32 v2, 64, v174
	v_add_nc_u32_e32 v215, 0, v4
	v_xor_b32_e32 v4, 0x50, v174
	v_and_b32_e32 v212, 0x5040504, v1
	v_xor_b32_e32 v1, 16, v174
	v_add_nc_u32_e32 v217, 0, v2
	v_xor_b32_e32 v2, 4, v197
	v_add_nc_u32_e32 v218, 0, v4
	v_xor_b32_e32 v4, 16, v197
	v_add_nc_u32_e32 v214, 0, v1
	v_xor_b32_e32 v1, 48, v174
	v_add_nc_u32_e32 v222, 0, v2
	v_xor_b32_e32 v2, 12, v197
	v_add_nc_u32_e32 v225, 0, v4
	v_xor_b32_e32 v4, 64, v195
	v_dual_mov_b32 v185, v41 :: v_dual_add_nc_u32 v216, 0, v1
	v_xor_b32_e32 v1, 0x810, v202
	v_add_nc_u32_e32 v224, 0, v2
	v_xor_b32_e32 v2, 28, v197
	v_add_nc_u32_e32 v226, 0, v5
	v_xor_b32_e32 v5, 0x60, v195
	v_add_nc_u32_e32 v221, 0, v1
	v_xor_b32_e32 v1, 8, v197
	v_add_nc_u32_e32 v228, 0, v2
	v_xor_b32_e32 v2, 0x90, v203
	v_add_nc_u32_e32 v230, 0, v4
	v_xor_b32_e32 v3, 0x240, v203
	v_add_nc_u32_e32 v223, 0, v1
	v_xor_b32_e32 v1, 24, v197
	v_add_nc_u32_e32 v194, 0, v2
	v_xor_b32_e32 v2, 0x1b0, v203
	v_xor_b32_e32 v4, 0x2d0, v203
	v_add_nc_u32_e32 v231, 0, v5
	v_add_nc_u32_e32 v227, 0, v1
	v_xor_b32_e32 v1, 32, v195
	v_xor_b32_e32 v5, 0x360, v203
	v_add_nc_u32_e32 v198, 0, v2
	v_add_nc_u32_e32 v199, 0, v3
	v_add_nc_u32_e32 v200, 0, v4
	v_add_nc_u32_e32 v229, 0, v1
	v_xor_b32_e32 v1, 0x120, v203
	v_xor_b32_e32 v2, 16, v205
	v_xor_b32_e32 v3, 32, v205
	v_xor_b32_e32 v4, 48, v205
	v_add_nc_u32_e32 v201, 0, v5
	v_add_nc_u32_e32 v196, 0, v1
	v_xor_b32_e32 v1, 0x3f0, v203
	v_xor_b32_e32 v5, 64, v205
	v_add_nc_u32_e32 v206, 0, v2
	v_add_nc_u32_e32 v241, 0, v3
	v_add_nc_u32_e32 v242, 0, v4
	v_add_nc_u32_e32 v204, 0, v1
	v_xor_b32_e32 v1, 0x50, v205
	v_xor_b32_e32 v2, 0x60, v205
	v_xor_b32_e32 v3, 0x70, v205
	v_xor_b32_e32 v4, 0x820, v205
	v_add_nc_u32_e32 v243, 0, v5
	v_xor_b32_e32 v5, 0x830, v205
	v_add_nc_u32_e32 v244, 0, v1
	v_add_nc_u32_e32 v245, 0, v2
	v_add_nc_u32_e32 v246, 0, v3
	v_add_nc_u32_e32 v247, 0, v4
	v_xor_b32_e32 v1, 0x810, v205
	v_xor_b32_e32 v2, 0x860, v205
	v_xor_b32_e32 v3, 0x870, v205
	v_xor_b32_e32 v4, 0x840, v205
	v_add_nc_u32_e32 v248, 0, v5
	v_xor_b32_e32 v5, 0x850, v205
	v_add_nc_u32_e32 v249, 0, v1
	v_add_nc_u32_e32 v250, 0, v2
	v_add_nc_u32_e32 v251, 0, v3
	v_add_nc_u32_e32 v252, 0, v4
	v_xor_b32_e32 v1, 0x1040, v205
	v_xor_b32_e32 v2, 0x1050, v205
	v_xor_b32_e32 v3, 0x1060, v205
	v_xor_b32_e32 v4, 0x1070, v205
	v_add_nc_u32_e32 v253, 0, v5
	v_xor_b32_e32 v5, 0x1010, v205
	v_add_nc_u32_e32 v254, 0, v1
	v_add_nc_u32_e32 v255, 0, v2
	v_add_nc_u32_e32 v157, 0, v3
	v_add_nc_u32_e32 v152, 0, v4
	v_xor_b32_e32 v1, 0x1020, v205
	v_xor_b32_e32 v2, 0x1030, v205
	v_xor_b32_e32 v3, 0x1860, v205
	v_xor_b32_e32 v4, 0x1870, v205
	v_xor_b32_e32 v6, 0x70, v174
	v_add_nc_u32_e32 v151, 0, v5
	v_xor_b32_e32 v5, 0x1840, v205
	v_add_nc_u32_e32 v153, 0, v1
	v_add_nc_u32_e32 v154, 0, v2
	v_add_nc_u32_e32 v175, 0, v3
	v_add_nc_u32_e32 v176, 0, v4
	v_xor_b32_e32 v1, 0x1850, v205
	v_xor_b32_e32 v2, 0x1820, v205
	v_xor_b32_e32 v3, 0x1830, v205
	v_xor_b32_e32 v4, 0x1810, v205
	v_add_nc_u32_e32 v220, 0, v6
	v_add_nc_u32_e32 v177, 0, v5
	v_add_nc_u32_e32 v178, 0, v1
	v_add_nc_u32_e32 v179, 0, v2
	v_add_nc_u32_e32 v180, 0, v3
	v_add_nc_u32_e32 v181, 0, v4
	v_mov_b32_e32 v1, v41
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e32 vcc_lo, s89, v146
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 65 is_stmt 0                ; attention.py:0:65
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v115, s95, v91 :: v_dual_mul_f32 v116, s95, v92
	v_dual_mul_f32 v117, s95, v93 :: v_dual_mul_f32 v94, s95, v94
	v_dual_mul_f32 v91, s95, v81 :: v_dual_mul_f32 v92, s95, v82
	v_dual_mul_f32 v93, s95, v83 :: v_dual_mul_f32 v82, s95, v85
	v_dual_mul_f32 v81, s95, v84 :: v_dual_mul_f32 v84, s95, v87
	v_dual_mul_f32 v83, s95, v86 :: v_dual_mul_f32 v86, s95, v76
	v_dual_mul_f32 v87, s95, v77 :: v_dual_mul_f32 v76, s95, v79
	v_dual_mul_f32 v77, s95, v80 :: v_dual_mul_f32 v80, s95, v67
	v_mul_f32_e32 v79, s95, v66
	v_dual_mul_f32 v67, s95, v68 :: v_dual_mul_f32 v66, s95, v70
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v98.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v68, s95, v71 :: v_dual_mul_f32 v85, s95, v88
	v_dual_mul_f32 v74, s95, v74 :: v_dual_mul_f32 v73, s95, v73
	v_mul_f32_e32 v88, s95, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s0, 0, v70.l
	v_and_b16 v70.l, 0xff, v99.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s95, v75 :: v_dual_mul_f32 v78, s95, v65
	v_mul_f32_e32 v65, s95, v69
	v_mul_f32_e32 v69, s95, v72
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v70.l
	v_and_b16 v70.l, 0xff, v102.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s13, s5, s0
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v113, s95, v89 :: v_dual_mul_f32 v114, s95, v90
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s11, s6, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v100.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v89, s95, v95 :: v_dual_mul_f32 v90, s95, v96
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_and_b32 s7, s7, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s7
	s_barrier
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s92, s92, 64
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, s8, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s9
	v_or_b16 v72.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s11
	v_cndmask_b32_e64 v71, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_or_b16 v72.l, v71.l, v70.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v102.h
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v104.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s5, s10, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v70.l
	v_and_b16 v70.l, 0xff, v106.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s4, s12, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s0, 0, v70.l
	v_and_b16 v70.l, 0xff, v104.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s0, s15, s0
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s1, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s0
	s_and_b32 s1, s14, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s1
	v_or_b16 v95.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s4
	v_cndmask_b32_e64 v71, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_or_b16 v95.l, v71.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v106.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v108.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s17, s17, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v70.l
	v_and_b16 v70.l, 0xff, v110.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s16, s16, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v70.l
	v_and_b16 v70.l, 0xff, v108.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s14, s19, s8
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s14
	s_and_b32 s15, s18, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s15
	v_or_b16 v96.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s16
	v_cndmask_b32_e64 v71, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_or_b16 v96.l, v71.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v110.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s3, 0, v70.l
	s_waitcnt vmcnt(0)
	v_and_b16 v70.l, 0xff, v111.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, s20, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v70.l
	v_and_b16 v70.l, 0xff, v112.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s10, s25, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v70.l
	v_and_b16 v70.l, 0xff, v112.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s6, s29, s6
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s6
	s_and_b32 s8, s27, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s8
	v_or_b16 v70.h, v71.l, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v70.l, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s12
	v_lshlrev_b16 v70.l, 8, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v70.l, v71.l, v70.l
	v_add_nc_u32_e32 v71, 0, v202
	ds_store_2addr_b32 v71, v72, v95 offset1:32
	ds_store_2addr_b32 v71, v96, v70 offset0:64 offset1:96
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v97.l
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v97.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s29, s21, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v70.l
	v_and_b16 v70.l, 0xff, v99.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s27, s22, s18
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v70.l
	v_and_b16 v70.l, 0xff, v98.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s23, s23, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s23
	s_and_b32 s25, s24, s20
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v72.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s27
	v_cndmask_b32_e64 v71, 0, 1, s29
	v_lshlrev_b16 v70.l, 8, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v72.l, v71.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v100.l
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v101.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s21, s26, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v70.l
	v_and_b16 v70.l, 0xff, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s20, s28, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v70.l
	v_and_b16 v70.l, 0xff, v101.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s18, s31, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s18
	s_and_b32 s19, s30, s19
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v95.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s20
	v_cndmask_b32_e64 v71, 0, 1, s21
	v_lshlrev_b16 v70.l, 8, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v95.l, v71.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v103.h
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v105.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s34, s34, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v70.l
	v_and_b16 v70.l, 0xff, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s33, s33, s22
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v70.l
	v_and_b16 v70.l, 0xff, v105.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s30, s36, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s30
	s_and_b32 s31, s35, s26
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v96.h, v71.l, v70.l
	v_cndmask_b32_e64 v70, 0, 1, s33
	v_cndmask_b32_e64 v71, 0, 1, s34
	v_lshlrev_b16 v70.l, 8, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v96.l, v71.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v70.l, 0xff, v107.h
	v_cmp_ne_u16_e64 s3, 0, v70.l
	v_and_b16 v70.l, 0xff, v109.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, s37, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v70.l
	v_and_b16 v70.l, 0xff, v111.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, s38, s26
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s22, 0, v70.l
	v_and_b16 v70.l, 0xff, v109.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s22, s40, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v70.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v70, 0, 1, s22
	s_and_b32 s24, s39, s24
	v_lshlrev_b16 v70.l, 8, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s24
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s92, s93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v70.h, v71.l, v70.l
	v_cndmask_b32_e64 v71, 0, 1, s26
	v_mov_b16_e32 v70.l, v71.l
	v_cndmask_b32_e64 v71, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v70.l, 8, v70.l
	v_or_b16 v70.l, v71.l, v70.l
	ds_store_2addr_b32 v221, v72, v95 offset1:32
	ds_store_2addr_b32 v221, v96, v70 offset0:64 offset1:96
	v_add_nc_u32_e32 v70, 0, v197
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v71, v70
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s61, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v113, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	v_cmp_eq_u16_e64 s62, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v114, s62
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s59, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v222
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v115, s59
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s60, 0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v116, s60
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	v_cmp_eq_u32_e64 s64, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v117, s64
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s66, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v94, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s63, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v223
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v89, s63
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s65, 0, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v90, s65
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s56, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, 0xff800000, v91, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	v_cmp_eq_u16_e64 s58, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v92, s58
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s52, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v224
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v93, s52
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s55, 0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v81, s55
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	v_cmp_eq_u32_e64 s54, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v82, s54
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s57, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, 0xff800000, v83, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s51, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v225
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v84, s51
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s53, 0, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v85, s53
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s46, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v73, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	v_cmp_eq_u16_e64 s47, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v74, s47
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s42, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v226
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v75, s42
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s44, 0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v86, s44
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	v_cmp_eq_u32_e64 s41, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v87, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s45, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v88, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s40, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v227
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v76, s40
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s43, 0, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v77, s43
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v70, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s38, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v78, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	v_cmp_eq_u16_e64 s39, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v79, s39
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s35, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	ds_load_b32 v71, v228
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v84, 0xff800000, v80, s35
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s37, 0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v67, s37
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v70, 1, v71
	v_cmp_eq_u32_e64 s36, 1, v70
	v_lshrrev_b16 v70.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v65, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v70.l, 1, v70.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v195
	ds_store_b128 v65, v[130:133]
	ds_store_b128 v65, v[102:105] offset:2048
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s50, 1, v70.l
	v_and_b32_e32 v70, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v66, s50
	v_mad_u64_u32 v[65:66], null, s100, s89, v[149:150]
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s48, 0, v70
	v_and_b32_e32 v70, 0x1000000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v68, s48
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, v65, s97, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s49, 0, v70
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v67, 1, v65
	v_add_lshl_u32 v68, v65, s89, 1
	v_add_lshl_u32 v65, v65, s98, 1
	v_cndmask_b32_e32 v66, 0x80000000, v66, vcc_lo
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, 0xff800000, v69, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_cndmask_b32 v67, 0x80000000, v67 :: v_dual_cndmask_b32 v68, 0x80000000, v68
	v_cndmask_b32_e32 v69, 0x80000000, v65, vcc_lo
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v229, v[134:137]
	ds_store_b128 v229, v[106:109] offset:2048
	ds_store_b128 v230, v[122:125]
	ds_store_b128 v230, v[82:85] offset:2048
	ds_store_b128 v231, v[126:129]
	ds_store_b128 v231, v[118:121] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[142:145], v66, s[84:87], 0 offen
	buffer_load_b128 v[138:141], v67, s[84:87], 0 offen
	buffer_load_b128 v[65:68], v68, s[84:87], 0 offen
	buffer_load_b128 v[70:73], v69, s[84:87], 0 offen
	v_add_nc_u32_e32 v69, 0, v203
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[110:113], v232 offset:1024
	ds_load_b128 v[114:117], v232
	ds_load_b128 v[94:97], v232 offset:1280
	ds_load_b128 v[98:101], v232 offset:256
	ds_load_b128 v[86:89], v232 offset:1536
	ds_load_b128 v[90:93], v232 offset:512
	ds_load_b128 v[74:77], v232 offset:1792
	ds_load_b128 v[78:81], v232 offset:768
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v234.l, v142.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v233.l, v138.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v233.h, v65.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v234.h, v70.l
	v_mov_b16_e64 v65.l, v138.h
	v_mov_b16_e64 v70.l, v142.h
	v_mov_b16_e64 v138.h, v67.l
	v_mov_b16_e64 v67.l, v140.h
	ds_store_b64 v69, v[233:234]
	v_mov_b16_e64 v233.h, v66.l
	v_mov_b32_e32 v69, v65
	v_mov_b16_e64 v66.l, v139.h
	v_mov_b16_e64 v234.l, v143.l
	v_mov_b16_e64 v234.h, v71.l
	v_mov_b16_e64 v233.l, v139.l
	ds_store_b64 v194, v[69:70]
	ds_store_b64 v196, v[233:234]
	v_mov_b16_e64 v71.l, v143.h
	v_mov_b32_e32 v70, v66
	v_mov_b16_e64 v139.l, v144.l
	v_mov_b16_e64 v139.h, v72.l
	v_mov_b16_e64 v138.l, v140.l
	v_mov_b16_e32 v66.h, v73.l
	v_mov_b16_e64 v73.l, v145.h
	ds_store_b64 v198, v[70:71]
	ds_store_b64 v199, v[138:139]
	v_mov_b16_e64 v72.l, v144.h
	v_mov_b32_e32 v71, v67
	v_mov_b16_e64 v66.l, v145.l
	v_mov_b16_e64 v65.l, v141.l
	v_mov_b16_e32 v65.h, v68.l
	v_mov_b32_e32 v69, v73
	v_mov_b16_e64 v68.l, v141.h
	ds_store_b64 v200, v[71:72]
	ds_store_b64 v201, v[65:66]
	ds_store_b64 v204, v[68:69]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v123, v124, v125
	v_max3_f32 v66, v126, v127, v128
	v_max3_f32 v67, v129, v102, v103
	v_max3_f32 v68, v82, v83, v84
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v71.h, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v66, v67
	v_max3_f32 v66, v104, v105, v106
	v_max3_f32 v67, v107, v108, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v66, v67, v68
	v_max_f32_e32 v67, v130, v131
	v_max3_f32 v68, v133, v134, v135
	v_max3_f32 v67, v67, v132, v68
	v_max3_f32 v68, v136, v137, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v67, v68, v65
	v_dual_max_f32 v67, v85, v118 :: v_dual_max_f32 v68, v120, v121
	v_max3_f32 v67, v67, v119, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v65, v65, v66, v67
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v73, v193, v65, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v131, v73
	v_sub_f32_e32 v65, v130, v73
	v_sub_f32_e32 v68, v133, v73
	v_sub_f32_e32 v67, v132, v73
	v_sub_f32_e32 v69, v134, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s62
	v_cndmask_b32_e64 v65, 0, v65, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v135, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s61, v65, v65
	v_and_b32_e32 v131, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v131, v66, v131, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v66.h, v71.h
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v131.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v131, v66, v65, v212
	v_perm_b32 v132, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v125, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v65, v65
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v71.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v136, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s59, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s59
	v_mov_b16_e32 v67.h, v71.h
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v133, v66, v65, v212
	v_perm_b32 v134, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v70
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v127, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v137, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s59, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s59
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v66, v65, v212
	v_perm_b32 v136, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v130
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v130, 0, v205
	ds_load_b128 v[233:236], v130
	ds_load_b128 v[237:240], v206
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v72, v128, v73
	v_sub_f32_e32 v128, v129, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s59, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v193
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v124, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v137, v66, v65, v212
	v_perm_b32 v138, v66, v65, v213
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v65, v193, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v66, v123, v73 :: v_dual_mov_b32 v193, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v65, v65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v65, 0, v65, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s58
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v41, v41, v65
	v_mul_f32_e32 v42, v42, v65
	v_mul_f32_e32 v43, v43, v65
	v_mul_f32_e32 v44, v44, v65
	v_mul_f32_e32 v45, v45, v65
	v_mul_f32_e32 v46, v46, v65
	v_mul_f32_e32 v47, v47, v65
	v_mul_f32_e32 v48, v48, v65
	v_mul_f32_e32 v17, v17, v65
	v_mul_f32_e32 v18, v18, v65
	v_mul_f32_e32 v19, v19, v65
	v_mul_f32_e32 v20, v20, v65
	v_mul_f32_e32 v21, v21, v65
	v_mul_f32_e32 v22, v22, v65
	v_mul_f32_e32 v23, v23, v65
	v_mul_f32_e32 v24, v24, v65
	v_mul_f32_e32 v9, v9, v65
	v_mul_f32_e32 v10, v10, v65
	v_mul_f32_e32 v11, v11, v65
	v_mul_f32_e32 v12, v12, v65
	v_mul_f32_e32 v13, v13, v65
	v_mul_f32_e32 v14, v14, v65
	v_mul_f32_e32 v15, v15, v65
	v_mul_f32_e32 v16, v16, v65
	v_mul_f32_e32 v1, v1, v65
	v_mul_f32_e32 v2, v2, v65
	v_mul_f32_e32 v3, v3, v65
	v_mul_f32_e32 v4, v4, v65
	v_mul_f32_e32 v5, v5, v65
	v_mul_f32_e32 v6, v6, v65
	v_mul_f32_e32 v7, v7, v65
	v_mul_f32_e32 v8, v8, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v122, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v126, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v66, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v122, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v122, v66, v122, 0x7fff
	v_mov_b16_e32 v66.h, v71.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s56, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v122.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s56
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v122, v66, v65, v212
	v_perm_b32 v123, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v105, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s52
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v124, v66, v65, v212
	v_perm_b32 v125, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v70
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v107, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v65, v65
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v69
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v106, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s52, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s52
	v_mov_b16_e32 v67.h, v71.h
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v126, v66, v65, v212
	v_perm_b32 v127, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v128
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v72, v108, v73
	v_sub_f32_e32 v108, v109, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s51, v65, v65
	v_and_b32_e32 v67, 1, v67
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[233:240], v[131:138], v[41:48]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[233:236], v247
	ds_load_b128 v[237:240], v248
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s51
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v104, v73
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v128, v66, v65, v212
	v_perm_b32 v129, v66, v65, v213
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v103, v73
	v_sub_f32_e32 v65, v102, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v66.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s46, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v102, 1, v71
	v_add3_u32 v102, v66, v102, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v66.h, v71.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v102.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s46
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v102, v66, v65, v212
	v_perm_b32 v103, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v68, v85, v73
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v95, v100, v96
.Ltmp7:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s3, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s42, v65, v65
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s42
	v_mov_b16_e32 v67.h, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v104, v66, v65, v212
	v_perm_b32 v105, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v70
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v119, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s50
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v69
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v118, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s41, v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s41
	v_mov_b16_e32 v67.h, v71.h
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_perm_b32 v106, v66, v65, v212
	v_perm_b32 v107, v66, v65, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v65.h
	v_cmp_o_f32_e64 s3, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v71
	v_add3_u32 v66, v65, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v72, v120, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v67.l, v65.h
	v_cmp_o_f32_e64 s40, v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v84, v73
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v101, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v66, v65, s99, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v108, v66, v65, v212
	v_perm_b32 v109, v66, v65, v213
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v83, v73
	v_sub_f32_e32 v65, v82, v73
	v_sub_f32_e32 v82, v121, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v82, v82
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v67, v67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s39
	v_cndmask_b32_e64 v65, 0, v65, s38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v82, 0, v82, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.l, v66.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v66, v66
	v_cmp_o_f32_e64 s38, v65, v65
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v83, 1, v71
	v_mov_b16_e32 v71.l, v68.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[233:240], v[131:138], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[233:236], v254
	ds_load_b128 v[237:240], v255
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v83, v66, v83, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e32 v66.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s3
	v_cmp_o_f32_e64 s3, v68, v68
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v66.h, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v83, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v83, v212
	v_perm_b32 v66, v66, v83, v213
	v_and_b32_e32 v83, 1, v71
	v_mov_b16_e32 v71.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v83, v68, v83, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e32 v68.h, v71.h
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s3
	v_cmp_o_f32_e64 s3, v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v68.h, s35
	v_cmp_o_f32_e64 s35, v69, v69
	v_permlanex16_b32 v68, v83, s99, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v68, v83, v212
	v_perm_b32 v68, v68, v83, v213
	v_and_b32_e32 v83, 1, v71
	v_mov_b16_e32 v71.l, v82.h
	v_add3_u32 v83, v70, v83, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e32 v70.h, v71.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s3
	v_cmp_o_f32_e64 s3, v82, v82
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v70.h, s35
	v_cmp_o_f32_e64 s35, v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v83, s99, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v83, v212
	v_perm_b32 v70, v70, v83, v213
	v_and_b32_e32 v83, 1, v71
	v_mov_b16_e32 v71.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v83, v82, v83, 0x7fff
	v_and_b32_e32 v71, 1, v71
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[233:240], v[131:138], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[233:236], v175
	ds_load_b128 v[237:240], v176
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v71, v72, v71, 0x7fff
	v_cndmask_b16 v72.h, 0x7fff, v83.h, s3
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v97, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s35
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v84, v83
	v_max3_f32 v84, v98, v94, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v82, v72, s99, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v83, v84, v85, v83
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v71, v82, v72, v212
	v_perm_b32 v72, v82, v72, v213
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[233:240], v[131:138], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[131:134], v241
	ds_load_b128 v[135:138], v242
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v83, v83, v84
.Ltmp18:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[131:138], v[122:129], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v130 offset:2048
	ds_load_b128 v[135:138], v249
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v83, v83, v84
.Ltmp21:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[131:138], v[122:129], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v157
	ds_load_b128 v[135:138], v152
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v83, v83, v84 :: v_dual_max_f32 v84, v182, v182
.Ltmp24:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[131:138], v[122:129], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[131:134], v177
	ds_load_b128 v[135:138], v178
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v182, v84, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v98, v182
	v_sub_f32_e32 v85, v99, v182
	v_sub_f32_e32 v98, v100, v182
	v_sub_f32_e32 v99, v101, v182
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v89, v89
	v_max_f32_e32 v101, v93, v93
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v100, v101, v100
	v_max3_f32 v101, v90, v86, v91
.Ltmp26:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[131:138], v[122:129], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v243
	ds_load_b128 v[126:129], v244
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[122:129], v[102:109], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v250
	ds_load_b128 v[126:129], v251
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[122:129], v[102:109], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v130 offset:4096
	ds_load_b128 v[126:129], v151
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[122:129], v[102:109], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[122:125], v179
	ds_load_b128 v[126:129], v180
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[102:109], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[106:109], v246
	ds_load_b128 v[102:105], v245
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[102:109], v[65:72], v[41:48]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v252
	ds_load_b128 v[106:109], v253
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[102:109], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[106:109], v154
	ds_load_b128 v[102:105], v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[102:109], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v130 offset:6144
	ds_load_b128 v[106:109], v181
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[102:109], v[65:72], v[1:8]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v87, v92, v88
	v_max_f32_e32 v65, v113, v113
	v_max3_f32 v67, v111, v116, v112
	v_max3_f32 v103, v75, v80, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v100, v101, v102, v100
	v_dual_max_f32 v102, v81, v81 :: v_dual_mov_b32 v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v101, v101 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v101
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v101, v101 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v101
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v100, v100, v101 :: v_dual_max_f32 v101, v183, v183
.Ltmp34:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v183, v101, v100
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v117, v117
	v_max_f32_e32 v101, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v87, v183
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v66, v114, v110, v115
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v101, v102, v101
	v_max3_f32 v102, v78, v74, v79
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v93, v93, v183
	v_sub_f32_e32 v89, v89, v183
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v66, v67, v65
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v183
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v102, v103, v101
.Ltmp42:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v90, v183
	v_sub_f32_e32 v86, v86, v183
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_sub_f32 v91, v91, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v102, v101
.Ltmp44:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v183
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v66, v66 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v102, v102, v102
	v_max_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v102
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v101, v101, v102
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v101, v101, v102 :: v_dual_max_f32 v102, v184, v184
.Ltmp51:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v184, v102, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_sub_f32 v79, v79, v184
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v184
	v_sub_f32_e32 v81, v81, v184
	v_sub_f32_e32 v77, v77, v184
	v_sub_f32_e32 v78, v78, v184
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
.Ltmp55:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v184
	v_sub_f32_e32 v80, v80, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_sub_f32 v76, v76, v184 :: v_dual_max_f32 v65, v65, v66
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v69, v65, v66
.Ltmp58:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v150, v150
	v_max_f32_e32 v150, v65, v69
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v114, v150
	v_sub_f32_e32 v70, v110, v150
	v_sub_f32_e32 v66, v115, v150
	v_sub_f32_e32 v71, v111, v150
	v_sub_f32_e32 v67, v116, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s13
	v_cndmask_b32_e64 v70, 0, v70, s29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v66, 0, v66, s11
	v_cndmask_b32_e64 v67, 0, v67, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
	v_exp_f32_e32 v71, v87
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v95, v95, v182
	v_sub_f32_e32 v97, v97, v182
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v71, 0, v71, s33
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_f32_e32 v65, v65, v66
.Ltmp62:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v112, v150
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v90
	v_exp_f32_e32 v70, v72
	v_exp_f32_e32 v72, v88
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s17
	v_cndmask_b32_e64 v70, 0, v70, s25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v72, 0, v72, s31
.Ltmp63:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
.Ltmp64:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v117, v150
	v_sub_f32_e32 v82, v113, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v82
	v_exp_f32_e32 v82, v89
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s7
	v_cndmask_b32_e64 v70, 0, v70, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0, v82, s30
.Ltmp65:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp66:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
	v_add_f32_e32 v65, v65, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s34
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v67, v65 :: v_dual_add_f32 v66, v66, v70
.Ltmp70:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s16
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp75:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp77:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v95
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp78:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp79:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v93
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v72, 0, v72, s14
.Ltmp80:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_f32_e32 v68, v71, v72
.Ltmp81:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v97
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v67, v66
.Ltmp84:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v94, v94, v182 :: v_dual_add_f32 v65, v65, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v67, v66 :: v_dual_sub_f32 v96, v96, v182
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v66, v66, v67 :: v_dual_mov_b32 v67, v65
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v68, v66
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v67
.Ltmp94:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s19
.Ltmp95:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp96:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s5
	v_cndmask_b32_e64 v68, 0, v68, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v85
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp100:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v98
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v68
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s1
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp104:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s12
	v_cndmask_b32_e64 v71, 0, v71, s0
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v192
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp106:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v74
	v_exp_f32_e32 v74, v75
	v_exp_f32_e32 v75, v76
	v_exp_f32_e32 v76, v77
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_add_f32_e32 v67, v67, v70
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s28
	v_cndmask_b32_e64 v74, 0, v74, s26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v75, 0, v75, s24
	v_cndmask_b32_e64 v76, 0, v76, s22
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v70, v67
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v72
.Ltmp111:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v67, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s10
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v74
.Ltmp116:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v72
.Ltmp118:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v75
.Ltmp120:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v76
	v_add_f32_e32 v71, v74, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v68, v68, v71
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v70 :: v_dual_mov_b32 v70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v70, v67 :: v_dual_mov_b32 v71, v68
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v67, v70 :: v_dual_max_f32 v70, v192, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v68, v68, v71 :: v_dual_max_f32 v69, v70, v69
.Ltmp130:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v70, v192, v69
	v_mov_b32_e32 v192, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v70, v70
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v70, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v65, v191, v70
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v70, v190, v190 :: v_dual_mov_b32 v191, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v70, v70, v83
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v71, v190, v70
	v_mov_b32_e32 v190, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v71, v71
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v71, 0, v71, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v67, v189, v71
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v71, v188, v188
	v_mov_b32_e32 v189, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v71, v71, v100
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v188, v71
	v_mov_b32_e32 v188, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v72, 0, v72, s0
	v_cmp_neq_f32_e64 s0, 0xff800000, v186
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v66, v187, v72
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v72, v186, v186
	v_dual_mov_b32 v187, v66 :: v_dual_max_f32 v72, v72, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v74, v186, v72
	v_mov_b32_e32 v186, v72
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v74, 0, v74, s0
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v68, v185, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v185, v68
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_70
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s100, s94, s92
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v120, s75 :: v_dual_add_nc_u32 v81, 0, v174
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s0, s100, s91
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v119, s74 :: v_dual_mov_b32 v118, s73
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s0, v155, 1
	v_add_lshl_u32 v65, s0, v147, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v117, s72 :: v_dual_mov_b32 v116, s71
	v_dual_mov_b32 v115, s70 :: v_dual_mov_b32 v114, s69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v66, s67
	v_add_lshl_u32 v66, s0, v156, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s67
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v113, s68
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s96, s92
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v66, s67
	v_add_lshl_u32 v66, s0, v148, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v77, 0x80000000, v66, s67
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[80:83], 0 offen
	buffer_load_b128 v[69:72], v69, s[80:83], 0 offen
	buffer_load_b128 v[73:76], v73, s[80:83], 0 offen
	buffer_load_b128 v[77:80], v77, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v158, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v158, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v158, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v158, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v214
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v214 offset:2048
	ds_load_b128 v[101:104], v214 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v214 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[57:64], v[113:120]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[57:64], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v216
	ds_load_b128 v[97:100], v215
	ds_load_b128 v[105:108], v215 offset:2048
	ds_load_b128 v[109:112], v216 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v216 offset:4096
	ds_load_b128 v[97:100], v215 offset:4096
	ds_load_b128 v[105:108], v215 offset:6144
	ds_load_b128 v[109:112], v216 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v218
	ds_load_b128 v[97:100], v217
	ds_load_b128 v[105:108], v217 offset:2048
	ds_load_b128 v[109:112], v218 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[33:40], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[33:40], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v218 offset:4096
	ds_load_b128 v[97:100], v217 offset:4096
	ds_load_b128 v[105:108], v217 offset:6144
	ds_load_b128 v[109:112], v218 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[33:40], v[73:80]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v220
	ds_load_b128 v[97:100], v219
	ds_load_b128 v[105:108], v219 offset:2048
	ds_load_b128 v[109:112], v220 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[25:32], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[105:112], v[25:32], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v220 offset:4096
	ds_load_b128 v[97:100], v219 offset:4096
	ds_load_b128 v[105:108], v219 offset:6144
	ds_load_b128 v[109:112], v220 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[25:32], v[73:80]
	v_mov_b16_e32 v97.l, 0
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[25:32], v[65:72]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v109, s92, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v98.h, v97.l
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v109, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v109, v170
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s5, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s5
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v98, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s3, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v99, 31, v98
	v_add_co_u32 v98, s0, s78, v98
	v_add_co_ci_u32_e64 v99, null, s79, v99, s0
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v98, v[98:99], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v112, s92, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v112, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v112, v170
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s21, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s21
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v97, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s3, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v97
	v_add_co_u32 v99, s0, s78, v97
	v_add_co_ci_u32_e64 v100, null, s79, v100, s0
	global_load_d16_u8 v97, v[99:100], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v111, s92, v160
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v97.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v111, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v111, v170
	v_mov_b16_e32 v99.h, v97.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s6, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s6
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v99, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v99, s3, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v100, 31, v99
	v_add_co_u32 v99, s0, s78, v99
	v_add_co_ci_u32_e64 v100, null, s79, v100, s0
	global_load_d16_hi_u8 v99, v[99:100], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v114, s92, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v114, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v114, v170
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s22, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s22
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v100, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s3, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s0, s78, v100
	v_add_co_ci_u32_e64 v101, null, s79, v101, s0
	global_load_d16_hi_u8 v97, v[100:101], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v113, s92, v162
	v_mov_b16_e32 v98.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v113, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v113, v170
	v_mov_b16_e32 v100.h, v98.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s8, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s8
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v100, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v100, s3, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v101, 31, v100
	v_add_co_u32 v100, s0, s78, v100
	v_add_co_ci_u32_e64 v101, null, s79, v101, s0
	global_load_d16_hi_u8 v100, v[100:101], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v116, s92, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v116, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v116, v170
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s24, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s24
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, s0, s78, v101
	v_add_co_ci_u32_e64 v102, null, s79, v102, s0
	global_load_d16_u8 v98, v[101:102], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v115, s92, v164
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v99.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v115, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v115, v170
	v_mov_b16_e32 v102.l, v99.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s7, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s7
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, s0, s78, v101
	v_add_co_ci_u32_e64 v102, null, s79, v102, s0
	global_load_d16_u8 v102, v[101:102], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v117, s92, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v117, v166
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v117, v170
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s23, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s23
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v104, 31, v101
	v_add_co_u32 v103, s0, s78, v101
	v_add_co_ci_u32_e64 v104, null, s79, v104, s0
	global_load_d16_u8 v99, v[103:104], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v100.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v109, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v109, v171
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v102.h, v100.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s10, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s10
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v104, 31, v101
	v_add_co_u32 v103, s0, s78, v101
	v_add_co_ci_u32_e64 v104, null, s79, v104, s0
	global_load_d16_hi_u8 v102, v[103:104], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v112, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v112, v171
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s26, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s26
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v104, 31, v101
	v_add_co_u32 v103, s0, s78, v101
	v_add_co_ci_u32_e64 v104, null, s79, v104, s0
	global_load_d16_u8 v100, v[103:104], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v101.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v111, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v111, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v104.l, v101.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s12, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s12
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v103, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s3, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v104, 31, v103
	v_add_co_u32 v103, s0, s78, v103
	v_add_co_ci_u32_e64 v104, null, s79, v104, s0
	global_load_d16_u8 v104, v[103:104], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v114, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v114, v171
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s28, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s28
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v101, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s3, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v103, 31, v101
	v_add_co_u32 v105, s0, s78, v101
	v_add_co_ci_u32_e64 v106, null, s79, v103, s0
	global_load_d16_u8 v101, v[105:106], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v101.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v113, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v113, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v104.h, v101.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s14, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s14
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v103, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s3, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v106, 31, v103
	v_add_co_u32 v105, s0, s78, v103
	v_add_co_ci_u32_e64 v106, null, s79, v106, s0
	global_load_d16_hi_u8 v104, v[105:106], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v116, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v116, v171
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s30
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v103, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s3, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v106, 31, v103
	v_add_co_u32 v105, s0, s78, v103
	v_add_co_ci_u32_e64 v106, null, s79, v106, s0
	global_load_d16_hi_u8 v101, v[105:106], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v103.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v115, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v115, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v106.l, v103.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s15, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s15
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v105, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s3, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v106, 31, v105
	v_add_co_u32 v105, s0, s78, v105
	v_add_co_ci_u32_e64 v106, null, s79, v106, s0
	global_load_d16_u8 v106, v[105:106], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v117, v167
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v117, v171
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s31, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s31
	s_cbranch_execz .LBB0_38
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v103, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v103, s3, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v105, 31, v103
	v_add_co_u32 v107, s0, s78, v103
	v_add_co_ci_u32_e64 v108, null, s79, v105, s0
	global_load_d16_u8 v103, v[107:108], off
.LBB0_38:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v103.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v109, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v109, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v106.h, v103.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s17, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s17
	s_cbranch_execz .LBB0_40
; %bb.39:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v105, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s3, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v108, 31, v105
	v_add_co_u32 v107, s0, s78, v105
	v_add_co_ci_u32_e64 v108, null, s79, v108, s0
	global_load_d16_hi_u8 v106, v[107:108], off
.LBB0_40:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v112, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v112, v172
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s34, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s34
	s_cbranch_execz .LBB0_42
; %bb.41:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v105, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s3, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v108, 31, v105
	v_add_co_u32 v107, s0, s78, v105
	v_add_co_ci_u32_e64 v108, null, s79, v108, s0
	global_load_d16_hi_u8 v103, v[107:108], off
.LBB0_42:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v105.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v111, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v111, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v108.l, v105.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s16, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s16
	s_cbranch_execz .LBB0_44
; %bb.43:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v107, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v107, s3, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v108, 31, v107
	v_add_co_u32 v107, s0, s78, v107
	v_add_co_ci_u32_e64 v108, null, s79, v108, s0
	global_load_d16_u8 v108, v[107:108], off
.LBB0_44:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v114, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v114, v172
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s33
	s_cbranch_execz .LBB0_46
; %bb.45:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v105, s3, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v107, 31, v105
	v_add_co_u32 v118, s0, s78, v105
	v_add_co_ci_u32_e64 v119, null, s79, v107, s0
	global_load_d16_u8 v105, v[118:119], off
.LBB0_46:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v105.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v113, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v113, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v108.h, v105.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s18, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s18
	s_cbranch_execz .LBB0_48
; %bb.47:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v107, s3, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v107
	v_add_co_u32 v118, s0, s78, v107
	v_add_co_ci_u32_e64 v119, null, s79, v110, s0
	global_load_d16_hi_u8 v108, v[118:119], off
.LBB0_48:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v116, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v116, v172
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s35
	s_cbranch_execz .LBB0_50
; %bb.49:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v107, s3, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v110, 31, v107
	v_add_co_u32 v118, s0, s78, v107
	v_add_co_ci_u32_e64 v119, null, s79, v110, s0
	global_load_d16_hi_u8 v105, v[118:119], off
.LBB0_50:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v107.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v115, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v115, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v110.l, v107.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s19, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s19
	s_cbranch_execz .LBB0_52
; %bb.51:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v110, s3, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v119, 31, v110
	v_add_co_u32 v118, s0, s78, v110
	v_add_co_ci_u32_e64 v119, null, s79, v119, s0
	global_load_d16_u8 v110, v[118:119], off
.LBB0_52:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v117, v168
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v117, v172
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s36, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s36
	s_cbranch_execz .LBB0_54
; %bb.53:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v107, s3, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v119, 31, v107
	v_add_co_u32 v118, s0, s78, v107
	v_add_co_ci_u32_e64 v119, null, s79, v119, s0
	global_load_d16_u8 v107, v[118:119], off
.LBB0_54:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v107.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v109, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v109, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v110.h, v107.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s20, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s20
	s_cbranch_execz .LBB0_56
; %bb.55:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v109, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s3, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v119, 31, v109
	v_add_co_u32 v118, s0, s78, v109
	v_add_co_ci_u32_e64 v119, null, s79, v119, s0
	global_load_d16_hi_u8 v110, v[118:119], off
.LBB0_56:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v112, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v112, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s37
	s_cbranch_execz .LBB0_58
; %bb.57:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v109, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s3, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v112, 31, v109
	v_add_co_u32 v118, s0, s78, v109
	v_add_co_ci_u32_e64 v119, null, s79, v112, s0
	global_load_d16_hi_u8 v107, v[118:119], off
.LBB0_58:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v109.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v111, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v111, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v111.h, v109.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s25, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s25
	s_cbranch_execz .LBB0_60
; %bb.59:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v111, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v111, s3, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v112, 31, v111
	v_add_co_u32 v111, s0, s78, v111
	v_add_co_ci_u32_e64 v112, null, s79, v112, s0
	global_load_d16_hi_u8 v111, v[111:112], off
.LBB0_60:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v114, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v114, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s38, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s38
	s_cbranch_execz .LBB0_62
; %bb.61:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v109, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s3, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v112, 31, v109
	v_add_co_u32 v118, s0, s78, v109
	v_add_co_ci_u32_e64 v119, null, s79, v112, s0
	global_load_d16_u8 v109, v[118:119], off
.LBB0_62:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v109.h, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v113, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v113, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v112.l, v109.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s27, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s27
	s_cbranch_execz .LBB0_64
; %bb.63:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v112, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v112, s3, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v113, 31, v112
	v_add_co_u32 v112, s0, s78, v112
	v_add_co_ci_u32_e64 v113, null, s79, v113, s0
	global_load_d16_u8 v112, v[112:113], off
.LBB0_64:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v116, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v116, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s39, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s39
	s_cbranch_execz .LBB0_66
; %bb.65:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s3, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s0, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s0
	global_load_d16_hi_u8 v109, v[113:114], off
.LBB0_66:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b16_e32 v111.l, 0
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v115, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v115, v173
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mov_b16_e32 v112.h, v111.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_and_b32 s29, s2, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s29
	s_cbranch_execz .LBB0_68
; %bb.67:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s3, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s0, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s0
	global_load_d16_hi_u8 v112, v[113:114], off
.LBB0_68:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s0, v117, v169
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s1, v117, v173
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s40, s2, s0
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s1, s40
	s_cbranch_execz .LBB0_5
; %bb.69:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	scratch_load_b32 v113, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v113, s3, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v114, 31, v113
	v_add_co_u32 v113, s0, s78, v113
	v_add_co_ci_u32_e64 v114, null, s79, v114, s0
	global_load_d16_u8 v111, v[113:114], off
	s_branch .LBB0_5
.LBB0_70:                               ; %Flow
	.loc	1 0 34                          ; attention.py:0:34
	v_lshlrev_b32_e32 v26, 2, v0
	v_and_b32_e32 v28, 15, v0
	v_and_b32_e32 v71, 0x78, v0
	v_and_b32_e32 v72, 16, v0
	v_and_b32_e32 v73, 0x60, v0
.LBB0_71:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v25, 0x80, v26
	v_lshl_add_u32 v26, v28, 3, 0
	v_add_nc_u32_e32 v27, 0, v71
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v27, v[65:66], v[67:68] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v26, v25, v0
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v27, 4, v72
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v29, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v73
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v25, 32, v27
	v_or_b32_e32 v26, 16, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v28, v0, v28
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v27
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v30, s90, v28
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v28, s88, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v30
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v28, s89, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v30, null, v29, v29, v41
	v_div_scale_f32 v32, null, v29, v29, v42
	v_div_scale_f32 v34, null, v29, v29, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v30
	v_rcp_f32_e32 v39, v32
	v_div_scale_f32 v36, null, v29, v29, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v34
	v_div_scale_f32 v31, vcc_lo, v41, v29, v41
	v_rcp_f32_e32 v49, v36
	v_div_scale_f32 v33, s1, v42, v29, v42
	v_fma_f32 v54, -v30, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v32, v39, 1.0
	v_div_scale_f32 v50, null, v29, v29, v45
	v_fma_f32 v56, -v34, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v54, v38 :: v_dual_fmac_f32 v39, v55, v39
	v_fma_f32 v57, -v36, v49, 1.0
	v_div_scale_f32 v37, s3, v44, v29, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v40, v56, v40 :: v_dual_mul_f32 v55, v31, v38
	v_mul_f32_e32 v56, v33, v39
	v_div_scale_f32 v52, null, v29, v29, v46
	v_rcp_f32_e32 v53, v50
	v_div_scale_f32 v35, s2, v43, v29, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v32, v56, v33
	v_fmac_f32_e32 v49, v57, v49
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v61, -v30, v55, v31
	v_div_scale_f32 v51, s4, v45, v29, v45
	v_dual_fmac_f32 v56, v62, v39 :: v_dual_mul_f32 v59, v37, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v50, v53, 1.0
	v_fma_f32 v64, -v36, v59, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v52, v58, 1.0
	v_mul_f32_e32 v57, v35, v40
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v55, v61, v38
	v_fmac_f32_e32 v59, v64, v49
	v_fmac_f32_e32 v58, v60, v58
	v_fma_f32 v63, -v34, v57, v35
	v_mul_f32_e32 v54, v51, v53
	v_fma_f32 v30, -v30, v55, v31
	v_fma_f32 v31, -v32, v56, v33
	v_fma_f32 v33, -v36, v59, v37
	v_div_scale_f32 v36, null, v29, v29, v47
	v_fmac_f32_e32 v57, v63, v40
	v_div_fmas_f32 v30, v30, v38, v55
	v_div_scale_f32 v38, null, v29, v29, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v36
	v_fma_f32 v32, -v34, v57, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v30, v29, v41
	v_div_fmas_f32 v31, v31, v39, v56
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v34, s2, v46, v29, v46
	v_div_fmas_f32 v32, v32, v40, v57
	v_fma_f32 v35, -v50, v54, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v36, v37, 1.0
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v31, v29, v42
	v_div_fmas_f32 v33, v33, v49, v59
	v_dual_mul_f32 v39, v34, v58 :: v_dual_fmac_f32 v54, v35, v53
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s3, v47, v29, v47
	v_div_scale_f32 v42, null, v29, v29, v17
	v_div_fixup_f32 v32, v32, v29, v43
	v_div_fixup_f32 v33, v33, v29, v44
	v_fma_f32 v35, -v52, v39, v34
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v44, -v50, v54, v51
	v_mul_f32_e32 v49, v40, v37
	v_rcp_f32_e32 v50, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v35, v58
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, s5, v48, v29, v48
	v_div_fmas_f32 v35, v44, v53, v54
	v_fma_f32 v44, -v36, v49, v40
	v_div_scale_f32 v53, null, v29, v29, v18
	v_fma_f32 v34, -v52, v39, v34
	v_mul_f32_e32 v51, v43, v41
	v_fma_f32 v52, -v42, v50, 1.0
	v_fmac_f32_e32 v49, v44, v37
	v_rcp_f32_e32 v44, v53
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v54, -v38, v51, v43
	v_div_fmas_f32 v39, v34, v58, v39
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s2, v17, v29, v17
	v_div_fixup_f32 v34, v35, v29, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v35, v39, v29, v46
	v_fma_f32 v36, -v36, v49, v40
	v_fmac_f32_e32 v51, v54, v41
	v_mul_f32_e32 v39, v52, v50
	v_fma_f32 v40, -v53, v44, 1.0
	v_div_scale_f32 v45, null, v29, v29, v19
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, null, v29, v29, v20
	v_div_fmas_f32 v36, v36, v37, v49
	v_fma_f32 v37, -v38, v51, v43
	v_fma_f32 v38, -v42, v39, v52
	v_fmac_f32_e32 v44, v40, v44
	v_rcp_f32_e32 v40, v45
	v_div_scale_f32 v43, s3, v18, v29, v18
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v39, v38, v50
	v_div_fmas_f32 v37, v37, v41, v51
	v_rcp_f32_e32 v38, v46
	v_mul_f32_e32 v41, v43, v44
	v_div_fixup_f32 v36, v36, v29, v47
	v_fma_f32 v42, -v42, v39, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v45, v40, 1.0
	v_div_scale_f32 v51, null, v29, v29, v21
	v_fma_f32 v47, -v53, v41, v43
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v37, v37, v29, v48
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v48, s4, v19, v29, v19
	v_fma_f32 v49, -v46, v38, 1.0
	v_div_fmas_f32 v39, v42, v50, v39
	v_fmac_f32_e32 v41, v47, v44
	v_rcp_f32_e32 v47, v51
	v_div_scale_f32 v50, null, v29, v29, v22
	v_mul_f32_e32 v42, v48, v40
	v_fmac_f32_e32 v38, v49, v38
	v_div_scale_f32 v49, s2, v20, v29, v20
	v_div_fixup_f32 v17, v39, v29, v17
	v_fma_f32 v39, -v53, v41, v43
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v43, -v45, v42, v48
	v_mul_f32_e32 v52, v49, v38
	v_fma_f32 v54, -v51, v47, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v44, v41
	v_fmac_f32_e32 v42, v43, v40
	v_fma_f32 v41, -v46, v52, v49
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v43, s3, v21, v29, v21
	v_fma_f32 v44, -v50, v53, 1.0
	v_div_fixup_f32 v18, v39, v29, v18
	v_fma_f32 v39, -v45, v42, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v52, v41, v38 :: v_dual_mul_f32 v41, v43, v47
	v_fmac_f32_e32 v53, v44, v53
	v_div_scale_f32 v44, s5, v22, v29, v22
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v29, v29, v23
	v_div_fmas_f32 v39, v39, v40, v42
	v_fma_f32 v40, -v46, v52, v49
	v_fma_f32 v42, -v51, v41, v43
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v46, v45
	v_div_fmas_f32 v38, v40, v38, v52
	v_fmac_f32_e32 v41, v42, v47
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v29, v29, v24
	v_div_fixup_f32 v20, v38, v29, v20
	v_fma_f32 v38, -v51, v41, v43
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v29, v29, v10
	v_rcp_f32_e32 v40, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v47, v41
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v52, -v45, v46, 1.0
	v_div_fixup_f32 v19, v39, v29, v19
	v_div_scale_f32 v39, s2, v23, v29, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s3, v24, v29, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v29, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v29, v29, v9
	v_div_fixup_f32 v21, v38, v29, v21
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v47, v42
	v_div_scale_f32 v53, null, v29, v29, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v29, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v45, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v47, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v45, v43, v39
	v_div_scale_f32 v45, null, v29, v29, v11
	v_div_fmas_f32 v39, v39, v46, v43
	v_div_scale_f32 v46, s2, v10, v29, v10
	v_fma_f32 v43, -v49, v50, v44
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v39, v29, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v43, v40, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v47, v48, v47
	v_rcp_f32_e32 v48, v45
	v_div_fixup_f32 v24, v40, v29, v24
	v_fma_f32 v40, -v53, v55, 1.0
	v_fmac_f32_e32 v54, v43, v41
	v_mul_f32_e32 v44, v38, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v55, v40, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	v_fma_f32 v52, -v42, v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v48, 1.0
	v_div_scale_f32 v40, s3, v12, v29, v12
	v_fmac_f32_e32 v44, v52, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v29, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v29, v29, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_div_fmas_f32 v38, v38, v47, v44
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v45, v50, v49
	v_div_fmas_f32 v41, v43, v41, v54
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v38, v29, v9
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	v_div_fixup_f32 v10, v41, v29, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v45, v50, v49
	v_div_scale_f32 v45, null, v29, v29, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v48, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v11, v43, v29, v11
	v_div_scale_f32 v43, null, v29, v29, v15
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s2, v13, v29, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v49, v43
	v_mul_f32_e32 v44, v40, v55
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v46, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v53, v44, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v29, v29, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v40, v29, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v29, v29, v2
	v_div_scale_f32 v40, s2, v15, v29, v15
	v_div_scale_f32 v39, null, v29, v29, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	v_div_fixup_f32 v13, v38, v29, v13
	v_fma_f32 v38, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s3, v16, v29, v16
	v_fma_f32 v54, -v46, v52, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v29, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v53, s4, v1, v29, v1
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v54, s5, v2, v29, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v45, v44, v41
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v45, v44, v41
	v_mul_f32_e32 v45, v40, v49
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v39, v42, 1.0
	v_fma_f32 v44, -v43, v45, v40
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v41, v29, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_div_scale_f32 v51, null, v29, v29, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v53, v42
	v_fma_f32 v40, -v43, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v50
	v_rcp_f32_e32 v55, v51
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v41, -v39, v56, v53
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v29, v29, v4
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v40, v29, v15
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v38, v29, v16
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_div_scale_f32 v44, s2, v3, v29, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_scale_f32 v49, null, v29, v29, v8
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v29, v29, v6
	v_div_fixup_f32 v1, v39, v29, v1
	v_fma_f32 v42, -v46, v43, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v29, v29, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v42, v29, v2
	v_div_scale_f32 v42, null, v29, v29, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v42, v46, 1.0
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s4, v7, v29, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v29, v4
	v_div_fixup_f32 v3, v38, v29, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s3, v6, v29, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v29, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v39, v54, v38
	v_mul_f32_e32 v57, v53, v46
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v29, v8
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v43, v29, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v29, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v29, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v29, v7
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s89, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v29, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v30, s1
	v_cndmask_b32_e64 v30, 0, v31, s1
	v_cndmask_b32_e64 v31, 0, v32, s1
	v_cndmask_b32_e64 v32, 0, v33, s1
	v_cndmask_b32_e64 v33, 0, v34, s1
	v_cndmask_b32_e64 v34, 0, v35, s1
	v_cndmask_b32_e64 v35, 0, v36, s1
	v_cndmask_b32_e64 v36, 0, v37, s1
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v28, v27, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s89, v26
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 8, v37
	v_add_nc_u32_e32 v38, 16, v37
	v_add_lshl_u32 v26, v28, v26, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s89, v25
	v_cmp_gt_i32_e64 s3, s89, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_dual_cndmask_b32 v39, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v29, v39, s[76:79], 0 offen
	buffer_store_b32 v30, v27, s[76:79], 0 offen
	buffer_store_b32 v31, v38, s[76:79], 0 offen
	v_add_nc_u32_e32 v31, 48, v37
	v_add_nc_u32_e32 v30, 40, v37
	v_add_nc_u32_e32 v27, 24, v37
	v_add_nc_u32_e32 v38, 56, v37
	v_add_lshl_u32 v0, v28, v0, 2
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	v_dual_cndmask_b32 v30, 0x80000000, v30 :: v_dual_add_nc_u32 v29, 32, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	s_clause 0x4
	buffer_store_b32 v32, v27, s[76:79], 0 offen
	buffer_store_b32 v33, v29, s[76:79], 0 offen
	buffer_store_b32 v34, v30, s[76:79], 0 offen
	buffer_store_b32 v35, v31, s[76:79], 0 offen
	buffer_store_b32 v36, v38, s[76:79], 0 offen
	v_add_nc_u32_e32 v27, 0x48, v37
	v_add_nc_u32_e32 v29, 0x50, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v30, 0x58, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	v_add_nc_u32_e32 v31, 0x60, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v26, s[76:79], 0 offen
	buffer_store_b32 v18, v27, s[76:79], 0 offen
	buffer_store_b32 v19, v29, s[76:79], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v37
	v_add_nc_u32_e32 v19, 0x70, v37
	v_cndmask_b32_e32 v17, 0x80000000, v31, vcc_lo
	buffer_store_b32 v20, v30, s[76:79], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v37
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v28, v25, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[76:79], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[76:79], 0 offen
	buffer_store_b32 v24, v20, s[76:79], 0 offen
	buffer_store_b32 v9, v17, s[76:79], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[76:79], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[76:79], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[76:79], 0 offen
	buffer_store_b32 v13, v17, s[76:79], 0 offen
	buffer_store_b32 v14, v18, s[76:79], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_nc_u32_e32 v11, 0xc8, v37
	v_add_nc_u32_e32 v12, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[76:79], 0 offen
	buffer_store_b32 v16, v10, s[76:79], 0 offen
	buffer_store_b32 v1, v0, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v37
	v_add_nc_u32_e32 v1, 0xe0, v37
	v_add_nc_u32_e32 v2, 0xe8, v37
	v_add_nc_u32_e32 v3, 0xf0, v37
	v_add_nc_u32_e32 v9, 0xf8, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[76:79], 0 offen
	buffer_store_b32 v5, v1, s[76:79], 0 offen
	buffer_store_b32 v6, v2, s[76:79], 0 offen
	buffer_store_b32 v7, v3, s[76:79], 0 offen
	buffer_store_b32 v8, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp131:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 112
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 101
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 112
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18884
; TotalNumSgprs: 103
; NumVgprs: 256
; ScratchSize: 112
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 103
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 112
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 27
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
