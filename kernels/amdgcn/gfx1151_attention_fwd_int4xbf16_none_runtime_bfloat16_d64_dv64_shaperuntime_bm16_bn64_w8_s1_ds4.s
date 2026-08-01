	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s26, s[0:1], 0x68
	s_mov_b32 s25, s3
                                        ; implicit-def: $vgpr179 : SGPR spill to VGPR lane
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s40, s[0:1], 0x60
.Ltmp0:
	.loc	1 1038 13 prologue_end          ; attention.py:1038:13
	v_lshrrev_b32_e32 v68, 5, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v49, 31, v0
	s_mov_b32 s15, 0x31027000
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s23, s15
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v69, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v70, 15, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s4, -1, 0
	s_cmp_eq_u32 s3, 1
	v_writelane_b32 v179, s4, 0
	s_cselect_b32 s3, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s7, s26
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s26
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s18, s25, s66
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s16, s4
	s_sub_i32 s4, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s16
	s_mul_hi_u32 s4, s16, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s16, s16, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s4, s7
	s_sub_i32 s5, s5, s12
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s5, s13, s5
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s12, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s14, s25
	s_cvt_f32_u32 s12, s5
	s_sub_i32 s13, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s12
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s6
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s4, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_cvt_u32_f32 s12, s12
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s13, s13, s12
	s_mul_hi_u32 s13, s12, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s12, s12, s13
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s13, s4, s26
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_hi_u32 s12, s14, s12
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s24, s2, s13
	.loc	1 755 23                        ; attention.py:755:23
	s_mul_i32 s4, s12, s5
	s_sub_i32 s2, s14, s4
	s_add_i32 s4, s12, 1
	s_sub_i32 s13, s2, s5
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s4, s12
	s_cselect_b32 s2, s13, s2
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s4, s12, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s2, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s12, s2
	s_sub_i32 s17, 0, s2
	v_rcp_iflag_f32_e32 v1, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s12, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v68
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s14, s12, 0x4f7ffffe
	s_load_b64 s[12:13], s[0:1], 0x0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s14
	s_mul_hi_u32 s17, s14, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s14, s14, s17
	s_xor_b32 s17, s64, s65
	s_mul_hi_u32 s14, s5, s14
	s_ashr_i32 s17, s17, 31
	s_mul_i32 s19, s14, s2
	s_sub_i32 s5, s5, s19
	s_add_i32 s19, s14, 1
	s_sub_i32 s20, s5, s2
	s_cmp_ge_u32 s5, s2
	s_cselect_b32 s5, s20, s5
	s_load_b64 s[20:21], s[0:1], 0x18
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[51:52], null, s40, v68, v[49:50]
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s14, s19, s14
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s41, s40, v49
	.loc	1 757 22                        ; attention.py:757:22
	s_add_i32 s19, s14, 1
	s_cmp_ge_u32 s5, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s19, s19, s14
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s18, s6
	v_lshl_add_u32 v71, s40, 3, v51
	s_mul_i32 s14, s5, s40
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v51
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v2, s14, v71
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v6, s5, v70, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s41, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s22, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_clause 0x1
	buffer_load_u8 v3, v1, s[12:15], 0 offen
	buffer_load_u8 v2, v2, s[12:15], 0 offen
	v_bfe_i32 v1, v0, 7, 1
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s21, s21, 0xffff
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s14, s67, 63
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s19, s17
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s15, s14, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v1, 0x88, v1
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s15, s15, 26
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s13, s2, s17
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s14, s14, s15
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s12, s13
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, v1, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v70
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s15, s14, 6
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_not1_b32 s14, s14, 63
	.loc	1 798 33 is_stmt 1              ; attention.py:798:33
	s_add_i32 s15, s15, s26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 0x110, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s51, s66, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v72, 0, v4
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s15, s15, -1
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v73, 0, v5
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v4, 0x80000000, v6, s51
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s17, s15
	s_xor_b32 s15, s15, s26
	s_mul_hi_u32 s16, s17, s16
	s_ashr_i32 s15, s15, 31
	s_mul_i32 s18, s16, s7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v72, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v4, s[20:23], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v3, 24, v69
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s17, s17, s18
	s_add_i32 s18, s16, 1
	s_sub_i32 s19, s17, s7
	s_cmp_ge_u32 s17, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v3, v70, 5, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s16, s18, s16
	s_cselect_b32 s17, s19, s17
	s_add_i32 s18, s16, 1
	s_cmp_ge_u32 s17, s7
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_add_nc_u32_e32 v74, 0, v3
	v_xor_b32_e32 v3, 24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v75, 0, v4
	v_add_nc_u32_e32 v76, 0, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v77, 0, v3
	ds_load_b64 v[52:53], v74
	ds_load_b64 v[54:55], v75
	ds_load_b64 v[56:57], v76
	ds_load_b64 v[58:59], v77
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s18, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s15
	s_sub_i32 s2, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s24, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s102, s7, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s7, v3
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s102, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s43, s14, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s6
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s102, s102, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s43, s43, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s42, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v78, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s3, s3, 26
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s43, s43, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v50, 63, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s102, s43
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_i32_e64 s74, s42, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s3, s25, s64
	s_mul_f32 s6, s7, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v179, s16, 1
	s_xor_b32 s4, s4, s3
	s_cvt_u32_f32 s6, s6
	s_sub_i32 s3, s4, s3
	s_sub_i32 s4, 0, s12
	s_mul_i32 s7, s3, s64
	s_mul_i32 s4, s4, s6
	s_sub_i32 s7, s25, s7
	s_mul_hi_u32 s4, s6, s4
	v_writelane_b32 v179, s17, 2
	s_abs_i32 s8, s7
	s_add_i32 s6, s6, s4
	s_ashr_i32 s4, s13, 31
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s13, s6, s12
	s_load_b32 s14, s[0:1], 0x6c
	v_writelane_b32 v179, s18, 3
	s_xor_b32 s4, s7, s4
	s_sub_i32 s7, s8, s13
	s_add_i32 s8, s6, 1
	s_sub_i32 s13, s7, s12
	s_cmp_ge_u32 s7, s12
	v_writelane_b32 v179, s19, 4
	s_cselect_b32 s6, s8, s6
	s_cselect_b32 s7, s13, s7
	s_add_i32 s8, s6, 1
	s_cmp_ge_u32 s7, s12
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x8
	s_load_b64 s[16:17], s[0:1], 0x20
	v_writelane_b32 v179, s26, 5
	s_cselect_b32 s6, s8, s6
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s3, s3, s65
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s0, s6, s4
	v_mov_b16_e32 v4.l, 0
	v_writelane_b32 v179, s24, 6
	s_sub_i32 s0, s0, s4
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v4.h, v2.l
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s0, s0, s3
	s_mov_b32 s95, 0x31027000
	.loc	1 821 32 is_stmt 0              ; attention.py:821:32
	s_mul_i32 s3, s0, s67
	.loc	1 844 25 is_stmt 1              ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s14, 0x3fb8aa3b
	v_writelane_b32 v179, s25, 7
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v88, s11, v1
	s_mov_b32 s94, 0x7ffffffe
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v89, s0, v4
	s_mul_i32 s0, s42, 20
	s_mov_b32 s18, s94
	v_writelane_b32 v179, s0, 8
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, s95
	v_dual_mov_b32 v2, 0x5410 :: v_dual_add_nc_u32 v91, s10, v88
	v_writelane_b32 v179, s16, 9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v94, v89 :: v_dual_and_b32 v1, 16, v0
	v_mov_b32_e32 v96, v89
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v79, 6, v0
	v_writelane_b32 v179, s17, 10
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_mov_b32_e32 v1, 0x7632
	v_or_b32_e32 v80, 24, v68
	s_mov_b32 s8, 0
	v_writelane_b32 v179, s18, 11
	v_cndmask_b32_e32 v2, 0x1054, v2, vcc_lo
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
	v_or_b32_e32 v81, 56, v68
	v_subrev_nc_u32_e32 v90, s9, v88
	v_writelane_b32 v179, s19, 12
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v1, v1, 8, v1
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v179, s74, 13
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v95, v89 :: v_dual_and_b32 v2, 0x540054, v2
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v16, s15 :: v_dual_and_b32 v1, 0x760076, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v179, s40, 14
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v82, 12, v79
	v_or_b32_e32 v83, 28, v79
	v_or_b32_e32 v84, 44, v79
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[60:61], null, s40, v80, v[49:50]
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v85, 60, v79
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[61:62], null, s40, v81, v[49:50]
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s93, s47, 0xffff
	s_mov_b32 s92, s46
	s_mov_b32 s46, s94
	s_mov_b32 s47, s95
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[62:63], null, s42, v79, v[50:51]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v1, v1, 4, v1
	v_writelane_b32 v179, s44, 15
	v_mad_u64_u32 v[63:64], null, s42, v82, v[50:51]
	v_mad_u64_u32 v[64:65], null, s42, v83, v[50:51]
	v_mad_u64_u32 v[65:66], null, s42, v84, v[50:51]
	v_mad_u64_u32 v[66:67], null, s42, v85, v[50:51]
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v87, 62, v3
	v_dual_mov_b32 v14, s13 :: v_dual_lshlrev_b32 v3, 1, v70
	v_and_b32_e32 v4, 0x60, v0
	v_dual_mov_b32 v12, s11 :: v_dual_and_b32 v67, 0x5040504, v2
	v_dual_mov_b32 v15, s14 :: v_dual_and_b32 v92, 0x7060706, v1
	v_dual_mov_b32 v13, s12 :: v_dual_and_b32 v2, 0x1fe, v69
	v_mov_b32_e32 v1, 0
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v179, s45, 16
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v86, v0, 4, 1
	v_add3_u32 v93, 0, v3, v4
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_mov_b32 v10, s9
	v_mov_b32_e32 v11, s10
	v_dual_mov_b32 v9, s8 :: v_dual_mov_b32 v4, v1
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v97, 0, v2
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v98, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v179, s46, 17
	s_lshl_b32 s48, s40, 4
	s_lshl_b32 s49, s40, 5
	s_mul_i32 s50, s40, 40
	s_mul_i32 s100, s40, 48
	s_lshl_b32 s52, s42, 2
	s_lshl_b32 s53, s42, 3
	s_lshl_b32 s54, s42, 4
	s_mul_i32 s56, s42, 24
	s_lshl_b32 s57, s42, 5
	s_mul_i32 s58, s42, 36
	s_mul_i32 s59, s42, 40
	s_mul_i32 s60, s42, 48
	s_mul_i32 s61, s42, 52
	s_mul_i32 s62, s42, 56
	s_mov_b32 s63, 0x76543210
	v_writelane_b32 v179, s47, 18
                                        ; implicit-def: $vgpr178 : SGPR spill to VGPR lane
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v100.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_mov_b16_e64 v103.h, v132.l
	v_mov_b16_e64 v131.h, v131.l
	v_mov_b16_e32 v103.l, v100.l
	v_mov_b16_e64 v131.l, v100.l
	v_mov_b16_e64 v132.l, v100.l
	v_mov_b16_e64 v132.h, v129.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v43, v95, v43 :: v_dual_mul_f32 v44, v96, v44
	v_dual_mul_f32 v42, v94, v42 :: v_dual_mul_f32 v41, v89, v41
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_mov_b16_e64 v130.h, v128.l
	v_mov_b16_e64 v128.l, v100.l
	v_mov_b16_e64 v128.h, v127.l
	v_mov_b16_e32 v127.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v127.h, v126.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v94, v46 :: v_dual_mul_f32 v45, v89, v45
	v_dual_mul_f32 v21, v96, v21 :: v_dual_mul_f32 v20, v95, v20
	v_dual_mul_f32 v19, v94, v19 :: v_dual_mul_f32 v18, v89, v18
	v_dual_mul_f32 v25, v96, v25 :: v_dual_mul_f32 v24, v95, v24
	v_dual_mul_f32 v23, v94, v23 :: v_dual_mul_f32 v22, v89, v22
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v113.h, v115.l
	v_mov_b16_e32 v115.l, v100.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v115.h, v114.l
	v_mov_b16_e32 v114.l, v100.l
	v_mov_b16_e32 v114.h, v109.l
	v_mov_b16_e32 v109.l, v100.l
	v_mov_b16_e32 v109.h, v107.l
	v_mov_b16_e32 v107.l, v100.l
	v_mov_b16_e32 v107.h, v106.l
	v_mov_b16_e32 v106.l, v100.l
	v_mov_b16_e32 v106.h, v105.l
	v_mov_b16_e32 v105.l, v100.l
	v_mov_b16_e32 v105.h, v104.l
	v_mov_b16_e32 v104.l, v100.l
	v_mov_b16_e32 v104.h, v101.l
	v_mov_b16_e32 v101.l, v100.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v101.h, v111.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v112.h, v110.l
	v_mov_b16_e32 v110.l, v100.l
	v_mov_b16_e32 v110.h, v108.l
	v_mov_b16_e32 v108.l, v100.l
	v_mov_b16_e32 v108.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v26, v94, v26 :: v_dual_mul_f32 v17, v89, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v100.h, v133.l
	v_mov_b16_e64 v129.l, v100.l
	v_mov_b16_e64 v129.h, v130.l
	v_mov_b16_e64 v130.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v96, v48 :: v_dual_mul_f32 v47, v95, v47
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_dual_mul_f32 v37, v94, v37 :: v_dual_mul_f32 v36, v89, v36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v117.h, v116.l
	v_mov_b16_e32 v116.l, v100.l
	v_mov_b16_e32 v116.h, v113.l
	v_mov_b16_e32 v113.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v35, v35
	v_dual_mul_f32 v41, v41, v132 :: v_dual_mul_f32 v42, v42, v131
	v_dual_mul_f32 v44, v44, v103 :: v_dual_mul_f32 v43, v43, v100
	v_dual_mul_f32 v45, v45, v127 :: v_dual_mul_f32 v46, v46, v128
	v_dual_mul_f32 v18, v18, v101 :: v_dual_mul_f32 v19, v19, v104
	v_dual_mul_f32 v20, v20, v105 :: v_dual_mul_f32 v21, v21, v106
	v_dual_mul_f32 v22, v22, v107 :: v_dual_mul_f32 v23, v23, v109
	v_dual_mul_f32 v24, v24, v114 :: v_dual_mul_f32 v25, v25, v115
	v_dual_mul_f32 v17, v17, v108 :: v_dual_mul_f32 v26, v26, v110
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v126.l, v100.l
	v_mov_b16_e32 v126.h, v125.l
	v_mov_b16_e32 v125.l, v100.l
	v_mov_b16_e32 v125.h, v124.l
	v_mov_b16_e32 v124.l, v100.l
	v_mov_b16_e32 v124.h, v123.l
	v_mov_b16_e32 v123.l, v100.l
	v_mov_b16_e32 v123.h, v121.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v30, v96, v30 :: v_dual_mul_f32 v29, v95, v29
	v_dual_mul_f32 v28, v94, v28 :: v_dual_mul_f32 v27, v89, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v121.l, v100.l
	v_mov_b16_e32 v121.h, v122.l
	v_mov_b16_e32 v122.l, v100.l
	v_mov_b16_e32 v122.h, v120.l
	v_mov_b16_e32 v120.l, v100.l
	v_mov_b16_e32 v120.h, v119.l
	v_mov_b16_e32 v119.l, v100.l
	v_mov_b16_e32 v119.h, v118.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v96, v34 :: v_dual_mul_f32 v33, v95, v33
	v_dual_mul_f32 v32, v94, v32 :: v_dual_mul_f32 v31, v89, v31
	v_dual_mul_f32 v38, v95, v38 :: v_dual_mul_f32 v39, v96, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v118.h, v117.l
	v_mov_b16_e32 v117.l, v100.l
	v_mov_b16_e32 v111.l, v100.l
	v_mov_b16_e32 v111.h, v112.l
	v_mov_b16_e32 v112.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v96, v40 :: v_dual_mul_f32 v35, v95, v35
	v_dual_mul_f32 v47, v47, v130 :: v_dual_mul_f32 v48, v48, v129
	v_dual_mul_f32 v36, v36, v113 :: v_dual_mul_f32 v37, v37, v116
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s86
	v_cndmask_b32_e64 v42, 0xff800000, v42, s38
	v_cndmask_b32_e64 v41, 0xff800000, v41, s72
	v_cndmask_b32_e64 v46, 0xff800000, v46, s4
	v_cndmask_b32_e64 v45, 0xff800000, v45, s83
	v_cndmask_b32_e64 v26, 0xff800000, v26, s90
	v_cndmask_b32_e64 v21, 0xff800000, v21, s82
	v_cndmask_b32_e64 v20, 0xff800000, v20, s99
	v_cndmask_b32_e64 v19, 0xff800000, v19, s76
	v_cndmask_b32_e64 v102, 0xff800000, v18, s103
	v_cndmask_b32_e64 v25, 0xff800000, v25, s91
	v_cndmask_b32_e64 v24, 0xff800000, v24, s97
	v_cndmask_b32_e64 v23, 0xff800000, v23, s79
	v_cndmask_b32_e64 v22, 0xff800000, v22, s101
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v118.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v27, v27, v123 :: v_dual_mul_f32 v28, v28, v124
	v_dual_mul_f32 v29, v29, v125 :: v_dual_mul_f32 v30, v30, v126
	v_dual_mul_f32 v31, v31, v119 :: v_dual_mul_f32 v32, v32, v120
	v_dual_mul_f32 v33, v33, v122 :: v_dual_mul_f32 v34, v34, v121
	v_dual_mul_f32 v39, v39, v117 :: v_dual_mul_f32 v38, v38, v118
	v_dual_mul_f32 v35, v35, v112 :: v_dual_mul_f32 v40, v40, v111
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v43, s104
	v_cndmask_b32_e64 v48, 0xff800000, v48, s5
	v_cndmask_b32_e64 v47, 0xff800000, v47, s80
	v_cndmask_b32_e64 v101, 0xff800000, v17, s75
	v_cndmask_b32_e64 v37, 0xff800000, v37, s69
	v_cndmask_b32_e64 v36, 0xff800000, v36, s71
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v41, v42
	v_max3_f32 v18, v44, v45, v46
	v_max3_f32 v104, v102, v19, v20
	v_max3_f32 v105, v21, v22, v23
	v_max3_f32 v106, v24, v25, v26
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s65
	v_cndmask_b32_e64 v35, 0xff800000, v35, s70
	v_cndmask_b32_e64 v30, 0xff800000, v30, s88
	v_cndmask_b32_e64 v29, 0xff800000, v29, s81
	v_cndmask_b32_e64 v28, 0xff800000, v28, s89
	v_cndmask_b32_e64 v27, 0xff800000, v27, s2
	v_cndmask_b32_e64 v34, 0xff800000, v34, s84
	v_cndmask_b32_e64 v33, 0xff800000, v33, s96
	v_cndmask_b32_e64 v32, 0xff800000, v32, s85
	v_cndmask_b32_e64 v31, 0xff800000, v31, s87
	v_cndmask_b32_e64 v39, 0xff800000, v39, s55
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v103, v47, v48, v101
	v_max_f32_e32 v110, v36, v37
	v_max3_f32 v17, v17, v43, v18
	v_max3_f32 v18, v104, v105, v106
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s68
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v107, v27, v28, v29
	v_max3_f32 v108, v30, v31, v32
	v_max3_f32 v109, v33, v34, v35
	v_max3_f32 v17, v17, v103, v18
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, s102, v79
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v111, v39, v40
.Ltmp8:
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s19, s64, s42
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v104, v107, v108, v109
.Ltmp10:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v105, v110, v38, v111
	v_max3_f32 v17, v17, v104, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v18, v17, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v17, v99, v17, v18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v106, s102, v82
	v_add_nc_u32_e32 v114, s102, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v45, v45, v17 :: v_dual_add_nc_u32 v110, s102, v83
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v18, v99, v17
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v27, v27, v17
	v_dual_sub_f32 v20, v20, v17 :: v_dual_add_nc_u32 v115, 48, v103
	v_sub_f32_e32 v24, v24, v17
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v27
	v_add_nc_u32_e32 v27, s19, v62
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v104, 4, v103
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v20
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v17
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v105, 8, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v20, v27, s52, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v19, v17
	v_sub_f32_e32 v26, v26, v17
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v18, 0, v18, vcc_lo
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v103
	v_cmp_gt_i32_e64 s0, s67, v104
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v19
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v19, 1, v27
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v22, v22, v17 :: v_dual_add_nc_u32 v117, 56, v103
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 892 26 is_stmt 1              ; attention.py:892:26
	s_and_b32 vcc_lo, s74, vcc_lo
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v99, v101, v17 :: v_dual_add_nc_u32 v116, 52, v103
	v_sub_f32_e32 v101, v102, v17
	v_dual_sub_f32 v102, v28, v17 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s0, v179, 8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v22
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v22, s19, v63, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v21, v17
	v_dual_sub_f32 v42, v42, v17 :: v_dual_add_nc_u32 v107, 16, v103
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v43, v43, v17 :: v_dual_add_nc_u32 v108, 20, v103
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v130, v24
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v24, v27, s0, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v23, v17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v127, v21
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v21, v27, s53, 1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s72
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v44, v44, v17 :: v_dual_add_nc_u32 v109, 24, v103
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v107
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v26
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v26, s19, v64, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v25, v25, v17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v129, v23
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v23, v27, s54, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v46, v46, v17 :: v_dual_add_nc_u32 v111, 32, v103
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.l, v41.h
	v_mov_b16_e32 v110.h, v100.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s6
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v109
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v47, v47, v17 :: v_dual_add_nc_u32 v112, 36, v103
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s7
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v25
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v25, v27, s56, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v17 :: v_dual_add_nc_u32 v113, 40, v103
	v_dual_sub_f32 v120, v30, v17 :: v_dual_cndmask_b32 v23, 0x80000000, v23
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v44, v44
	.loc	1 892 26 is_stmt 1              ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s8
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v111
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s9
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v112
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v28, v27, s57, 1
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_mul_f32 v8, v8, v18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s10
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v113
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v30, v27, s59, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v29, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v29, v27, s58, 1
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s11
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v114
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s38
	v_cndmask_b32_e64 v44, 0, v44, s86
	v_cndmask_b32_e64 v43, 0, v43, s104
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s13
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v115
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e32 v30, 0x80000000, v30, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v32, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v32, v27, s60, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v31, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v31, s19, v65, 1
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v18 :: v_dual_add_nc_u32 v118, s102, v85
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v116
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.l, v42.h
	v_mov_b16_e32 v109.h, v100.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v34, v17
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s19, v66, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v33, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v33, v27, s61, 1
	v_cndmask_b32_e32 v31, 0x80000000, v31, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s15
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v118
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v27, v27, s62, 1
	v_cndmask_b32_e32 v32, 0x80000000, v32, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v109, 1, v109
	v_mov_b16_e32 v111.l, v44.h
	v_mov_b16_e32 v111.h, v100.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v110, v41, v110, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v103, 0x80000000, v27, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s74, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v109, v42, v109, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s0, v41, v41
	v_and_b32_e32 v111, 1, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s83
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v109.h, vcc_lo
	v_cndmask_b16 v42.l, 0x7fff, v110.h, s0
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v43, v44
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v111, v44, v111, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_mov_b16_e32 v44.l, v45.h
	v_mov_b16_e32 v44.h, v100.l
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v19, v19, s[92:95], 0 offen
	buffer_load_u16 v20, v20, s[92:95], 0 offen
	buffer_load_u16 v21, v21, s[92:95], 0 offen
	buffer_load_u16 v22, v22, s[92:95], 0 offen
	buffer_load_u16 v23, v23, s[92:95], 0 offen
	buffer_load_u16 v24, v24, s[92:95], 0 offen
	buffer_load_u16 v25, v25, s[92:95], 0 offen
	buffer_load_u16 v26, v26, s[92:95], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v112.l, v43.h
	v_mov_b16_e32 v112.h, v100.l
	v_and_b32_e32 v44, 1, v44
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x7
	buffer_load_u16 v27, v28, s[92:95], 0 offen
	buffer_load_u16 v28, v29, s[92:95], 0 offen
	buffer_load_u16 v29, v30, s[92:95], 0 offen
	buffer_load_u16 v30, v31, s[92:95], 0 offen
	buffer_load_u16 v31, v32, s[92:95], 0 offen
	buffer_load_u16 v32, v33, s[92:95], 0 offen
	buffer_load_u16 v33, v103, s[92:95], 0 offen
	buffer_load_u16 v34, v34, s[92:95], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v112
	v_cmp_o_f32_e64 s0, v43, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v109, v43, v109, 0x7fff
	v_mov_b16_e32 v43.h, v100.l
	v_add3_u32 v44, v45, v44, 0x7fff
	v_mov_b16_e32 v43.l, v46.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s5
	v_cndmask_b32_e64 v47, 0, v47, s80
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.h, v100.l
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v110
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v43, 1, v43
	v_cndmask_b16 v110.h, 0x7fff, v111.h, vcc_lo
	v_cndmask_b16 v110.l, 0x7fff, v109.h, s0
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v45, v46
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_add3_u32 v43, v46, v43, 0x7fff
	v_cmp_o_f32_e64 s0, v45, v45
	v_mov_b16_e32 v45.l, v48.h
	v_mov_b16_e32 v46.l, v47.h
	v_mov_b16_e32 v46.h, v100.l
	v_mov_b16_e32 v45.h, v100.l
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v47, v48
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s103
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v46
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v46, v109, v111 :: v_dual_and_b32 v45, 1, v45
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s75
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v39, v39, v17 :: v_dual_mul_f32 v6, v6, v18
	v_dual_sub_f32 v40, v40, v17 :: v_dual_mul_f32 v7, v7, v18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v44, v47, v44, 0x7fff
	v_add3_u32 v45, v48, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_mov_b16_e32 v48.l, v101.h
	v_mov_b16_e32 v109.l, v99.h
	v_mov_b16_e32 v109.h, v100.l
	v_mov_b16_e32 v48.h, v100.l
	v_cmp_o_f32_e64 s0, v47, v47
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v121
	v_exp_f32_e32 v106, v122
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v41, v41, v46 :: v_dual_and_b32 v46, 1, v109
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v126, s99
	v_cndmask_b32_e64 v114, 0, v131, s91
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v47, 1, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v125, s76
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v99, v46, 0x7fff
	v_mov_b16_e32 v109.l, v44.h
	v_mov_b16_e32 v111.h, v100.l
	v_cmp_o_f32_e64 s0, v99, v99
	v_mov_b16_e32 v111.l, v48.h
	v_add3_u32 v47, v101, v47, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v101, v101
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v101
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v128, s101
	v_cndmask_b32_e64 v112, 0, v127, s82
	v_cndmask_b32_e64 v106, 0, v106, s85
	v_cndmask_b32_e64 v105, 0, v105, s87
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v101, 1, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s65
	v_cndmask_b32_e64 v39, 0, v39, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v109
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v48, v44
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v101, v48, v101, 0x7fff
	v_mov_b16_e32 v113.l, v46.h
	v_add3_u32 v109, v44, v109, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cmp_o_f32_e64 s0, v48, v48
	v_mov_b16_e32 v44.l, v112.h
	v_mov_b16_e32 v44.h, v100.l
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v99, v99, v111 :: v_dual_and_b32 v48, 1, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v109.l, 0x7fff, v101.h, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v130, s97
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v129, s79
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v109.h, 0x7fff, v109.h, vcc_lo
	v_add3_u32 v48, v46, v48, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v112, v46
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v44, v112, v44, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v111, v101
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v111.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v102, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v44.h, s0
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v46, v112
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v101.h
	v_mov_b16_e32 v46.h, v100.l
	v_and_b32_e32 v112, 1, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v132, s90
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.l, v114.h
	v_mov_b16_e32 v115.h, v100.l
	v_and_b32_e32 v46, 1, v46
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v44, v99, v44
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v99, v111, v112, 0x7fff
	v_mov_b16_e32 v112.l, v113.h
	v_mov_b16_e32 v112.h, v100.l
	v_add3_u32 v46, v101, v46, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_cmp_o_f32_e64 s0, v111, v111
	v_and_b32_e32 v101, 1, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s81
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v112
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v104, s88
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v107, v123
	v_exp_f32_e32 v108, v124
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v115.l, v103.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v44
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v44.h, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v44.l, 0x7fff, v99.h, s0
	v_add3_u32 v46, v114, v101, 0x7fff
	v_cmp_o_f32_e64 s0, v114, v114
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v102, s89
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v99, v113, v111, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v133, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.l, 0x7fff, v46.h, s0
	v_mov_b16_e32 v46.l, v101.h
	v_mov_b16_e32 v46.h, v100.l
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v114, v113
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v99.h, vcc_lo
	v_mov_b16_e32 v99.l, v111.h
	v_mov_b16_e32 v99.h, v100.l
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v113, v111, v101 :: v_dual_and_b32 v46, 1, v46
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v114.l, v104.h
	v_mov_b16_e32 v114.h, v100.l
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v99, 1, v99
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_add3_u32 v46, v101, v46, 0x7fff
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v101, v102, v113 :: v_dual_and_b32 v102, 1, v115
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v114
	v_add3_u32 v99, v111, v99, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v111, v111
	v_add3_u32 v102, v103, v102, 0x7fff
	v_add3_u32 v111, v104, v113, 0x7fff
	v_cmp_o_f32_e64 s0, v104, v104
	v_cmp_o_f32_e64 s1, v103, v103
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v35, v35, v17 :: v_dual_mul_f32 v2, v2, v18
	v_dual_sub_f32 v36, v36, v17 :: v_dual_mul_f32 v3, v3, v18
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.l, 0x7fff, v99.h, vcc_lo
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v103, v104
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v104.h, 0x7fff, v111.h, s0
	v_cndmask_b16 v104.l, 0x7fff, v102.h, s1
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v105, v106
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.l, v106.h
	v_mov_b16_e32 v103.h, v100.l
	v_mov_b16_e32 v111.l, v105.h
	v_mov_b16_e32 v111.h, v100.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s84
	v_cndmask_b32_e64 v107, 0, v107, s96
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v37, v37, v17 :: v_dual_mul_f32 v4, v4, v18
	v_dual_sub_f32 v38, v38, v17 :: v_dual_mul_f32 v5, v5, v18
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
.Ltmp54:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v99, v99, v102 :: v_dual_and_b32 v102, 1, v103
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v111
	v_mov_b16_e32 v111.l, v108.h
	v_mov_b16_e32 v113.l, v107.h
	v_mov_b16_e32 v113.h, v100.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v106, v102, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_and_b32_e32 v106, 1, v111
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v101, v99
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v101, 1, v113
	v_add3_u32 v103, v105, v103, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v102.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_cmp_o_f32_e64 s1, v107, v107
	v_add3_u32 v101, v107, v101, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s71
	v_cndmask_b32_e64 v35, 0, v35, s70
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v108, v106, 0x7fff
	v_cmp_o_f32_e64 s0, v108, v108
	v_cndmask_b16 v131.l, 0x7fff, v103.h, vcc_lo
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v107, v108
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.l, 0x7fff, v101.h, s1
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v35, v36
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v105.l, v35.h
	v_mov_b16_e32 v105.h, v100.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s68
	v_cndmask_b32_e64 v37, 0, v37, s69
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.h, 0x7fff, v102.h, s0
	v_mov_b16_e32 v102.l, v36.h
	v_mov_b16_e32 v102.h, v100.l
	v_and_b32_e32 v105, 1, v105
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v103, v101
	v_dual_add_f32 v103, v37, v38 :: v_dual_add_f32 v106, v39, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v102, 1, v102
	v_add3_u32 v105, v35, v105, 0x7fff
	v_cmp_o_f32_e64 s0, v35, v35
	v_cmp_o_f32_e32 vcc_lo, v36, v36
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v103, v106
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v36, v102, 0x7fff
	v_mov_b16_e32 v36.l, v38.h
	v_mov_b16_e32 v36.h, v100.l
	v_mov_b16_e32 v103.l, v37.h
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v101, v35
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v100.l
	v_cndmask_b16 v133.h, 0x7fff, v102.h, vcc_lo
	v_mov_b16_e32 v102.l, v39.h
	v_mov_b16_e32 v102.h, v100.l
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v99, v35
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v99.l, v40.h
	v_mov_b16_e32 v99.h, v100.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b16 v97, v19
	s_waitcnt vmcnt(14)
	ds_store_b16 v97, v20 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b16 v97, v21 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b16 v97, v22 offset:1536
	s_waitcnt vmcnt(11)
	ds_store_b16 v97, v23 offset:2048
	s_waitcnt vmcnt(10)
	ds_store_b16 v97, v24 offset:2560
	s_waitcnt vmcnt(9)
	ds_store_b16 v97, v25 offset:3072
	s_waitcnt vmcnt(8)
	ds_store_b16 v97, v26 offset:3584
	s_waitcnt vmcnt(7)
	ds_store_b16 v97, v27 offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b16 v97, v28 offset:4608
	s_waitcnt vmcnt(5)
	ds_store_b16 v97, v29 offset:5120
	s_waitcnt vmcnt(4)
	ds_store_b16 v97, v30 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v97, v31 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v97, v32 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v97, v33 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v97, v34 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v19, v93
	ds_load_u16_d16 v20, v93 offset:256
	ds_load_u16_d16 v21, v93 offset:512
	ds_load_u16_d16 v22, v93 offset:768
	ds_load_u16_d16 v23, v93 offset:1024
	ds_load_u16_d16 v24, v93 offset:1280
	ds_load_u16_d16 v25, v93 offset:1536
	ds_load_u16_d16 v26, v93 offset:1792
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v36, 1, v36
	v_and_b32_e32 v101, 1, v103
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v41, v35
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v102
	v_and_b32_e32 v99, 1, v99
	v_cndmask_b16 v133.l, 0x7fff, v105.h, s0
	v_add3_u32 v100, v37, v101, 0x7fff
	v_add3_u32 v36, v38, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s0, v37, v37
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v37, v35, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v39, v41, 0x7fff
	v_add3_u32 v41, v40, v99, 0x7fff
	v_cmp_o_f32_e64 s1, v40, v40
	v_cmp_o_f32_e64 s6, v39, v39
	v_cndmask_b16 v134.l, 0x7fff, v100.h, s0
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v42, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v135.h, 0x7fff, v41.h, s1
	v_permlanex16_b32 v39, v110, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v43, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v99, v45, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v100, v47, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v101, v109, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v105, v112, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v134.h, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v135.l, 0x7fff, v38.h, s6
	v_perm_b32 v36, v37, v42, v67
	v_perm_b32 v37, v37, v42, v92
	v_perm_b32 v38, v39, v110, v67
	v_perm_b32 v39, v39, v110, v92
	v_perm_b32 v40, v41, v43, v67
	v_perm_b32 v41, v41, v43, v92
	v_perm_b32 v42, v99, v45, v67
	v_perm_b32 v43, v99, v45, v92
	v_perm_b32 v27, v100, v47, v67
	v_perm_b32 v28, v100, v47, v92
	v_perm_b32 v29, v101, v109, v67
	v_perm_b32 v30, v101, v109, v92
	v_perm_b32 v99, v105, v112, v67
	v_perm_b32 v100, v105, v112, v92
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v19, v93 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v20, v93 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v21, v93 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v22, v93 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v23, v93 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v24, v93 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v25, v93 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v26, v93 offset:1920
	ds_load_u16_d16 v107, v93 offset:2048
	ds_load_u16_d16 v108, v93 offset:2304
	ds_load_u16_d16 v109, v93 offset:2560
	ds_load_u16_d16 v110, v93 offset:2816
	ds_load_u16_d16 v111, v93 offset:3072
	ds_load_u16_d16 v112, v93 offset:3328
	ds_load_u16_d16 v113, v93 offset:3584
	ds_load_u16_d16 v114, v93 offset:3840
	ds_load_u16_d16 v115, v93 offset:4096
	ds_load_u16_d16 v116, v93 offset:4352
	ds_load_u16_d16 v117, v93 offset:4608
	ds_load_u16_d16 v118, v93 offset:4864
	ds_load_u16_d16 v119, v93 offset:5120
	ds_load_u16_d16 v120, v93 offset:5376
	ds_load_u16_d16 v121, v93 offset:5632
	ds_load_u16_d16 v122, v93 offset:5888
	ds_load_u16_d16 v123, v93 offset:6144
	ds_load_u16_d16 v124, v93 offset:6400
	ds_load_u16_d16 v125, v93 offset:6656
	ds_load_u16_d16 v126, v93 offset:6912
	ds_load_u16_d16 v127, v93 offset:7168
	ds_load_u16_d16 v128, v93 offset:7424
	ds_load_u16_d16 v129, v93 offset:7680
	ds_load_u16_d16 v130, v93 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v102, v48, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v103, v44, s63, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v107, v93 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v108, v93 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v109, v93 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v110, v93 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v93 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v112, v93 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v113, v93 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v114, v93 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v93 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v116, v93 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v117, v93 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v118, v93 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v93 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v120, v93 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v121, v93 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v122, v93 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v93 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v93 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v125, v93 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v126, v93 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v127, v93 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v128, v93 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v129, v93 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v130, v93 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v106, v46, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v136, v104, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v137, v131, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v31, v102, v48, v67
	v_perm_b32 v32, v102, v48, v92
	v_perm_b32 v33, v103, v44, v67
	v_perm_b32 v34, v103, v44, v92
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[36:43], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v138, v132, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v139, v133, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v140, v134, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v141, v135, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v106, v46, v67
	v_perm_b32 v102, v106, v46, v92
	v_perm_b32 v103, v136, v104, v67
	v_perm_b32 v104, v136, v104, v92
	v_perm_b32 v105, v137, v131, v67
	v_perm_b32 v106, v137, v131, v92
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[107:114], v[27:34], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v19, v138, v132, v67
	v_perm_b32 v20, v138, v132, v92
	v_perm_b32 v21, v139, v133, v67
	v_perm_b32 v22, v139, v133, v92
	v_perm_b32 v23, v140, v134, v67
	v_perm_b32 v24, v140, v134, v92
	v_perm_b32 v25, v141, v135, v67
	v_perm_b32 v26, v141, v135, v92
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[115:122], v[99:106], v[1:8]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v35, v98, v18
	v_mov_b32_e32 v99, v17
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s102, s102, 64
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[19:26], v[1:8]
	v_mov_b32_e32 v98, v35
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s102, s43
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, s102, v68
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s64, s102, s3
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v18, s102, v80
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s0, s64, s40
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v25, s102, v81
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v26, s0, v71
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v22, s0, v51
	v_add_nc_u32_e32 v28, s0, v60
	v_add_nc_u32_e32 v32, s0, v61
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s0, s67, v19
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v23, 40, v17
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s67, v18
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s41, vcc_lo
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v20, 16, v17
	v_add_nc_u32_e32 v21, 32, v17
	v_add_nc_u32_e32 v30, s50, v22
	v_add_nc_u32_e32 v24, 48, v17
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v17, 0x80000000, v22, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s0
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v23
	v_cmp_gt_i32_e64 s1, s67, v20
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v26, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s6
	v_add_nc_u32_e32 v27, s48, v22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v20, 0x80000000, v28, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s67, v21
	v_add_nc_u32_e32 v29, s49, v22
	v_cmp_gt_i32_e64 s10, s67, v25
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s41, s8
	s_and_b32 s0, s41, s1
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v23, 0x80000000, v30, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s67, v24
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v19, 0x80000000, v27, s0
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s0, s41, s7
	v_add_nc_u32_e32 v31, s100, v22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v21, 0x80000000, v29, s0
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s0, s41, s10
	s_and_b32 s1, s41, s9
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v22, 0x80000000, v32, s0
	v_cndmask_b32_e64 v24, 0x80000000, v31, s1
	s_clause 0x7
	buffer_load_u8 v17, v17, s[44:47], 0 offen
	buffer_load_u8 v20, v20, s[44:47], 0 offen
	buffer_load_u8 v22, v22, s[44:47], 0 offen
	buffer_load_u8 v19, v19, s[44:47], 0 offen
	buffer_load_u8 v21, v21, s[44:47], 0 offen
	buffer_load_u8 v24, v24, s[44:47], 0 offen
	buffer_load_u8 v18, v18, s[44:47], 0 offen
	buffer_load_u8 v23, v23, s[44:47], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v103, s102, v86
	v_add_nc_u32_e32 v100, s102, v87
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v101, s64, v86, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, s64, v87, 1
	v_readlane_b32 s36, v179, 9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v103
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v150, 2, v103
	v_add_nc_u32_e32 v152, 4, v103
	v_add_nc_u32_e32 v154, 6, v103
	v_add_nc_u32_e32 v156, 8, v103
	v_add_nc_u32_e32 v157, 10, v103
	v_add_nc_u32_e32 v158, 12, v103
	v_add_nc_u32_e32 v159, 14, v103
	v_add_nc_u32_e32 v151, 26, v103
	v_add_nc_u32_e32 v153, 28, v103
	v_add_nc_u32_e32 v155, 30, v103
	v_add_nc_u32_e32 v146, 36, v103
	v_add_nc_u32_e32 v145, 38, v103
	v_add_nc_u32_e32 v144, 40, v103
	v_add_nc_u32_e32 v137, 42, v103
	v_add_nc_u32_e32 v138, 44, v103
	v_add_nc_u32_e32 v160, 32, v103
	v_add_nc_u32_e32 v161, 34, v103
	v_add_nc_u32_e32 v147, 20, v103
	v_add_nc_u32_e32 v148, 22, v103
	v_add_nc_u32_e32 v149, 24, v103
	v_add_nc_u32_e32 v139, 46, v103
	v_add_nc_u32_e32 v140, 48, v103
	v_add_nc_u32_e32 v141, 50, v103
	v_add_nc_u32_e32 v136, 56, v103
	v_add_nc_u32_e32 v134, 58, v103
	v_add_nc_u32_e32 v135, 60, v103
	v_add_nc_u32_e32 v142, 54, v103
	v_add_nc_u32_e32 v162, 18, v103
	v_add_nc_u32_e32 v163, 16, v103
	v_add_nc_u32_e32 v143, 52, v103
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s0, s67, v100
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v128, 4, v101
	v_add_nc_u32_e32 v129, 8, v101
	v_add_nc_u32_e32 v130, 12, v101
	v_add_nc_u32_e32 v131, 16, v101
	v_add_nc_u32_e32 v132, 20, v101
	v_add_nc_u32_e32 v133, 24, v101
	v_add_nc_u32_e32 v164, 28, v101
	v_add_nc_u32_e32 v165, 32, v101
	v_add_nc_u32_e32 v166, 36, v101
	v_add_nc_u32_e32 v167, 40, v101
	v_add_nc_u32_e32 v168, 44, v101
	v_add_nc_u32_e32 v169, 48, v101
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s67, v152
	v_cmp_gt_i32_e64 s23, s67, v154
	v_cmp_gt_i32_e64 s29, s67, v156
	v_cmp_gt_i32_e64 s28, s67, v157
	v_cmp_gt_i32_e64 s27, s67, v158
	v_cmp_gt_i32_e64 s26, s67, v159
	v_cmp_gt_i32_e64 s21, s67, v151
	v_cmp_gt_i32_e64 s20, s67, v153
	v_cmp_gt_i32_e64 s19, s67, v155
	v_cmp_gt_i32_e64 s12, s67, v146
	v_cmp_gt_i32_e64 s11, s67, v145
	v_cmp_gt_i32_e64 s10, s67, v144
	v_cmp_gt_i32_e64 s9, s67, v137
	v_cmp_gt_i32_e64 s16, s67, v138
	v_cmp_gt_i32_e64 s31, s67, v160
	v_cmp_gt_i32_e64 s33, s67, v161
	v_cmp_gt_i32_e64 s18, s67, v147
	v_cmp_gt_i32_e64 s17, s67, v148
	v_cmp_gt_i32_e64 s22, s67, v149
	v_cmp_gt_i32_e64 s15, s67, v139
	v_cmp_gt_i32_e64 s14, s67, v140
	v_cmp_gt_i32_e64 s13, s67, v141
	v_cmp_gt_i32_e64 s6, s67, v136
	v_cmp_gt_i32_e64 s1, s67, v134
	v_cmp_gt_i32_e64 s7, s67, v135
	v_cmp_gt_i32_e64 s8, s67, v142
	v_cmp_gt_i32_e64 s34, s67, v162
	v_cmp_gt_i32_e64 s35, s67, v163
	v_cmp_gt_i32_e64 s30, s67, v143
	v_readlane_b32 s37, v179, 10
	v_readlane_b32 s38, v179, 11
	v_readlane_b32 s39, v179, 12
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v170, 0x80000000, v102, s0
	v_cndmask_b32_e64 v166, 0x80000000, v166, s34
	v_cndmask_b32_e64 v165, 0x80000000, v165, s35
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s72, s51, vcc_lo
	s_and_b32 s104, s51, s24
	s_and_b32 s86, s51, s23
	s_and_b32 s83, s51, s29
	s_and_b32 s4, s51, s28
	s_and_b32 s80, s51, s27
	s_and_b32 s5, s51, s26
	s_and_b32 s75, s51, s35
	s_and_b32 s103, s51, s34
	s_and_b32 s76, s51, s18
	s_and_b32 s99, s51, s17
	s_and_b32 s82, s51, s22
	s_and_b32 s101, s51, s21
	s_and_b32 s79, s51, s20
	s_and_b32 s97, s51, s19
	s_and_b32 s91, s51, s31
	s_and_b32 s90, s51, s33
	s_and_b32 s2, s51, s12
	s_and_b32 s89, s51, s11
	s_and_b32 s81, s51, s10
	s_and_b32 s88, s51, s9
	s_and_b32 s87, s51, s16
	s_and_b32 s85, s51, s15
	s_and_b32 s96, s51, s14
	s_and_b32 s84, s51, s13
	s_and_b32 s70, s51, s30
	s_and_b32 s71, s51, s8
	s_and_b32 s69, s51, s6
	s_and_b32 s68, s51, s1
	s_and_b32 s55, s51, s7
	s_and_b32 s65, s51, s0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(7)
	ds_store_b8 v72, v17
	s_waitcnt vmcnt(6)
	ds_store_b8 v73, v20 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v73, v22 offset:1536
	s_waitcnt vmcnt(4)
	ds_store_b8 v72, v19 offset:512
	s_waitcnt vmcnt(3)
	ds_store_b8 v72, v21 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v72, v24 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v73, v18
	s_waitcnt vmcnt(0)
	ds_store_b8 v73, v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[23:26], v74 offset1:1
	ds_load_2addr_stride64_b64 v[104:107], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[108:111], v75 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v75 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[116:119], v76 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v76 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[124:127], v77 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[52:53], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[52:53], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[104:107], v77 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[108:109], v[54:55], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[110:111], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[114:115], v[54:55], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v108, 52, v101
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[120:121], v[56:57], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v109, 56, v101
	v_add_nc_u32_e32 v110, 60, v101
	v_add_nc_u32_e32 v111, 64, v101
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[116:117], v[56:57], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[118:119], v[56:57], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v112, 0x44, v101
	v_add_nc_u32_e32 v113, 0x48, v101
	v_add_nc_u32_e32 v114, 0x4c, v101
	v_add_nc_u32_e32 v115, 0x50, v101
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[122:123], v[56:57], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v116, 0x54, v101
	v_add_nc_u32_e32 v117, 0x58, v101
	v_add_nc_u32_e32 v118, 0x5c, v101
	v_add_nc_u32_e32 v119, 0x60, v101
	v_add_nc_u32_e32 v120, 0x64, v101
	v_add_nc_u32_e32 v121, 0x68, v101
	v_add_nc_u32_e32 v122, 0x6c, v101
	v_add_nc_u32_e32 v123, 0x70, v101
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[104:105], v[58:59], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v104, 0x74, v101
	v_add_nc_u32_e32 v105, 0x78, v101
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s67, v150
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[106:107], v[58:59], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v106, 0x80000000, v129, s24
	v_cndmask_b32_e64 v107, 0x80000000, v130, s23
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[124:125], v[58:59], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v102, 0x80000000, v128, s25
	v_cndmask_b32_e64 v124, 0x80000000, v131, s29
	v_cndmask_b32_e64 v125, 0x80000000, v132, s28
	v_cndmask_b32_e64 v128, 0x80000000, v133, s27
	v_cndmask_b32_e64 v130, 0x80000000, v164, s26
	v_cndmask_b32_e64 v108, 0x80000000, v108, s21
	v_cndmask_b32_e64 v109, 0x80000000, v109, s20
	v_cndmask_b32_e64 v110, 0x80000000, v110, s19
	v_cndmask_b32_e64 v113, 0x80000000, v113, s12
	v_cndmask_b32_e64 v114, 0x80000000, v114, s11
	v_cndmask_b32_e64 v115, 0x80000000, v115, s10
	v_cndmask_b32_e64 v116, 0x80000000, v116, s9
	v_cndmask_b32_e64 v117, 0x80000000, v117, s16
	v_cndmask_b32_e64 v111, 0x80000000, v111, s31
	v_cndmask_b32_e64 v112, 0x80000000, v112, s33
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[58:59], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v164, 0x80000000, v167, s18
	v_cndmask_b32_e64 v167, 0x80000000, v168, s17
	v_cndmask_b32_e64 v168, 0x80000000, v169, s22
	v_cndmask_b32_e64 v169, 0x80000000, v118, s15
	v_cndmask_b32_e64 v171, 0x80000000, v119, s14
	v_cndmask_b32_e64 v172, 0x80000000, v120, s13
	v_cndmask_b32_e64 v173, 0x80000000, v123, s6
	v_cndmask_b32_e64 v174, 0x80000000, v104, s1
	v_cndmask_b32_e64 v175, 0x80000000, v105, s7
	v_cndmask_b32_e64 v176, 0x80000000, v122, s8
	v_cndmask_b32_e64 v177, 0x80000000, v121, s30
	s_clause 0x1f
	buffer_load_u16 v129, v101, s[36:39], 0 offen
	buffer_load_u16 v131, v102, s[36:39], 0 offen
	buffer_load_u16 v133, v106, s[36:39], 0 offen
	buffer_load_u16 v132, v107, s[36:39], 0 offen
	buffer_load_u16 v126, v124, s[36:39], 0 offen
	buffer_load_u16 v127, v125, s[36:39], 0 offen
	buffer_load_u16 v128, v128, s[36:39], 0 offen
	buffer_load_u16 v130, v130, s[36:39], 0 offen
	buffer_load_u16 v101, v164, s[36:39], 0 offen
	buffer_load_u16 v104, v167, s[36:39], 0 offen
	buffer_load_u16 v105, v168, s[36:39], 0 offen
	buffer_load_u16 v106, v108, s[36:39], 0 offen
	buffer_load_u16 v107, v109, s[36:39], 0 offen
	buffer_load_u16 v109, v110, s[36:39], 0 offen
	buffer_load_u16 v121, v113, s[36:39], 0 offen
	buffer_load_u16 v123, v114, s[36:39], 0 offen
	buffer_load_u16 v124, v115, s[36:39], 0 offen
	buffer_load_u16 v125, v116, s[36:39], 0 offen
	buffer_load_u16 v118, v117, s[36:39], 0 offen
	buffer_load_u16 v119, v169, s[36:39], 0 offen
	buffer_load_u16 v120, v171, s[36:39], 0 offen
	buffer_load_u16 v122, v172, s[36:39], 0 offen
	buffer_load_u16 v113, v173, s[36:39], 0 offen
	buffer_load_u16 v117, v174, s[36:39], 0 offen
	buffer_load_u16 v116, v175, s[36:39], 0 offen
	buffer_load_u16 v115, v176, s[36:39], 0 offen
	buffer_load_u16 v114, v111, s[36:39], 0 offen
	buffer_load_u16 v111, v166, s[36:39], 0 offen
	buffer_load_u16 v102, v165, s[36:39], 0 offen
	buffer_load_u16 v108, v112, s[36:39], 0 offen
	buffer_load_u16 v110, v177, s[36:39], 0 offen
	buffer_load_u16 v112, v170, s[36:39], 0 offen
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v78
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s38, s51, s25
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v103, v88
	v_cmp_le_i32_e64 s0, v150, v88
	v_cmp_le_i32_e64 s1, v152, v88
	v_cmp_le_i32_e64 s6, v154, v88
	v_cmp_le_i32_e64 s7, v156, v88
	v_cmp_le_i32_e64 s8, v157, v88
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s72
	s_and_b32 s0, s0, s38
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v158, v88
	v_cmp_le_i32_e64 s10, v159, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s104
	s_and_b32 s6, s6, s86
	s_and_not1_b32 s37, s72, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v163, v88
	v_cmp_le_i32_e64 s12, v162, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s83
	s_and_b32 s8, s8, s4
	s_or_b32 s72, s37, s36
	s_or_b32 s38, s38, s0
	s_and_not1_b32 s0, s104, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s36, s86, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v147, v88
	v_cmp_le_i32_e64 s14, v148, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s80
	s_and_b32 s10, s10, s5
	s_or_b32 s104, s0, s1
	s_or_b32 s86, s36, s6
	s_and_not1_b32 s0, s83, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s6, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v149, v88
	v_cmp_le_i32_e64 s16, v151, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s75
	s_and_b32 s12, s12, s103
	s_or_b32 s83, s0, s1
	s_or_b32 s4, s4, s6
	s_and_not1_b32 s0, s80, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s5, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v153, v88
	v_cmp_le_i32_e64 s18, v155, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s76
	s_and_b32 s14, s14, s99
	s_or_b32 s80, s0, s1
	s_or_b32 s5, s6, s7
	s_and_not1_b32 s0, s75, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s103, exec_lo
	s_and_b32 s7, s12, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v160, v88
	v_cmp_le_i32_e64 s20, v161, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s15, s82
	s_and_b32 s16, s16, s101
	s_or_b32 s75, s0, s1
	s_or_b32 s103, s6, s7
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s99, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v146, v88
	v_cmp_le_i32_e64 s22, v145, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s79
	s_and_b32 s18, s18, s97
	s_or_b32 s76, s0, s1
	s_or_b32 s99, s6, s7
	s_and_not1_b32 s0, s82, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s6, s101, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v144, v88
	v_cmp_le_i32_e64 s24, v137, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s91
	s_and_b32 s20, s20, s90
	s_or_b32 s82, s0, s1
	s_or_b32 s101, s6, s7
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s7, s18, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v138, v88
	v_cmp_le_i32_e64 s26, v139, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s2
	s_and_b32 s22, s22, s89
	s_or_b32 s79, s0, s1
	s_or_b32 s97, s6, s7
	s_and_not1_b32 s0, s91, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s90, exec_lo
	s_and_b32 s7, s20, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v140, v88
	v_cmp_le_i32_e64 s28, v141, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s81
	s_and_b32 s24, s24, s88
	s_or_b32 s91, s0, s1
	s_or_b32 s90, s6, s7
	s_and_not1_b32 s0, s2, exec_lo
	s_and_b32 s1, s21, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s7, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v143, v88
	v_cmp_le_i32_e64 s30, v142, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s87
	s_and_b32 s26, s26, s85
	s_or_b32 s2, s0, s1
	s_or_b32 s89, s6, s7
	s_and_not1_b32 s0, s81, exec_lo
	s_and_b32 s1, s23, exec_lo
	s_and_not1_b32 s6, s88, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v136, v88
	v_cmp_le_i32_e64 s33, v134, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s96
	s_and_b32 s28, s28, s84
	s_or_b32 s81, s0, s1
	s_or_b32 s88, s6, s7
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s85, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v135, v88
	v_cmp_le_i32_e64 s35, v100, v88
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s70
	s_and_b32 s30, s30, s71
	s_or_b32 s87, s0, s1
	s_or_b32 s85, s6, s7
	s_and_not1_b32 s0, s96, exec_lo
	s_and_b32 s1, s27, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s69
	s_and_b32 s33, s33, s68
	s_or_b32 s96, s0, s1
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s0, s70, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s71, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s55
	s_and_b32 s35, s35, s65
	s_or_b32 s70, s0, s1
	s_or_b32 s71, s6, s7
	s_and_not1_b32 s0, s69, exec_lo
	s_and_b32 s1, s31, exec_lo
	s_and_not1_b32 s6, s68, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s69, s0, s1
	s_or_b32 s68, s6, s7
	s_and_not1_b32 s0, s55, exec_lo
	s_and_b32 s1, s34, exec_lo
	s_and_not1_b32 s6, s65, exec_lo
	s_and_b32 s7, s35, exec_lo
	s_or_b32 s55, s0, s1
	s_or_b32 s65, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	v_readlane_b32 s0, v179, 0
	s_and_not1_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v163, v90
	v_cmp_ge_i32_e64 s9, v154, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v154, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v158, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v158, v91
	v_writelane_b32 v179, s19, 19
	v_cmp_le_i32_e64 s19, v163, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v155, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v155, v91
	s_mov_b32 s20, s100
	s_mov_b32 s100, s54
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v179, s19, 20
	v_cmp_ge_i32_e64 s19, v162, v90
	v_cmp_ge_i32_e64 s54, v134, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s63, v142, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s9, s10
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v134, v91
	v_writelane_b32 v179, s19, 21
	v_cmp_le_i32_e64 s19, v162, v91
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v152, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v152, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v150, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v150, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v179, s19, 22
	v_cmp_ge_i32_e64 s19, v160, v90
	v_cmp_ge_i32_e64 s17, v159, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v159, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v153, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v153, v91
	v_writelane_b32 v179, s19, 23
	v_cmp_le_i32_e64 s19, v160, v91
	s_mov_b32 s39, s103
	v_cmp_le_i32_e64 s103, v136, v91
	s_mov_b32 s66, s48
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s48, v139, v90
	v_writelane_b32 v179, s19, 24
	v_cmp_ge_i32_e64 s19, v161, v90
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s15, s16
	s_and_b32 s16, s34, s35
	s_and_b32 s9, s54, s9
	s_mov_b32 s54, s100
	v_writelane_b32 v179, s19, 25
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v142, v90
	s_mov_b32 s100, s20
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s7, s8
	s_mov_b32 s36, s71
	v_writelane_b32 v179, s70, 26
	s_and_b32 s35, s19, s63
	s_and_b32 s1, s1, s6
	s_and_b32 s6, s8, s104
	s_and_b32 s8, s10, s86
	v_writelane_b32 v179, s90, 27
	s_and_b32 s10, s17, s18
	s_and_b32 s17, s31, s33
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s37, v161, v91
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s35, s35, s36
	v_writelane_b32 v179, s91, 28
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v156, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v156, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v157, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v157, v91
	v_writelane_b32 v179, s102, 29
	s_mov_b32 s102, s53
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v136, v90
	v_cmp_ge_i32_e64 s25, v148, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v148, v91
	v_writelane_b32 v179, s92, 30
	v_writelane_b32 v178, s94, 0
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s33, s53, s103
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v146, v90
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s33, s69
	v_writelane_b32 v179, s93, 31
	v_writelane_b32 v178, s95, 1
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s93, v139, v91
	s_mov_b32 s70, s41
	v_cmp_le_i32_e64 s41, v146, v91
	.loc	1 867 21                        ; attention.py:867:21
	v_readlane_b32 s19, v179, 23
	v_readlane_b32 s20, v179, 24
	s_and_b32 s31, s48, s93
	s_mov_b32 s48, s66
	s_mov_b32 s66, s69
	s_mov_b32 s69, s36
	s_and_b32 s36, s19, s20
	v_readlane_b32 s19, v179, 25
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v143, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 vcc_hi, v143, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	v_readlane_b32 s20, v179, 22
	s_mov_b32 s78, s97
	s_and_b32 s37, s19, s37
	v_readlane_b32 s19, v179, 21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s97, v103, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s0, v103, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s12
	s_and_b32 s12, s13, s14
	s_and_b32 s13, s15, s80
	s_and_b32 s15, s25, s26
	s_and_b32 s26, s40, s41
	s_and_b32 s40, s21, vcc_hi
	s_and_b32 s21, s19, s20
	v_readlane_b32 s19, v179, 19
	v_readlane_b32 s20, v179, 20
	v_readlane_b32 s77, v179, 27
	s_and_b32 s0, s97, s0
	s_and_b32 s1, s1, s38
	s_and_b32 s0, s0, s72
	s_and_b32 s19, s19, s20
	s_and_b32 s20, s21, s39
	s_and_b32 s21, s37, s77
	s_and_not1_b32 s37, s72, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s1, s1, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v147, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v147, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s11, s11, s83
	s_and_b32 s12, s12, s4
	s_or_b32 s72, s37, s0
	s_or_b32 s38, s38, s1
	s_and_not1_b32 s0, s104, exec_lo
	s_and_b32 s1, s6, exec_lo
	s_and_not1_b32 s6, s86, exec_lo
	s_and_b32 s8, s8, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v149, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v149, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v151, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v151, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s5
	s_or_b32 s104, s0, s1
	s_or_b32 s86, s6, s8
	s_and_not1_b32 s0, s83, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s4, s4, exec_lo
	s_and_b32 s6, s12, exec_lo
	s_mov_b32 s22, s99
	s_and_b32 s14, s23, s24
	s_and_b32 s19, s19, s75
	s_or_b32 s83, s0, s1
	s_or_b32 s4, s4, s6
	s_and_not1_b32 s0, s80, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s5, exec_lo
	s_and_b32 s8, s10, exec_lo
	s_mov_b32 s99, s50
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s50, v141, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e32 vcc_lo, v141, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s76
	s_and_b32 s15, s15, s22
	s_and_b32 s18, s27, s28
	s_and_b32 s23, s29, s30
	s_or_b32 s80, s0, s1
	s_or_b32 s5, s6, s8
	s_and_not1_b32 s0, s75, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s39, exec_lo
	s_and_b32 s8, s20, exec_lo
	s_mov_b32 s71, s42
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v145, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s73, v145, v91
	s_mov_b32 s74, s78
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s16, s16, s78
	v_readlane_b32 s78, v179, 28
	s_and_b32 s18, s18, s82
	s_and_b32 s23, s23, s101
	s_or_b32 s75, s0, s1
	s_or_b32 s103, s6, s8
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s14, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s8, s15, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v144, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v144, v91
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v137, v90
	s_mov_b32 s98, s49
	v_cmp_ge_i32_e64 s49, v140, v90
	s_mov_b32 s90, s96
	s_mov_b32 s95, s56
	v_cmp_ge_i32_e64 s56, v100, v90
	s_mov_b32 s96, s57
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v137, v91
	s_mov_b32 s94, s60
	v_cmp_le_i32_e64 s60, v140, v91
	v_cmp_le_i32_e64 s97, v100, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s17, s79
	s_and_b32 s28, s50, vcc_lo
	s_mov_b32 s50, s99
	s_or_b32 s76, s0, s1
	s_or_b32 s99, s6, s8
	s_and_not1_b32 s0, s82, exec_lo
	s_and_b32 s1, s18, exec_lo
	s_and_not1_b32 s6, s101, exec_lo
	s_and_b32 s8, s23, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s47, v138, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s92, v138, v91
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s27, s42, s73
	s_and_b32 s36, s36, s78
	s_or_b32 s82, s0, s1
	s_or_b32 s101, s6, s8
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s74, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_mov_b32 s91, s65
	s_and_b32 s24, s46, s57
	s_and_b32 s25, s44, s45
	s_and_b32 s26, s26, s2
	s_and_b32 s27, s27, s89
	s_and_b32 s29, s49, s60
	s_and_b32 s34, s56, s97
	s_or_b32 s79, s0, s1
	s_or_b32 s97, s6, s8
	s_and_not1_b32 s0, s78, exec_lo
	s_and_b32 s1, s36, exec_lo
	s_and_not1_b32 s6, s77, exec_lo
	s_and_b32 s8, s21, exec_lo
	s_mov_b32 s42, s71
	s_and_b32 s25, s25, s81
	s_and_b32 s24, s24, s88
	s_and_b32 s30, s47, s92
	s_and_b32 s29, s29, s90
	s_mov_b32 s71, s90
	s_mov_b32 s73, s91
	s_and_b32 s34, s34, s91
	s_or_b32 s91, s0, s1
	s_or_b32 s90, s6, s8
	s_and_not1_b32 s0, s2, exec_lo
	s_and_b32 s1, s26, exec_lo
	s_and_not1_b32 s6, s89, exec_lo
	s_and_b32 s8, s27, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v135, v90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v135, v91
	s_mov_b32 s41, s70
	v_readlane_b32 s70, v179, 26
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s30, s30, s87
	s_and_b32 s31, s31, s85
	s_or_b32 s2, s0, s1
	s_or_b32 s89, s6, s8
	s_and_not1_b32 s0, s81, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s88, exec_lo
	s_and_b32 s8, s24, exec_lo
	s_and_b32 s28, s28, s84
	s_or_b32 s81, s0, s1
	s_or_b32 s88, s6, s8
	s_and_not1_b32 s0, s87, exec_lo
	s_and_b32 s1, s30, exec_lo
	s_and_not1_b32 s6, s85, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s7, s65, s7
	s_and_b32 s65, s40, s70
	s_or_b32 s87, s0, s1
	s_or_b32 s85, s6, s8
	s_and_not1_b32 s0, s71, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_mov_b32 s57, s96
	s_and_b32 s9, s9, s68
	s_or_b32 s96, s0, s1
	s_or_b32 s84, s6, s8
	s_and_not1_b32 s0, s70, exec_lo
	s_and_b32 s1, s65, exec_lo
	s_and_not1_b32 s6, s69, exec_lo
	s_and_b32 s8, s35, exec_lo
	s_mov_b32 s60, s94
	v_readlane_b32 s44, v179, 15
	s_mov_b32 s56, s95
	s_and_b32 s7, s7, s55
	v_readlane_b32 s92, v179, 30
	s_or_b32 s70, s0, s1
	s_or_b32 s71, s6, s8
	s_and_not1_b32 s0, s66, exec_lo
	s_and_b32 s1, s33, exec_lo
	s_and_not1_b32 s6, s68, exec_lo
	s_and_b32 s8, s9, exec_lo
	v_readlane_b32 s45, v179, 16
	v_readlane_b32 s46, v179, 17
	v_readlane_b32 s47, v179, 18
	s_mov_b32 s53, s102
	v_readlane_b32 s40, v179, 14
	v_readlane_b32 s93, v179, 31
	v_readlane_b32 s94, v178, 0
	v_readlane_b32 s95, v178, 1
	v_readlane_b32 s102, v179, 29
	v_readlane_b32 s74, v179, 13
	s_or_b32 s69, s0, s1
	s_or_b32 s68, s6, s8
	s_and_not1_b32 s0, s55, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s73, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_mov_b32 s49, s98
	s_mov_b32 s63, 0x76543210
	s_or_b32 s55, s0, s1
	s_or_b32 s65, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v35, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	v_readlane_b32 s16, v179, 1
	v_readlane_b32 s24, v179, 6
	v_readlane_b32 s25, v179, 7
	v_readlane_b32 s26, v179, 5
	v_readlane_b32 s17, v179, 2
	v_readlane_b32 s18, v179, 3
	v_readlane_b32 s19, v179, 4
.LBB0_13:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v70
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s26, s25
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s42, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s24, s1
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v17 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v35
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp78:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp86:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp87:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp93:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp115:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp116:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_mov_b32 v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp133:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v68, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp141:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp142:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
.Ltmp143:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshlrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v0, 0xc0, v0
	v_and_b32_e32 v4, 0xc0, v10
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v5, 0xe0, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_add_f32 v13, v1, v2 :: v_dual_and_b32 v2, 32, v3
.Ltmp145:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v4
	v_add_nc_u32_e32 v4, 0, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 vcc_lo, vcc_lo, s74
	v_and_b32_e32 v1, 28, v69
	ds_store_b128 v4, v[13:16]
	ds_store_b128 v4, v[6:9] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s17, s17, 0xffff
	v_add3_u32 v1, v3, v2, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v50
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_load_b32 v1, v1
	v_lshl_add_u32 v0, v2, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp146:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_vgpr, 180
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12924
; TotalNumSgprs: 107
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 180
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
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
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 34
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
